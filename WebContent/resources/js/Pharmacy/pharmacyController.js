
ngApp.controller('pharmacyCtrl', function($scope, $http, uibDateParser, $timeout,ngDialog) {
	
	
	
	$scope.showMedicineItemMaster=function(){
		$http.get("listMasterMedicineItem").success(function(data){
			$scope.masteritem = data.MasterMedicineitem;
			
		});
	}	
	$scope.showMedicineItemMaster();
	
	$scope.showPharmacyMasterEntry=function(){
		$http.get("listPharmacyMasterEntry").success(function(data){
			console.log("Get back value");
			$scope.masterstock = data.PharmacyMasterStock;		
			
		});
	}
	
	$scope.showPharmacyMasterEntry();
	
	$scope.showDepartments =function(){
		
		$http.get("listDepartmentDetails").success(function(data){			
			$scope.departments = data.Department;				
		
	});
	}		
	$scope.showDepartments();
	
	
	$scope.showDoctors =function(){
		
		$http.get("listDoctorDetails").success(function(data){			
			$scope.doctorsdata = data.Doctor;						
	});
	}		
	$scope.showDoctors();
	
	
	$scope.showPatients =function(){
	
		$http.get("listPatientDetails").success(function(data){	
			console.log("showPatients Get db value");
			
			$scope.patientdata = data.Patient;		
			
	});
	}		
	$scope.showPatients();
	
	
	$scope.showStaffss =function(){
		
		$http.get("listStaff").success(function(data){			
			$scope.staffdata = data.Staff;				
	});
	}		
	$scope.showStaffss();
	
	
	$scope.BillItems = [];
	
	
	
	$scope.totalAmount = 0;
	
	$scope.addToBillItem = function(){
		$scope.BillItems.push(angular.copy($scope.selectedStockItem,{}));	
		$scope.totalAmount =$scope.totalAmount+ $scope.selectedStockItem.quantity*$scope.selectedStockItem.price;
		delete $scope.selectedStockItem;
	};
		
		
	$scope.displaySelected = function(){
		$scope.selectedStockItem={};
		angular.copy($scope.selectedStock,$scope.selectedStockItem);
	}
	$scope.bill={};
	$scope.$watch(function(){
		return{
			totalAmount : $scope.totalAmount,			
			discountPercent : $scope.bill.discountPercent,
			taxPercent : $scope.bill.taxPercent,
		}
	},function(){
		$scope.netTotal();		
	},true);
	
	$scope.netTotal = function(){
		if($scope.totalAmount)
		{
			var discountAmount = $scope.getDiscountAmount();
			var taxAmount = $scope.getTaxAmount();
			
			$scope.netTotalAmount = $scope.totalAmount - discountAmount; 
			$scope.netTotalAmount = $scope.netTotalAmount + taxAmount; 
		}		
	}
	
	$scope.getTaxAmount = function(){
		
		if($scope.totalAmount && $scope.bill && $scope.bill.taxPercent  == null )
		{
			delete $scope.bill.tax_amount;
			return 0;
		}
	    else if($scope.totalAmount && $scope.bill && $scope.bill.taxPercent)
        {
          var totalAmount = $scope.bill.discount_amount ? $scope.totalAmount - $scope.bill.discount_amount : $scope.totalAmount;	
           var taxAmount = (totalAmount * $scope.bill.taxPercent)/100;
           $scope.bill.tax_amount = Math.floor(taxAmount);
           return $scope.bill.tax_amount;
        }   
        else
        {
        	return 0;
        }	
    };
    
	
	
	$scope.getDiscountAmount = function(){
		
		if($scope.totalAmount && $scope.bill && $scope.bill.discountPercent  == null )
		{
			delete $scope.bill.discount_amount;
			return 0;
		}
		else if($scope.totalAmount && $scope.bill && $scope.bill.discountPercent)
        {
           var discountAmount = ($scope.totalAmount * $scope.bill.discountPercent)/100;
           if(discountAmount > $scope.totalAmount)
           {
        	   delete $scope.bill.discountPercent;
        	   delete $scope.bill.discount_amount;
           }
           $scope.bill.discount_amount = Math.floor(discountAmount);
           return $scope.bill.discount_amount;
        }		
        else
        {
        	return 0;
        }	
        
    };
    
    
	
	/*$scope.discountAmount = 0;
	$scope.discountAmount =$scope.discountPercent/100;
	
	$scope.totalAmount =$scope.totalAmount-$scope.discountAmount;
    
	$scope.taxAmount = 0;	
	$scope.taxAmount =$scope.taxPercent/100; 
		$scope.netAmount = $scope.totalAmount+$scope.taxAmount;
		$scope.BillItems.push(angular.copy($scope.netAmount,{}));*/
		
		
	  $scope.addBharmacyBill=function(BillItems){	       
	       	console.log(masterentry);
	       /*	$http.post("savePharmacyBill",$scope.BillItems).success(function(data){
	       			
	       		});*/
	        }
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
	
	$scope.isTo = false;

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
	  
	  $scope.addMasterStockEntry=function(masterstockdata){
		  console.log(" ng click form value")
	       	console.log($scope.masterstockdata);
	       	$http.post("savePharmacyMasterEntry",$scope.masterstockdata).success(function(data){
	       			
	       		});
	        }
	  
	  $scope.showPharmacyMasterEntry();
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
   		
   	$scope.generateBill = function(){
   		$scope.bill.patientMedicineList = $scope.BillItems;
   		
   		$scope.bill.netTotalAmount = $scope.netTotalAmount;
   		$scope.bill.totalAmount = $scope.totalAmount;
   		
   		console.log($scope.bill);
   		
   		/*$scope.bill.departmentId = 2;*/
   		
   		$http.post("savePharmacyBill",$scope.bill).success(function(data){
    		console.log(data);
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


ngApp.controller('pharmacyListCtrl', function($scope, $http, uibDateParser, $timeout,ngDialog) {
	
	
	
	$http.get('listPharamacyRequestDetails').then(function(data) {
		$scope.pharamacyRequestList = [];
		$scope.medicineList = [];
		$scope.result = data.data;
//		console.log($scope.result.PharmacyRequest);
		$scope.pharamacyRequestList = $scope.result.PharmacyRequest;
		
		console.log("33", $scope.pharamacyRequestList);
		
		angular.forEach($scope.pharamacyRequestList, function(data){
//			console.log("1",data);
				$scope.medicineList.push(data.medicineList);
			
		});
		console.log($scope.medicineList);
		
	});
});
ngApp.directive('integer', function(){
	   return {
	       require: 'ngModel',
	       link: function(scope, ele, attr, ctrl){
	           ctrl.$parsers.unshift(function(viewValue){
	               return parseInt(viewValue, 10);
	           });
	       }
	   };
	});


ngApp.directive('double', function(){
	   return {
	       require: 'ngModel',
	       link: function(scope, ele, attr, ctrl){
	           ctrl.$parsers.unshift(function(viewValue){
	               return parseDouble(viewValue, 10);
	           });
	       }
	   };
	});