
ngApp.controller('surgeryCtrl', function($scope, $http, $timeout) {
	
	
	var hasDepartment = $http.get('listDepartmentDetails');
	hasDepartment.then(function(data) {
		$scope.result = data.data;
		$scope.departmentList = $scope.result.Department;
		console.log($scope.departmentList);
	});
	
	var hasPatient = $http.get('listPatientDetails');
	hasPatient.then(function(data) {
		$scope.result = data.data;
		$scope.patientList = $scope.result.Patient;
		console.log($scope.patientList);
	});
	
	var hasDoctor = $http.get('listDoctorDetails');
	hasDoctor.then(function(data) {
		$scope.result = data.data;
		$scope.doctorList = $scope.result.Doctor;
		console.log($scope.doctorList);
	});
	
	var hasNurse = $http.get('listNurseDetails');
	hasNurse.then(function(data) {
		$scope.result = data.data;
		$scope.nurseList = $scope.result.Nurse;
		console.log($scope.nurseList);
	});
	
	var hasSurgeryRoom = $http.get('listSurgeryRoomDetails');
	hasSurgeryRoom.then(function(data) {
		$scope.result = data.data;
		$scope.surgeryRoomList = $scope.result.SurgeryRoom;
		console.log($scope.surgeryRoomList);
	});
	
	var hasSurgery = $http.get('listSurgeryDetails');
	hasSurgery.then(function(data) {
		$scope.result = data.data;
		$scope.surgeryList = $scope.result.Surgery;
		console.log("ss", $scope.surgeryList);
	});
	
	$scope.addSurgery = function (surgery) {
		console.log(surgery);
    	$http.post('addSurgeryDetails', surgery).success(function(data) {
    		console.log(data);
    	});
	}
	
	$scope.addSurgeryRoomConfiguration = function (surgery) {
		console.log(surgery);
    	$http.post('addSurgeryRoomDetails', surgery).success(function(data) {
    		console.log(data);
    	});
	}
});