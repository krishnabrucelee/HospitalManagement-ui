
ngApp.controller('bloodCtrl', function($scope, $http, $httpParamSerializer) {
	
	$scope.saveBloodBankCamp = function (bloodCamp) {
		bloodCamp.bloodBankCampCreatedDate = new Date();
		console.log(bloodCamp);
		$http.post('addBloodBankCampDetails', bloodCamp).success(function(data) {
    		console.log(data);
    	});
	}
	
	$scope.addDonor = function() {
		window.location.href="addDonor";
	}
	
	$scope.saveDonor = function(addDonorForm, donor) {
		console.log(donor);
		$http.post('addDonorDetails', donor).success(function(data) {
    		console.log(data);
    	});
		
	}
	
	//
	var hasDonor = $http.get('listDonorDetails');
	hasDonor.then(function(data) {
		$scope.result = data.data;
		$scope.donorList = $scope.result.Donor;
		console.log($scope.donorList);
	});
	
	
	$scope.saveBloodBank = function(addBloodForm, blood) {
		console.log(blood);
		$http.post('addBloodBankDetails', blood).success(function(data) {
    		console.log(data);
    	});
	}
	
	$scope.patientList = [];
    
    
	$http.get('listPatientDetails').then(function(data) {
		$scope.result = data.data
		$scope.patientList = $scope.result.Patient;
		$scope.permissionList = $scope.result.sessionDetails.permissionList;
		console.log($scope.patientList);
	});
	
	
	$scope.saveIssueBlood = function(addBloodForm, blood) {
		console.log(blood);
		$http.post('issueBloodDetails', blood).success(function(data) {
    		console.log(data);
    	});
	}
});