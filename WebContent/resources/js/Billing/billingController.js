
ngApp.controller('billingCtrl', function($scope, $http, uibDateParser) {
	
	$scope.moduleList = [{moduleName: "Doctor Consultant Fees"}, 
	              {moduleName: "Laboratory Fees"},
	              {moduleName: "Appointment Fees"}]
	
	$scope.saveBillingChart = function (billingChart) {
		console.log(billingChart);
		$http.post('createBillingChart', billingChart).success(function(data) {
			$scope.result = data;
			console.log($scope.result);
		});
	}
});