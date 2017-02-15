
ngApp.controller('appointmentCtrl',[
	'$scope','$http','uibDateParser','ngDialog','RestServices','$timeout','calendarEventTitle','$filter'
	,function($scope, $http, uibDateParser,ngDialog,RestServices,$timeout,calendarEventTitle,$filter) {
	
	$scope.format = 'dd-mm-yyyy';
$scope.appointment = {};

var hasDepartment = $http.get('listDepartmentDetails');
hasDepartment.then(function(data) {
	$scope.result = data.data;
	$scope.departmentList = $scope.result.Department;
	console.log($scope.departmentList);
});

var hasDoctor = $http.get('listDoctorDetails');
hasDoctor.then(function(data) {
	$scope.result = data.data;
	$scope.doctorList = $scope.result.Doctor;
	console.log($scope.doctorList);
});

var hasPatient = $http.get('listPatientDetails');
hasPatient.then(function(data) {
	$scope.result = data.data
	$scope.patientList = $scope.result.Patient;
	console.log($scope.patientList);
});



//year, month, week or day.
	$scope.calendarView = 'month';

	var defaultEventObj ={

	                   title: '', // The title of the event
	                   startsAt: '', // A javascript date object for when the event starts
	                   endsAt:'', // Optional - a javascript date object for when the event ends
	                   color: { // can also be calendarConfig.colorTypes.warning for shortcuts to the deprecated event types
	                     primary: '#e3bc08', // the primary event color (should be darker than secondary)
	                     secondary: '#fdf1ba' // the secondary event color (should be lighter than primary)
	                   },
	                   actions: [
		                   { // an array of actions that will be displayed next to the event title
		                     label: '<i class=\'glyphicon glyphicon-pencil\'></i>', // the label of the action
		                     cssClass: 'edit-action', // a CSS class that will be added to the action element so you can implement custom styling
		                     onClick: function(args) { // the action that occurs when it is clicked. The first argument will be an object containing the parent event
		                       console.log('Edit event', args.calendarEvent);
		                     }
		                   },
		                   {
						      label: '<i class=\'glyphicon glyphicon-remove\'></i>',
						      onClick: function(args) {
						        console.log('Deleted', args.calendarEvent);
						       }
							}
	                   ],
	                   draggable: false, //Allow an event to be dragged and dropped
	                   resizable: false, //Allow an event to be resizable
	                   incrementsBadgeTotal: true, //If set to false then will not count towards the badge total amount on the month and year view	                   
	                   cssClass: 'a-css-class-name', //A CSS class (or more, just separate with spaces) that will be added to the event when it is displayed on each view. Useful for marking an event as selected / active etc
	                   allDay: false 
	               };

	$scope.events = [];
	
    $scope.viewDate = moment().startOf('month').toDate();

    $scope.rangeSelected = function(startDate, endDate) {

    	$scope.saveAppointmentDetails={};
    	$scope.saveAppointmentDetails.starttime = startDate;
    	$scope.saveAppointmentDetails.endtime = endDate;

    	ngDialog.open({
    		template: 'resources/views/saveTemplate.html',
    		width: '50%',
    		scope:$scope
    	});
    };
    
	    var currentDate = new Date();
	    currentDate.setHours(0,0,0,0);
	    
	    $scope.timespanClicked = function(date) {

	    	
	        $scope.lastDateClicked = date;        
	        if(currentDate.getTime() > date.getTime())
	        	return false;
			
			if(!$scope.appointment || !$scope.appointment.doctorId|| !$scope.appointment.patientId)
			{
				alert("Please choose Doctor & Patiend");
				return false;
			}

			var searchData = {};
	    	searchData.date = moment(date).format("DD-MM-YYYY");
	    	searchData.patientId = parseInt($scope.appointment.patientId);
	    	searchData.doctorId = parseInt($scope.appointment.doctorId);
	    	
	    	$scope.ngModelConfig  = {
	    		template: '<p class="text-center">Loading<p>',	    		
	    		plain:true,
	    		showClose : true,
	    		closeByEscape : false,
	    		closeByDocument : false
	    	}

			// Start Loading Screen
			var LoadingScreen = ngDialog.open($scope.ngModelConfig );

			
	    	RestServices.commonPost("getDoctorAvaliablities",searchData)
	    	.then(function(data){
					
					if(!data.status)
					{
						alert(data.reason);
						return;
					}

					$scope.doctorAvailabilites = data.result;				
					
					// Prepare Data for calendar event object
					// 1. Default schedule event( working hours, breaktime,lunch time) object for doctor					
					
					var doctorsDefaultSchedule = $scope.doctorAvailabilites.defaultSchdule;

					if(doctorsDefaultSchedule.length == 0)
					{
						console.warn("Doctor DefaultSchedule[WORKING_HOURS,BREAK_TIME, LUNCH_TIME] is Empty.So we manually set WORKING_HOURS only 10:00 to 18:00");
						console.warn("We set WORKING_HOURS field because we wan't restict day of start time and end time");
						var obj ={};
						obj.startTime ="10:00";
						obj.endTime ="18:00";
						obj.scheduleName="WORKING_HOURS";
						doctorsDefaultSchedule.push(obj);
					}

					var len = doctorsDefaultSchedule.length;
					
					$scope.events=[];
					
					/** Prepare Data for default events begin **/		
					for(var i=0;i<len;i++)
					{
						var obj = doctorsDefaultSchedule[i];
						if(obj.scheduleName == "WORKING_HOURS")
						{
							$scope.dayStart = obj.startTime;
							$scope.dayEnd = obj.endTime;
						}
						else
						{
							// Consider ohter scheduleName are events

							var eventStartTime = new Date(date.getTime());
							var startTimeSplit= obj.startTime.split(":");
							eventStartTime.setHours(startTimeSplit[0]);
							eventStartTime.setMinutes(startTimeSplit[1]);

							var eventEndTime = new Date(date.getTime());
							var endTimeSplit= obj.endTime.split(":");
							eventEndTime.setHours(endTimeSplit[0]);
							eventEndTime.setMinutes(endTimeSplit[1]);

							var default_event_obj = {};
							angular.extend(default_event_obj,defaultEventObj);
							default_event_obj.title = obj.scheduleName;
							default_event_obj.startsAt = eventStartTime;
							default_event_obj.endsAt = eventEndTime;
							

							$scope.events.push(default_event_obj);							

						}	
					}

					/** Prepare Data for default events end **/		

					/** Prepare Data for doctorAppointments **/

					var doctorAppointments = $scope.doctorAvailabilites.doctorAppointments ?  $scope.doctorAvailabilites.doctorAppointments : [];

					var doc_app_len = doctorAppointments.length;
					if(!doc_app_len)
						console.log("Doctor don't have appointment on this ["+searchData.date+"] date.")

					for(var i=0;i<doc_app_len;i++)
					{
						var obj = doctorAppointments[i];
						
						// Consider other scheduleName are events

						var eventStartTime = new Date(obj.starttime);
						
						var eventEndTime = new Date(obj.endtime);
						

						var default_event_obj = {};
						angular.extend(default_event_obj,defaultEventObj);
						default_event_obj.title = obj.appointment_title;
						default_event_obj.startsAt = eventStartTime;
						default_event_obj.endsAt = eventEndTime;
						

						$scope.events.push(default_event_obj);														
					}

					/** Prepare Data for doctorAppointments end **/

					$scope.viewDate = date;
		    		$scope.calendarView = 'day';		    		
		    		ngDialog.closeAll();

			},function(error){
					console.log("error happend");				
				
		    		ngDialog.closeAll();									
			});
	        
	     };



	     $scope.saveAppointment = function(){    	
	     	
	     	var obj={};

	     	angular.copy($scope.appointment,obj);

	     	angular.extend($scope.saveAppointmentDetails,obj);

	    	var startDate = new Date($scope.saveAppointmentDetails.starttime.getTime());
	    	var endDate = new Date($scope.saveAppointmentDetails.endtime.getTime());
	    	
	    	var start_date_format = $filter('date')(startDate,"dd-MM-yyyy HH:mm","UTC");
	    	
	    	var end_date_format = $filter('date')(endDate,"dd-MM-yyyy HH:mm","UTC");
	    	
	    	$scope.saveAppointmentDetails.starttime = start_date_format;
	    	$scope.saveAppointmentDetails.endtime = end_date_format;



			RestServices.commonPost("addAppointmentDetails",$scope.saveAppointmentDetails)
			.then(function(data){
			
				var default_event_obj = {};
				angular.extend(default_event_obj,defaultEventObj);
				default_event_obj.title = $scope.saveAppointmentDetails.appointment_title;
				default_event_obj.startsAt = startDate;
				default_event_obj.endsAt = endDate;
							
				
				$scope.events.push(default_event_obj);	

			},function(error){
				console.log("Error happend");
			});

	     	
			
			ngDialog.close();
				
	     };
	     	

	     $scope.cancelAppointment = function(){
	     	ngDialog.close();
	     };
	     
	   


	/*$scope.save = function(addAppointmentForm, appointment, formatDate) {
		
		console.log(appointment);
		
		appointment.doctor_id = appointment.doctor.doctorId;
		appointment.patient_id = appointment.patient.patientId;
		appointment.department_id = appointment.department.departmentId;
		$http.post('createAppointment', appointment).success(function(data) {
			$scope.result = data;
			console.log($scope.result);
		});
	}
	
	$scope.listAppointment = function() {
		window.location.href="listAppointment";
	}
*/


	

}]);

ngApp.factory("RestServices", ['$http','$q',

	function($http,$q) {
 
  return {
      commonGet: function (url) {
      		var defer = $q.defer();
		   $http.get(url)
			.then(
				function(response){
					defer.resolve(response.data);
				},
				function(reason){
					defer.reject(reason);
				});
			return defer.promise;
      },
      commonPost: function (url,data) {
      		var defer = $q.defer();
		   $http.post(url,data)
			.then(
				function(response){
					defer.resolve(response.data);
				},
				function(reason){
					defer.reject(reason);
				});
			return defer.promise;
      }
  };

}]);

ngApp.controller('appointmentListCtrl', function($scope, $http) {
	
	$scope.appointmentList = [];

	
	$http.get('listAppointmentDetails').then(function(data) {
		$scope.result = data.data
		$scope.appointmentList = $scope.result.Appointment;
		$scope.Doctor = $scope.result.Appointment.Doctor;
		console.log($scope.appointmentList);
	});
	
    $scope.addAppointment = function(name){
    	window.location.href="addAppointment";
    }
    
    $scope.viewPatient = function(patientId){
    	console.log(patientId);
    	var patientView = "patientView"; 
			window.location.href="viewPatient?id="+patientId+"&view="+patientView;
    }

});