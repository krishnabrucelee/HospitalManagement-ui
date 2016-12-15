
ngApp.controller('patientCtrl', function($scope, $http, uibDateParser) {
	
	$scope.format = 'dd-mm-yyyy';
	$scope.date = new Date();
$scope.patient = {};
	$scope.save = function(addPatientForm, patient, formatDate) {
		
		patient.patientDob = formatDate;
		console.log(patient);
		
		$http.post('createPatient', patient).success(function(data) {
			$scope.result = data;
			console.log($scope.result);
		});
	}
	
	$scope.listPatient = function() {
		window.location.href="listPatient";
	}

});





ngApp.controller('patientListCtrl', function($scope, $http) {
	
		$scope.patientList = [];
	
		
		$http.get('listPatientDetails').then(function(data) {
			$scope.result = data.data
			$scope.patientList = $scope.result.Patient;
			console.log($scope.patientList);
		});

});