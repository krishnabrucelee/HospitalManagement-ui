ngApp.controller('hrCtrl',function($scope,$http,$timeout,uibDateParser,ngDialog,$filter){
	
	
	$scope.showHike = function (staff) {
        ngDialog.open({
            template: 'showHike',
            controller: 'hr1Ctrl',
            className: 'ngdialog-theme-default ngdialog-theme-custom',
            width: 500,
            resolve: {
            	staffDetails : function () {
                    return staff;
                }
            }
            
            
            
        });
    };
    
   
    
    $scope.showBonus = function (staff) {
        ngDialog.open({
            template: 'showBonus',
            controller: 'hr1Ctrl',
            className: 'ngdialog-theme-default ngdialog-theme-custom',
             width: 500,
             resolve: {
             	staffDetails : function () {
                     return staff;
                 }
             }
        });
    };
	
    
	$scope.$watch('staffsalaryconfig.perMonthAmount',function(nv,ov){
		if(nv)
		{
			if($scope.SalaryConfigdata)
			{
				var size = $scope.SalaryConfigdata.length;
				for(var i=0;i<size;i++)
				{
					var obj = $scope.SalaryConfigdata[i];
					obj.amount = (nv * obj.percentage) /100;
				}
			}
		}
	});
	
	$scope.$watch('SalaryConfigdata',function(nv,ov){
		if(nv && $scope.staffsalaryconfig && $scope.staffsalaryconfig.perMonthAmount)
		{
			   var size = $scope.SalaryConfigdata.length;
				for(var i=0;i<size;i++)
				{
					var obj = $scope.SalaryConfigdata[i];
					obj.amount = ($scope.staffsalaryconfig.perMonthAmount * obj.percentage) /100;
				}
			
		}
	},true);
	
	
	
	$scope.saveSalaryConfig=function(salaryconfig){
		console.log("Form data");
		console.log(salaryconfig);
		console.log($scope.salaryconfig);
		$http.post("saveSalaryConfiguration",$scope.salaryconfig).success(function(data){
			
		});
	}
	
	 $scope.showStaffss =function(){		
			$http.get("listStaff").success(function(data){			
				$scope.staffdata = data.Staff;	
				console.log("Staff details");
				console.log($scope.staffdata);
		});
		}		
		$scope.showStaffss();
		
		 $scope.showSalaryConfig =function(){		
				$http.get("listSalaryConfiguration").success(function(data){			
					$scope.SalaryConfigdata = data.SalaryConfig;	
					console.log("Staff  SalaryConfig db details");
					console.log($scope.SalaryConfigdata);
			});
			}		
			$scope.showSalaryConfig();
			
		
			 $scope.SalaryPaySlipForMonth =function(){		
					$http.get("listSalaryPaySlipForMonth").success(function(data){			
						$scope.MonthlySalarySlip = data.SalaryConfig;	
						console.log("Staff  MonthlySalarySlip db details");
						console.log($scope.MonthlySalarySlip);
				});
				}		
				$scope.SalaryPaySlipForMonth();
		
		$scope.saveStaffSalaryConfig=function(staffsalaryconfig){
			console.log("Staff details salary config");
			console.log($scope.staffsalaryconfig);
			
		}
		
		$scope.salaryConfigDetails =[];
	
		 $scope.addSalaryConfig =function(config){		
				
				$scope.SalaryConfigdata.push({});						
		     };
		     
		     $scope.removeComponent = function(index){
		    	 $scope.SalaryConfigdata.splice(index,1);
		     }
		     
		     $scope.saveStaffSalaryConfig=function(){
		    	 
		    	 $scope.staffsalaryconfig.salaryConfigDetails = $scope.SalaryConfigdata;
		    	 console.log($scope.staffsalaryconfig);
		    	 $http.post("createSalaryConfig",$scope.staffsalaryconfig).success(function(data){
		    		 
		    	 });
		    	 
		     }
		     	$scope.getSalaryDetails=function(salarydetails){
		     		console.log("From Date Value");
		     		var obj ={};
		     		obj.month =$filter('date')($scope.salarydetails.month,'dd-MM-yyyy');
		     		console.log("Form date value");
		     		console.log(obj);
		     		$http.post("generatePayrollForMonth",obj).success(function(data){
			    		 
			    	});
		     	}
		     	
		     	
		    	$scope.getMonthlySalary=function(staffsalary){
		    		
		    	console.log("From Date ValueSalaryForMonth");
		     		var objj ={};
		     	objj.staffId = $scope.staffsalary.staffId;
		     		objj.salaryDate =$filter('date')($scope.staffsalary.salaryDate,'dd-MM-yyyy');
		     		
		     		console.log(objj);
		     		$http.post("getPayrollForMonthByEId",objj).success(function(data){
		     			$scope.singleEmployedefault = data.defaultSalaryConfig.salaryConfigDetails; 
		     			$scope.earnedSalary = data.earnedSalaryConfig.configDetails; 
		     			console.log("DB backend value");
		     			console.log("DDD", $scope.singleEmployedefault);
		     			console.log($scope.earnedSalary);
			    	});
		     	
		    		
		    	}
		    	
		    	$scope.saveHike=function(hike, staff){
		    		console.log("Form hike values");
		    		console.log(hike);
		    		var obj ={};
			    	obj.staffId = staff.staffId;
			    	obj.amount = hike.amount;
			    	obj.percentage = hike.percentage;
			    	console.log(obj);
			    	
$http.post("addHikes",obj).success(function(data){
		    			
		    		});

		    		 /*$scope.stafff = stafff;
		    	        console.log("STAFF");
		    	        console.log(stafff);
		    	        
		    	var obj ={};
		    	obj.staffId = $scope.staff.staffId;
		    	console.log(obj);*/
		    		/*$http.post("addHikes",hike).success(function(data){
		    			
		    		});*/		    		
		    	}
		    	
		    	/*$scope.saveBonus=function(bonus){
		    		console.log("Form hike values");
		    		console.log(bonus);
		    		var objj ={};
			     	objj.staffId = $scope.staffsalary.staffId;
			     		objj.salaryDate =$filter('date')($scope.staffsalary.salaryDate,'dd-MM-yyyy');
			     		
			     		console.log(objj);
		    		$http.post("createBonusAndIncentiveForStaff",obj).success(function(data){
		    			
		    		});		    		
		    	};*/
		     	
});
ngApp.controller('hr1Ctrl',function($scope,$http,$timeout,uibDateParser,ngDialog,$filter,staffDetails){
	$scope.staff = staffDetails;
	console.log($scope.staff);
	
	   $scope.saveHike=function(hike, staff){
		
		var obj ={};
    	obj.staffId = staff.staffId;
    	obj.amount = hike.amount;
    	obj.percentage = hike.percentage;
    	console.log("Form hike values with staff id");
    	console.log(obj);
    	
       $http.post("addHikes",obj).success(function(data){
			
		});
   }
	$scope.saveBonus=function(bonus,staff){
		
		var obj={};
		obj.staffId = staff.staffId;
		obj.amount = bonus.amount;
		obj.purpose = bonus.purpose;
		obj.applicableDate =$filter('date')($scope.bonus.applicableDate,'dd-MM-yyyy');
		console.log("Form Data")
		console.log(obj);
		 $http.post("createBonusAndIncentiveForStaff",obj).success(function(data){
				
			});
	}   
	   
});
