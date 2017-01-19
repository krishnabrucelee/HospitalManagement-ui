ngApp.controller('doctorCtrl', function ($scope, $http, uibDateParser) {
	
    
});


ngApp.controller('doctorListCtrl', function($scope, $http, ngDialog) {
	
	//
	
	$scope.doctorList = [];

	
	$http.get('listDoctorDetails').then(function(data) {
		$scope.result = data.data;
		$scope.doctorList = $scope.result.Doctor;
		console.log($scope.doctorList);
	});

});

