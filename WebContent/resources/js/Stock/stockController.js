
ngApp.controller('stockCtrl', function($scope, $http) {
	
});

ngApp.controller('stockListCtrl', function($scope, $http, $timeout) {
	$scope.format = "dd-MM-yyyy"
		
	$scope.addStockLedger = function() {
		window.location.href="addStock";
	}
	
	$scope.stockAdjustment = function() {
		window.location.href="addStockAdjustment";
	}
	
	$scope.purchaseOrder = function() {
		window.location.href="addPurchaseOrder";
	}
});