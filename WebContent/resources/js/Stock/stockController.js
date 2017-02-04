
ngApp.controller('stockCtrl', function($scope, $http, uibDateParser, $timeout,ngDialog) {

	$scope.pharmacyStock = function () {
		ngDialog.open({
			template: 'secondDialog',
			controller: 'stockCtrl',
			className: 'ngdialog-theme-default ngdialog-theme-custom',
			 width: 500
		});
	};
	
	  $scope.addMasterStockEntry=function(masterstock){
		  console.log("Inside ng click");
		  masterstock.quantity = masterstock.numbersInUnit * masterstock.numberofUnits;
		  masterstock.department_id = masterstock.department.departmentId; 	
	       	
		  $scope.stockMedicineTransaction = [];
	       	var stockList = {};
	       	
	       	stockList.itemName = masterstock.itemName;
	       	stockList.departmentId = masterstock.department.departmentId;
	       	stockList.batchId = masterstock.batchId;
	       	stockList.purchaseDate = masterstock.purchaseDate;
	       	stockList.manufactureDate = masterstock.manufactureDate;
	       	stockList.numbersInUnit = masterstock.numbersInUnit;
	       	stockList.numberofUnits = masterstock.numberofUnits;
	       	stockList.price = masterstock.price;
	       	stockList.expiryDate = masterstock.expiryDate;
	       	stockList.quantity = masterstock.quantity;
	       	stockList.createdDate = new Date();
	       	
	       	$scope.stockMedicineTransaction.push(stockList);
	       	masterstock.stockMedicineTransaction = $scope.stockMedicineTransaction;
	       	console.log(masterstock);
	       	$http.post("createStockMedicine",masterstock).success(function(data){
	       			
	       		});
	        }
	  
		$http.get("listStockMedicineDetails").success(function(data){
			
			$scope.StockMedicine = data.StockMedicine;
			console.log("Get stock Medicine", $scope.StockMedicine);
		});
		
		var hasDepartment = $http.get('listDepartmentDetails');
		hasDepartment.then(function(data) {
			$scope.result = data.data;
			$scope.departmentList = $scope.result.Department;
			console.log($scope.departmentList);
		});
		
		$http.get("listPharamacyRequestDetails").success(function(data){
			
			$scope.medicineList = [];
			
			console.log(data.PharmacyRequest);
			
	    	angular.forEach(data.PharmacyRequest, function(value) {
	    		$scope.department = value.department;
	    		$scope.medicineList = value.medicineList;
	    	});
	    	console.log("Get Medicinss List", $scope.medicineList);
		});
	
		
		$scope.addStockAdjustment = function (pharmacy) {
			
	       
	       	var stockUpdate = {};
	       	stockUpdate.quantity = pharmacy.quantity;
	       	stockUpdate.stockMedicineId = pharmacy.stockMedicine.stockMedicineId;
	    	
	       	pharmacy.stockMedicine.quantity = pharmacy.stockMedicine.quantity - pharmacy.quantity;
	    	 $scope.stockMedicineTransaction = [];
		       	var stockList = {};
		       	
		       	stockList.itemName = pharmacy.stockMedicine.itemName;
		       	stockList.departmentId = pharmacy.stockMedicine.department.departmentId;
		       	stockList.batchId = pharmacy.stockMedicine.batchId;
		       	stockList.purchaseDate = pharmacy.stockMedicine.purchaseDate;
		       	stockList.manufactureDate = pharmacy.stockMedicine.manufactureDate;
		       	stockList.numbersInUnit = pharmacy.stockMedicine.numbersInUnit;
		       	stockList.numberofUnits = pharmacy.stockMedicine.numberofUnits;
		       	stockList.price = pharmacy.stockMedicine.price;
		       	stockList.expiryDate = pharmacy.stockMedicine.expiryDate;
		       	stockList.quantity = pharmacy.stockMedicine.quantity;
		       	stockList.createdDate = new Date();
		       	
		       	$scope.stockMedicineTransaction.push(stockList);
		       	pharmacy.stockMedicine.stockMedicineTransaction = $scope.stockMedicineTransaction;
		       	pharmacy.stockMedicineId = pharmacy.stockMedicine.stockMedicineId;
		       	console.log(pharmacy);
	    	
	       	$http.post("adjustStockMedicine",pharmacy).success(function(data){
	       			
	       	});
		}
		
		
		$scope.viewRunReport = function(pharmacy) {
			
			pharmacy.stockMedicine.departmentId = pharmacy.stockMedicine.department.departmentId;
			$http.post('getStockMedicineById', pharmacy.stockMedicine).success(function(data) {
				
				$scope.stockMedicineTransaction = [];
				$scope.stockMedicineTransaction = data.StockMedicineTransaction;
				
				
//		    	angular.forEach(data.PharmacyRequest, function(value) {
//		    		$scope.medicineList = value.stockMedicineTransaction;
//		    	});
		    	console.log("Get Stock Medicine Transaction List", $scope.stockMedicineTransaction);
			});
		}
});






ngApp.controller('stockListCtrl', function($scope, $http, $timeout) {
	$scope.format = "dd-MM-yyyy"
		

	$scope.addStockLedger = function() {
		window.location.href="addStock";
	}
	
	$http.get("listPharamacyRequestDetails").success(function(data){
		
		$scope.medicineList = [];
		
		
    	angular.forEach(data.PharmacyRequest, function(value) {
    		$scope.medicineList = value.medicineList;
    	});
    	console.log("Get Medicine List", $scope.medicineList);
	});
	
	$scope.stockAdjustment = function() {
		window.location.href="addStockAdjustment";
	}
	
	$scope.purchaseOrder = function() {
		window.location.href="addPurchaseOrder";
	}
});