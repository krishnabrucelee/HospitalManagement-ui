
ngApp.controller('customerCtrl', function($scope, $http, $httpParamSerializer, $timeout, uibDateParser) {
	
	$scope.addCustomer = function(customer) {
		console.log(customer);
		$http.post('createCustomer', customer).success(function(data) {
			console.log(data);
		});
	}
});