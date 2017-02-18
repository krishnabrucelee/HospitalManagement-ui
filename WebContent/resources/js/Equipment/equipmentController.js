ngApp.controller('equipmentCtrl',function($scope,$http,$timeout,uibDateParser,ngDialog){
	
	$scope.manufactureDate = new Date();


	    $scope.addDevicee=function(device){
	    	console.log("Form device value");
	    	console.log($scope.device);
			$http.post("saveDevice",$scope.device).success(function(data){

			});
		}

		$scope.addMaintanancee=function(maintanancecfg){
			console.log("Form maintanancecfg value");
	    	console.log($scope.maintanancecfg);
			$http.post("saveMaintananceConfig",$scope.maintanancecfg).success(function(data){

			});
		}

		$scope.addBuildingg=function(building){
			$http.post("saveBuilding",$scope.building).success(function(data){

			});
		}
	
	  $scope.showBuilding=function(){
		  $http.get("listBuilding").success(function(data){
			  $scope.listBuildingvalues=data.BuildingList;				
		  });
	  }
	  
	  $scope.showBuilding();
	  
	  $scope.showDevice=function(){
		  $http.get("listDevice").success(function(data){
			  $scope.listDevicevalues=data.DeviceList;
		  });
	  }
	  
	  $scope.showDevice();
	  
	  $scope.showMainatanceConfig=function(){
		  $http.get("listMainatanceConfig").success(function(data){
			  $scope.listMaintanacevalues=data.MaintananceConfiguration;
		  });
	  }
	  
	  $scope.showMainatanceConfig();

	  $scope.showStaffss =function(){
		
		$http.get("listStaff").success(function(data){			
			$scope.liststaffdata = data.Staff;	
			
		});
		}		
	      $scope.showStaffss();

		$scope.addEquipment=function(equipment){
			$http.post("saveEquipment",$scope.equipment).success(function(data){

			});
		}


		$scope.getEquipmentByDevicegroup=function(){
			$http.get("getGroupByEquipment").success(function(data){
				$scope.listEquipment = data.result;
				
			});
		}

		$scope.getEquipmentByDevicegroup();

		$scope.addEquipmentCheck=function(equipmentcheck){
			
			$http.post("saveEquipmentCheck",$scope.equipmentcheck).success(function(data){

			});
		}


		$scope.getEquipmentMaintanancePending=function(){

			$http.get("getEquipmentMaintanancePending").success(function(data){
				$scope.pendingList=data.EquipmentCheckPending;
				 console.log("Backend pendingList value");
				console.log($scope.pendingList);
			});
		       
		}
		$scope.getEquipmentMaintanancePending();

		$scope.updateEquipmentCheck=function(equipmentCheckStatus){
			
			$http.post("updateEquipmentMaintananceStatus",$scope.equipmentCheckStatus).success(function(data){

			});
		}

		$scope.CheckEquipmentmaintanace=function(checkRequest){
			
			$http.post("checkEquipmentMaintanance",$scope.checkRequest).success(function(data){

				$scope.equipmentMaintananceList=data.CheckRequest;

			});
		};

		$scope.openUpdateEditor = function(x){
			$scope.showUpdate=true;
			$scope.updateObj={equipmentMaintanaceRequestId:x};
		};

		$scope.cancelUpdateEditor = function(){	
			$scope.showUpdate=false;
			$scope.updateObj={};
		};

		$scope.update = function(updateObj){
			console.log($scope.updateObj);
			$http.post("updateEquipmentMaintananceStatus",$scope.updateObj).success(function(data){

			});
			// Post Prepared
		};
		
});