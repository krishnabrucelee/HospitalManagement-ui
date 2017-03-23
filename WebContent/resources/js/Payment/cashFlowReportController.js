
ngApp.controller('cashFlowReportCtrl', function($scope, $http, $timeout, uibDateParser, $timeout, $filter) {

	$scope.runReport = function(report) {
		
		var obj = {};
		obj.startDate =$filter('date')(report.startDate,'dd-MM-yyyy');
		obj.endDate =$filter('date')(report.endDate,'dd-MM-yyyy');
		
		console.log(obj);
		
		$scope.operatingActivityList = {};
		$scope.investingActivityList = {};
		$scope.financingActivityList = {};
//		$scope.emptyList = {};
//		if ($scope.operatingActivityList.length > 0) {
//			angular.forEach($scope.operatingActivityList, function(value2, key){
//				$scope.operatingActivityTotal = value2.balance + $scope.operatingActivityTotal;
//			});
//			
//		}
		$scope.operatingActivityTotal = 0;
		$scope.investingActivityTotal = 0;
		$scope.financingActivityTotal = 0;
		$http.post('generateFinancialReport', obj).success(function(data) {
			$scope.reportList = data;
			$scope.cashFlowReportList = $scope.reportList.CashFlowReport;
			
			angular.forEach($scope.cashFlowReportList, function(value, key){
				
				if (key == 'Operating Activities') {
					angular.forEach(value, function(value1, key){
						$scope.operatingActivityList = value1.accountDetailedTyes;
						if ($scope.operatingActivityList.length > 0) {
						angular.forEach($scope.operatingActivityList, function(value2, key){
							$scope.operatingActivityTotal = value2.balance + $scope.operatingActivityTotal;
						});
						
					}
					});
					console.log("dd", $scope.operatingActivityList);
				}
				
				if (key == 'Investing Activities') {
					angular.forEach(value, function(value1, key){
						$scope.investingActivityList = value1.accountDetailedTyes;
						if ($scope.investingActivityList.length > 0) {
						angular.forEach($scope.investingActivityList, function(value2, key){
							$scope.investingActivityTotal = value2.balance + $scope.investingActivityTotal;
						});
						
					}
					});
					console.log("dd", $scope.investingActivityList);
				}
				
				if (key == 'Financing Activities') {
					angular.forEach(value, function(value1, key){
						$scope.financingActivityList = value1.accountDetailedTyes;
						if ($scope.financingActivityList.length > 0) {
						angular.forEach($scope.financingActivityList, function(value2, key){
							$scope.financingActivityTotal = value2.balance + $scope.financingActivityTotal;
						});
						
					}
					});
					console.log("dd", $scope.financingActivityList);
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