
ngApp.controller('profitAndLossReportCtrl', function($scope, $http, $timeout, uibDateParser, $timeout, $filter) {

	$scope.runReport = function(report) {
		
		var obj = {};
		obj.startDate =$filter('date')(report.startDate,'dd-MM-yyyy');
		obj.endDate =$filter('date')(report.endDate,'dd-MM-yyyy');
		
		console.log(obj);
		
		$scope.incomeList = {};
		$scope.costOfSalesList = {};
		$scope.expensesList = {};
//		$scope.emptyList = {};
//		if ($scope.incomeList.length > 0) {
//			angular.forEach($scope.incomeList, function(value2, key){
//				$scope.incomeTotal = value2.balance + $scope.incomeTotal;
//			});
//			
//		}
		$scope.incomeTotal = 0;
		$scope.costOfSalesTotal = 0;
		$scope.expensesTotal = 0;
		$http.post('generateFinancialReport', obj).success(function(data) {
			$scope.reportList = data;
			$scope.profileLossReportList = $scope.reportList.ProfileLossReport;
			
			angular.forEach($scope.profileLossReportList, function(value, key){
				
				if (key == 'INCOME') {
					angular.forEach(value, function(value1, key){
						$scope.incomeList = value1.accountDetailedTyes;
						if ($scope.incomeList.length > 0) {
						angular.forEach($scope.incomeList, function(value2, key){
							$scope.incomeTotal = value2.balance + $scope.incomeTotal;
						});
						
					}
					});
					console.log("dd", $scope.incomeList);
				}
				
				if (key == 'COST OF SALES') {
					angular.forEach(value, function(value1, key){
						$scope.costOfSalesList = value1.accountDetailedTyes;
						if ($scope.costOfSalesList.length > 0) {
						angular.forEach($scope.costOfSalesList, function(value2, key){
							$scope.costOfSalesTotal = value2.balance + $scope.costOfSalesTotal;
						});
						
					}
					});
					console.log("dd", $scope.costOfSalesList);
				}
				
				if (key == 'EXPENSES') {
					angular.forEach(value, function(value1, key){
						$scope.expensesList = value1.accountDetailedTyes;
						if ($scope.expensesList.length > 0) {
						angular.forEach($scope.expensesList, function(value2, key){
							$scope.expensesTotal = value2.balance + $scope.expensesTotal;
						});
						
					}
					});
					console.log("dd", $scope.expensesList);
				}
//				
//				if (key == 'Empty') {
//					$scope.emptyList.push(value);
//					console.log("ee", $scope.emptyList);
//				}
			});
//			$scope.income = $scope.profileLossReportList
			console.log("Get reportList", $scope.reportList);
		});
		
		
	}
});