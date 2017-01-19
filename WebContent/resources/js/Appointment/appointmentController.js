
ngApp.controller('appointmentCtrl', function($scope, $http, uibDateParser) {
	
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

	$scope.save = function(addAppointmentForm, appointment, formatDate) {
		
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
	

});


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