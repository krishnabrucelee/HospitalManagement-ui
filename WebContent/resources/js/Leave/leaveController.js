ngApp.controller('leaveCtrl',function($scope,$http,$timeout,uibDateParser,ngDialog){
	
	$scope.setFinancialYear = function () {
        ngDialog.open({
            template: 'setFinancialYear',
            controller: 'leaveCtrl',
            className: 'ngdialog-theme-default ngdialog-theme-custom',
             width: 500
        });
    };

    $scope.addHoliday = function () {
        ngDialog.open({
            template: 'addHoliday',
            controller: 'leaveCtrl',
            className: 'ngdialog-theme-default ngdialog-theme-custom',
             width: 500
        });
    };

    $scope.addLeave = function () {
        ngDialog.open({
            template: 'addLeave',
            controller: 'leaveCtrl',
            className: 'ngdialog-theme-default ngdialog-theme-custom',
             width: 500
        });
    };
    
    $scope.leaveRequest = function () {
        ngDialog.open({
            template: 'leaveRequest',
            controller: 'leaveCtrl',
            className: 'ngdialog-theme-default ngdialog-theme-custom',
             width: 600
        });
    };
    
    $scope.leaveAction = function () {
        ngDialog.open({
            template: 'leaveAction',
            controller: 'leaveCtrl',
            className: 'ngdialog-theme-default ngdialog-theme-custom',
             width: 600
        });
    };
    $scope.userId = {};
    $scope.showLeaves =function(){
    	$http.get("listLeaves").success(function(data){
    		$scope.leaveLists = data.LeaveData;
    		$scope.userId = data.userId;
    		$scope.financialyear_id = data.financialyear_id;
    		console.log("Backend db user Id", $scope.userId);
    		console.log("Backend Leave List", $scope.leaveLists.financialyear_id);
    		console.log($scope.leaveLists);
    	});
    };       	
	$scope.showLeaves();
	
	/*$scope.showLaeveBalanceByEid=function(){
		$scope.userId = data.userId;
		$scope.leavebalance.employee_id = $scope.userId;
		console.log("Session based emp Id");
		console.log(userId);
		$http.post("getFiscalLeaveDetailsByEmpId",$scope.leavebalance).success(function(data){
			$scope.LeaveBalancelist = data.result;	
		});
	}	
	$scope.showLaeveBalanceByEid();*/
	
	$scope.getHolidays=function(holiday){
		console.log("Select holidays");
		console.log($scope.holiday);
		$http.post("getHolidaysByTypes",$scope.holiday).success(function(data){
			
			$scope.holidaylist=data.Holidaydetails;
			console.log("DB holidays holidays");
			console.log($scope.holidaylist);
		});
	};
	
	$scope.getEmployeeId=function(){
		$http.get("getFiscalLeaveDetails").success(function(data){
			$scope.LeaveBalanceEmp = data.result;
		
		});
		
	};
	$scope.getEmployeeId();
	
	
	$scope.getLeaveBalance=function(leavebalance){
		console.log("NG click getLeaveBalance");
		console.log($scope.leavebalance);
		$http.post("getFiscalLeaveDetailsByEmpId",$scope.leavebalance).success(function(data){
			$scope.LeaveBalancelist = data.result;	
			console.log("DB data");
			console.log($scope.LeaveBalancelist);
		});		
	};
	
	$scope.getLeaveRequest=function(leaverequest){
		console.log("NG click getLeaverequest bet dates");
		console.log($scope.leaverequest);
		$http.post("listLeaveRequestBetweenDates",leaverequest).success(function(data){
			$scope.LeaveRequestList = data.LeaveRequest;	
			console.log("DB LeaveRequestList data");
			console.log($scope.LeaveRequestList);
		});
	};
	
	$scope.showLeaveRequest=function(){
		$http.get("listLeaveRequest").success(function(data){
			$scope.LeaveRequest = data.result;
			console.log("LeaveRequest datas");
			console.log($scope.LeaveRequest);			
		});		
	};
	$scope.showLeaveRequest();
	
		$scope.addFinancialYear=function(financial){
			console.log("Add finanacial data");
			console.log($scope.financial);		
			$http.post("saveFinancialYear",$scope.financial).success(function(data){						
		 	});
		};
		
		$scope.saveHoliday=function(holiday){
			console.log("Holiday  data");
			console.log($scope.holiday);		
			$http.post("saveHoliday",$scope.holiday).success(function(data){
						
		 	});
		};
		
		$scope.saveLeave=function(leave){
			
			console.log($scope.leave);		
			$http.post("saveLeave",$scope.leave).success(function(data){
						
		 	});
		};
		
		
		$scope.deleteLeave=function(obj,index){
			
			$http.post("deleteLeave",obj).success(function(data){
				$scope.leaveLists.splice(obj,1);
			});
		};
		
		
		$scope.deleteHoliday=function(obj,index){			
			$http.post("deleteHoliday",obj).success(function(data){
				$scope.holidaylist.splice(obj,1);
			});
		};
		
		$scope.saveLeaveRequest=function(leaverequest){
			
			$scope.leaverequest.employee_id = $scope.userId; 
			$scope.financialyearid=$scope.leaverequest.financialyear_id;
			console.log("LEAVE request data");
			console.log($scope.leaverequest);
			$http.post("saveleaveRequest",$scope.leaverequest).success(function(data){
				
		 	});
		}
		
		$scope.showModel=function(request,index){
			$scope.selected = request;
			$scope.selectedIndex =index;
			 console.log("LEAVE approve  data in SHOWMODEL");	
			 $scope.selected.status = "approve";
			console.log($scope.selected);
			 $scope.approveLeaveDatas();
		};
		  $scope.approveLeaveDatas=function(selected){
			
			  console.log("LEAVE approve NG MODEL  data");	
			  $scope.selected.FromDate=$scope.selected.fromDate
			  $scope.selected.ToDate=$scope.selected.toDate;
				console.log($scope.selected);
			  $http.post("approveLeaveByAdmin",$scope.selected).success(function(data){
				  
			  });
			  
		  }
	
});
