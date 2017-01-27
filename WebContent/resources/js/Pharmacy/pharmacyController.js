
ngApp.controller('pharmacyCtrl', function($scope, $http, uibDateParser, $timeout,ngDialog) {
	
	
	
	$scope.showMedicineItemMaster=function(){
		$http.get("listMasterMedicineItem").success(function(data){
			if (data.status==true) {
				$scope.masteritem = data.MasterMedicineitem;
				
			} else {
				alert("Data is empty");
			}
		});
	}	
	$scope.showMedicineItemMaster();
	
	$scope.showPharmacyMasterEntry=function(){
		$http.get("listPharmacyMasterEntry").success(function(data){
			console.log("Get back value");
			if (data.status==true) {
				$scope.masterstock = data.PharmacyMasterStock;
				console.log(masterstock)
			} else {
				alert("Data is empty");
			}
		});
	}
	
	$scope.showPharmacyMasterEntry();
	
	/*$scope.showMedicineStock=function(){
		$http.get("listPharmacyMasterEntry").success(function(data){
			if (condition) {
				$scope.masterstock = data.PharmacyMasterStock;
			} else {
				alert("Data is empty");
			}
		});
	}
	
	$scope.showMedicineStock();*/
	
	$scope.third = function () {
		ngDialog.open({
			template: 'secondDialog',
			controller: 'pharmacyCtrl',
			className: 'ngdialog-theme-default ngdialog-theme-custom',
			 width: 600
		});
	};
	
	$scope.pharmacyStock = function () {
		ngDialog.open({
			template: 'secondDialog',
			controller: 'pharmacyCtrl',
			className: 'ngdialog-theme-default ngdialog-theme-custom',
			 width: 500
		});
	};
	
	$scope.isOpen = false;

	$scope.openCalendar = function(e) {
        e.preventDefault();
        e.stopPropagation();

        $scope.isOpen = true;
    };
    
    $scope.datePickerOption={
    		showWeeks :false
    };
  
    $scope.medicineTypes = [];
                     $scope.log = function() {
                       console.log($scope.medicineTypes);
                     };
                     $scope.add = function() {                   	
                     	var dataObj = {};
                     	$scope.medicineTypes.push(dataObj);
                     }
                     $scope.addMasterItemEntry=function(masteritementry){
                    	 console.log("Inside ng click");
                    		console.log(masteritementry);
             	       	$http.post("saveMasterMedicineItem",$scope.masteritementry).success(function(data){
             	       			
             	       		});
             	        }
                     
	  $scope.addMasterEntry=function(masterentry){	       
	       	console.log(masterentry);
	       	$http.post("addMasterEntry",masterentry).success(function(data){
	       			
	       		});
	        }
	  
	  $scope.addMasterStockEntry=function(masterstock){
		  console.log("Inside ng click");
	       	console.log(masterstock);
	       	$http.post("savePharmacyMasterEntry",masterstock).success(function(data){
	       			
	       		});
	        }
	$scope.format = 'dd-mm-yyyy';
     
    $scope.medicineorder = {};
    $scope.addMedicine=function(medicineorder){
    	$scope.medicineorder.medicineTypes=$scope.medicineTypes;
    	console.log("Form value");
    	console.log(medicineorder);
   	$http.post("orderMasterMedicine",$scope.medicineorder).success(function(data){
   			
   		});
   
   		
   	}
    $scope.medicineList=[];
    $scope.addList=function(){
    	console.log("Inside dynamic click");
    	var dataObjects ={};
    	$scope.medicineList.push(dataObjects);
    }
	$scope.pharmacyrequest={};
   	$scope.addMedicineRequest=function(pharmacyrequest){
   		$scope.pharmacyrequest.medicineList = $scope.medicineList; 
   		console.log(pharmacyrequest);
    	$http.post("medicineRequestPharmacy",$scope.pharmacyrequest).success(function(data){
    		
    	});
    }
    
    
   /* 
    $scope.addMasterEntry=function(masterentry){
       	console.log("Inside NG click");
       	console.log("Form value");
       	console.log(masterentry);
       	$http.post("addMasterEntry",masterentry).success(function(data){
       			
       		});
        }*/
	/*$scope.save = function(addMedicineorderForm, medicineorder, formatDate) {
		
		medicineorder.orderDate = formatDate;
		
		console.log("Form data");
		console.log(medicineorder);
		$http.post('issueOrder', medicineorder).success(function(data) {
			$scope.result = data;
			console.log($scope.result);
		});*/
	
	
	/*$scope.listOrder = function() {
		window.location.href="listOrder";
	}*/

});