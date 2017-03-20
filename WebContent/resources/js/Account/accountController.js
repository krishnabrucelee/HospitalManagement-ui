
ngApp.controller('accountCtrl', function($scope, $http, $httpParamSerializer, $timeout, uibDateParser) {
	
	$http.get("getAllAccountType").success(function(data){			
		$scope.accountTypeList = data.result;		
console.log($scope.accountTypeList);	
	});
	
	$http.get("getAllAccountDetailType").success(function(data){			
		$scope.accountDetailTypeList = data.result;	
		console.log($scope.accountDetailTypeList);	
	});
	
	$scope.accountHistory = function(account) {
		console.log(account);
		var obj = {};
		
		obj = account.accountDetailTypeId;
//		
		if(!angular.isUndefined(obj)) {
			window.location.href="accountHistory?accountDetailTypeId="+obj;
		}
		
	}
	

    
});

ngApp.controller('accountHistoryCtrl', function($scope, $http, $httpParamSerializer, $timeout, uibDateParser) {
	
	$scope.search = [];
    console.log("ff", location.search);
    $scope.searchParams = queryStringToJSON(location.search);

    function queryStringToJSON(queryString) {

        if (queryString.indexOf('?') > -1) {
            queryString = queryString.split('?')[1];
        }
        var pairs = queryString.split('&');
        var result = {};
        pairs.forEach(function(pair) {
            pair = pair.split('=');
            pair[0] = pair[0].replace(/\+/g, '%20');
            pair[1] = pair[1].replace(/\+/g, '%20');
            result[pair[0]] = decodeURIComponent(pair[1] || '');
        });
        return result;
    }
    
    $http.post('getAllTransactionsByAccountDetailType', $scope.searchParams).success(function(data) {
		$scope.accountTypeHistoryList = data.result.financeTransactions;
		
		console.log("hi", $scope.accountTypeHistoryList);
    });
});