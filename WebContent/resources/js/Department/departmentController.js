ngApp.controller('departmentCtrl', function($scope, $http) {

	$scope.save = function(departmentForm, department) {
		
		console.log(department);
		$http.post('addDepartmentDetails', department).success(function(data) {
			$scope.result = data;
			console.log($scope.result);
		});
	}
});