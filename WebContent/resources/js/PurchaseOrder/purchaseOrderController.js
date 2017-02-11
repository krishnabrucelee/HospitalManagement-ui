
ngApp.controller('purchaseOrderListCtrl', function($scope, $http, $timeout) {
	
	$scope.addPurchaseOrder = function() {
		window.location.href="addPurchaseOrder";
	} 
	$scope.medicineItemMasterList = [];
	$scope.purchaseOrderRefNumber = {};
	var hasPurchaseOrder = $http.get('listPurchaseOrderDetails');
	hasPurchaseOrder.then(function(data) {
		$scope.result = data.data;
		$scope.purchaseOrderList = $scope.result.PurchaseOrder;
		console.log($scope.purchaseOrderList);
		
		
    	angular.forEach($scope.purchaseOrderList, function(value) {
    		$scope.department = value.department;
    		$scope.purchaseOrderRefNumber = value.purchaseOrderRefNumber;
    		$scope.purchaseOrderTransactionList = value.purchaseOrderTransaction;
    		console.log("aa", $scope.purchaseOrderList);
    		angular.forEach($scope.purchaseOrderTransactionList, function(value1) {
    			$scope.medicineItemMasterList.push(value1.medicineItemMaster);
    			console.log("dd", $scope.medicineItemMasterList);
    		});
    	});
		
	});
});

ngApp.controller('purchaseOrderCtrl', function($scope, $http, $timeout, uibDateParser, $timeout) {
	
	$scope.format = 'dd-mm-yyyy';
	
	$http.get("listSupplierDetails").success(function(data){
		$scope.supplierList = data.Supplier;
		console.log("Get stock Medicine", $scope.supplierList);
	});
	
	var hasDepartment = $http.get('listDepartmentDetails');
	hasDepartment.then(function(data) {
		$scope.result = data.data;
		$scope.departmentList = $scope.result.Department;
		console.log($scope.departmentList);
	});
	
	$scope.medicineList = [];
	$scope.getItems = function(department) {
		console.log(department);
		
		$http.post('getItemsByDepartment', department).success(function(data) {
			
	    	angular.forEach(data.PharamacyRequestItems, function(value) {
	    		$scope.department = value.department;
	    		$scope.medicineList = value.medicineList;
	    	});
	    	console.log("Get Medicinss List", $scope.medicineList);
		});
	}
	
	$scope.calculatePrice = function(pharmacy) {
		pharmacy.price = pharmacy.quantity * pharmacy.rate;
	}
	
	$scope.addItem = function(pharmacy) {
		console.log(pharmacy);
	}
	
	$scope.addPurchaseOrder = function(purchase) {
		console.log(purchase);
		var obj = {};
		obj.supplier_id = purchase.supplierId;
		obj.department = purchase.department;
		obj.shipTo = purchase.shipTo;
		obj.shipingAddress = purchase.shipingAddress;
		obj.purchaseOrderDate = purchase.purchaseOrderDate;
		obj.purchaseOrderTransaction = $scope.medicineList;
    	
		console.log(obj);
		
		$http.post('addPurchaseOrderDetails', obj).success(function(data) {
			
		});
	}
	
	
	
	//
	var hasPurchaseOrder = $http.get('listPurchaseOrderDetails');
	hasPurchaseOrder.then(function(data) {
		$scope.result = data.data;
		$scope.purchaseOrderList = $scope.result.PurchaseOrder;
		console.log($scope.purchaseOrderList);
	});
	
	//
	$scope.addMrn = function(mrn, masterstock) {
		

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
	       	
	       	mrn.stockMedicine = masterstock;
	       	console.log(mrn);
	       	
	       	$http.post("addMrnDetails",mrn).success(function(data){
       			console.log(data);
       		});
	}
});