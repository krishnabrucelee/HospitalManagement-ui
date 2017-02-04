
ngApp.controller('supplierListCtrl', function($scope, $http) {
	
	$scope.addSupplier = function() {
		window.location.href="addSupplier";
	}
});

ngApp.controller('supplierCtrl', function($scope, $http) {
	
	$scope.format = "dd-MM-yyyy"
		
	$scope.addSupplier = function(supplier) {
		console.log(supplier);
		
       	$http.post("createSupplier",supplier).success(function(data){
   			
       	});
	}
});