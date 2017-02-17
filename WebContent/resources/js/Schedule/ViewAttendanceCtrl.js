ngApp.controller('viewAttendanceCtrl', ['$scope','$http',
	function($scope,$http) {
		if(type == "Doctor" || type == "Nurse" )
		{
			// Get Attendance Details
			console.log(loggedInUserDetails);
			var requestObj = {};			
			var url = "";
			if(type == "Doctor")
			{
				requestObj.doctorId = loggedInUserDetails[0].doctorId;				
				url="getCurrentMonthDoctorSchedule";
			}
			else if(type == "Nurse")
			{
				requestObj.nurseId = loggedInUserDetails[0].nurseId;				
				url="getCurrentMonthNurseSchedule";
			}	

			$http.post(url,requestObj).success(function(data){
             	 $scope.attendanceDetails = data.result;
            });
		}
		else
		{
			alert("This feature is currently enabled for Doctor and Nurse Professions Only. But not for "+type);
		}	
}]);