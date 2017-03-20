
ngApp.controller('salesReceiptCtrl', function($scope, $http, $httpParamSerializer, $timeout, uibDateParser) {
	
	$scope.salesRecieptItemsList = [];
	$http.get("getAllAccountType").success(function(data){			
		$scope.accountTypeList = data.result;				
	});
	
	$http.get("listCustomerDetails").success(function(data){			
		$scope.listCustomerDetails = data.Customer;				
	});
	
	$scope.calculatePrice = function(salesRecieptItems) {
		salesRecieptItems.itemAmount = salesRecieptItems.itemQuantity * salesRecieptItems.itemRate;
		console.log(salesRecieptItems);
	}
	$scope.salesRecieptItems = {};
	$scope.addItem = function(pharmacy) {
		console.log(pharmacy);
	$scope.salesRecieptItems = pharmacy;
	}
	$scope.addSales = function(sales, salesRecieptItems) {
		
		console.log("salesRecieptItems",salesRecieptItems);
		$scope.salesRecieptItemsList.push(salesRecieptItems);
		sales.salesRecieptItems = $scope.salesRecieptItemsList;
		sales.salesReceiptAmount = salesRecieptItems.itemAmount;

		$http.post('addSalesReciept', sales).success(function(data) {
			console.log(data);
		});
		console.log(sales);
		
//		var obj = {};
//		obj.accountDetailTypeId = sales.accountCategoryChart.accountDetailTypeId;
//		obj.amountType = "credit";
//		obj.amount = sales.salesReceiptAmount;
//		obj.notes = payBill.accountDetailType.description;
//		
//		var obj1 = {};
//		obj1.accountDetailTypeId = sales.accountCategoryChart.accountDetailTypeId;
//		obj1.amountType = "debit";
//		obj1.amount = sales.salesReceiptAmount;
//		obj1.notes = payBill.accountDetailType.description;
//		
//		$http.post('addFinancialTransaction', obj).success(function(data) {
//			console.log(data);
//		});
//		
//		$http.post('addFinancialTransaction', obj1).success(function(data) {
//			console.log(data);
//		});
	}
});

ngApp.controller('invoiceCtrl', function($scope, $http, $httpParamSerializer, $timeout, uibDateParser) {
	
	$scope.invoiceItemsList = [];
	
	
	$http.get('listPatientDetails').then(function(data) {
		$scope.result = data.data
		$scope.patientList = $scope.result.Patient;
		$scope.sessionDetails = $scope.result.sessionDetails;
		$scope.permissionList = $scope.result.sessionDetails.permissionList;
		console.log($scope.patientList);
	});
	
	var hasDepartment = $http.get('listDepartmentDetails');
	hasDepartment.then(function(data) {
		$scope.result = data.data;
		$scope.departmentList = $scope.result.Department;
		console.log($scope.departmentList);
	});
	
	$scope.calculatePrice = function(invoiceItems) {
		invoiceItems.itemAmount = invoiceItems.itemQuantity * invoiceItems.itemRate;
		console.log(invoiceItems);
	}
	$scope.invoiceItems = {};
	$scope.addItem = function(pharmacy) {
		console.log(pharmacy);
	$scope.invoiceItems = pharmacy;
	}
	$scope.addInvoice = function(invoice, invoiceItems) {
		
		console.log("invoiceItems",invoiceItems);
		$scope.invoiceItemsList.push(invoiceItems);
		invoice.invoiceItems = $scope.invoiceItemsList;
		
//		angular.forEach(invoiceItems, function(value, key){
//			$scope.invoiceItemsList.push(value);
//		});
//		invoice.invoiceItems = $scope.invoiceItemsList;
//		var obj = {};
//		obj.supplier = purchase.supplier;
//		obj.terms = purchase.terms;
//		obj.mailingAddress = purchase.mailingAddress;
//		obj.purchaseBillingDate = purchase.purchaseBillingDate;
//		obj.purchaseDueDate = purchase.purchaseDueDate;
//		obj.purchase = $scope.purchaseOrderList[0];
//		obj.paymentAmount = pur.price;
//    	
//		console.log(obj);
//		
		$http.post('createInvoiceDetails', invoice).success(function(data) {
			console.log(data);
		});
		console.log(invoice);
	}
});

ngApp.controller('expenseCtrl', function($scope, $http, $httpParamSerializer, $timeout, uibDateParser) {
	
	$http.get("listStaff").success(function(data){			
		$scope.staffList = data.Staff;				
	});
	
	$http.get("getAllAccountType").success(function(data){			
		$scope.accountTypeList = data.result;				
	});
	
	$http.get("getAllAccountDetailType").success(function(data){			
		$scope.accountDetailTypeList = data.result;				
	});
	
	$scope.calculatePrice = function(expenseItems) {
		expenseItems.itemAmount = expenseItems.itemQuantity * expenseItems.itemRate;
	}
	$scope.expenseItems = [];
	$scope.addItem = function(exp) {
		console.log(exp);
	$scope.expenseItems = expenseItems;
	}
	
	$scope.addExpense = function (expense, expenseItems) {
		
//		console.log(expenseItems);
//		$scope.expenseItems = expenseItems;
//		
//		expense.expenseItems = 	$scope.expenseItems;	
//		console.log(expense);
		var obj = {};
		
		obj = expense;
		obj.expenseItems = $scope.expenseItems;
		console.log(obj);
		$http.post('createExpense', obj).success(function(data) {
			console.log(data);
		});
	}
});


ngApp.controller('payBillCtrl', function($scope, $http, $httpParamSerializer, $timeout, uibDateParser) {
	
});


ngApp.controller('receivePaymentCtrl', function($scope, $http, $httpParamSerializer, $timeout, uibDateParser) {
	
	$http.get('listPatientDetails').then(function(data) {
		$scope.result = data.data
		$scope.patientList = $scope.result.Patient;
		$scope.sessionDetails = $scope.result.sessionDetails;
		$scope.permissionList = $scope.result.sessionDetails.permissionList;
		console.log($scope.patientList);
	});
	
	var hasDepartment = $http.get('listDepartmentDetails');
	hasDepartment.then(function(data) {
		$scope.result = data.data;
		$scope.departmentList = $scope.result.Department;
		console.log($scope.departmentList);
	});
	
	var hasDepartment = $http.get('listInvoiceDetails');
	hasDepartment.then(function(data) {
		$scope.result = data.data;
		$scope.invoiceList = $scope.result.Invoice;
		console.log($scope.invoiceList);
	});
	
	$http.get("getAllAccountType").success(function(data){			
		$scope.accountTypeList = data.result;				
	});
	
	$scope.invoiceDetails = {};
	$scope.getInvoice = function(invoice) {
		$scope.invoiceDetails = invoice;
		console.log("sdf", $scope.invoiceDetails);
	}
	
	
	$scope.addRecvPayment = function (recvPayment, invoiceDetails) {
		console.log(recvPayment);
//		$http.post('addReceivePayment', recvPayment).success(function(data) {
//			console.log(data);
//		});
//	
//	
//	var obj = {};
//	obj.accountDetailTypeId = payBill.accountCategoryChart.accountDetailTypeId;
//	obj.amountType = "credit";
//	obj.amount = payBill.paymentAmount;
//	obj.notes = payBill.accountDetailType.description;
//	
//	var obj1 = {};
//	obj1.accountDetailTypeId = payBill.accountCategoryChart.accountDetailTypeId;
//	obj1.amountType = "debit";
//	obj1.amount = payBill.paymentAmount;
//	obj1.notes = payBill.accountDetailType.description;
//	
//	$http.post('addFinancialTransaction', obj).success(function(data) {
//		console.log(data);
//	});
//	
//	$http.post('addFinancialTransaction', obj1).success(function(data) {
//		console.log(data);
//	});
  }
});


ngApp.controller('purchaseBillCtrl', function($scope, $http, $timeout, uibDateParser, $timeout) {

	//
		$http.get("listPurchaseOrderTransactionDetails").success(function(data){
			$scope.purchaseOrderTransactionList = data.PurchaseOrderTransaction;
			console.log("Get purchaseOrderTransactionList", $scope.purchaseOrderTransactionList);
		});

		$http.get("listSupplierDetails").success(function(data){
			$scope.supplierList = data.Supplier;
			console.log("Get stock Medicine", $scope.supplierList);
		});

		$scope.medicineItemMasterList = [];
		$scope.purchaseOrderRefNumber = {};
		$scope.purchaseOrderList = {};
		var hasPurchaseOrder = $http.get('listPurchaseOrderDetails');
		hasPurchaseOrder.then(function(data) {
			$scope.result = data.data;
			$scope.purchaseOrderList = $scope.result.PurchaseOrder;
			console.log($scope.purchaseOrderList);
			
			
	    	angular.forEach($scope.purchaseOrderList, function(value) {
	    		$scope.department = value.department;
	    		$scope.purchaseOrderRefNumber = value.purchaseOrderRefNumber;
	    		$scope.purchaseOrderTransactionList = value.purchaseOrderTransaction;
	    		$scope.purchaseOrderTransactionList.purchaseOrderId = value.purchaseOrderId;
	    		console.log("aa", $scope.purchaseOrderTransactionList);
	    		angular.forEach($scope.purchaseOrderTransactionList, function(value1) {
	    			$scope.medicineItemMasterList.push(value1.medicineItemMaster);
	    			console.log("dd", $scope.medicineItemMasterList);
	    		});
	    	});
			
		
		
		$scope.calculatePrice = function(pharmacy) {
			pharmacy.price = pharmacy.quantity * pharmacy.rate;
		}
		$scope.pur = {};
		$scope.addItem = function(pharmacy) {
			console.log(pharmacy);
		$scope.pur = pharmacy;
		}
		$scope.addPurchaseBill = function(purchase, pur) {
			console.log(purchase);
			console.log("pur",purchase);
			var obj = {};
			obj.supplier = purchase.supplier;
			obj.terms = purchase.terms;
			obj.mailingAddress = purchase.mailingAddress;
			obj.purchaseBillingDate = purchase.purchaseBillingDate;
			obj.purchaseDueDate = purchase.purchaseDueDate;
			obj.purchase = $scope.purchaseOrderList[0];
			obj.paymentAmount = pur.price;
	    	
			console.log(obj);
			
			$http.post('createPurchaseBill', obj).success(function(data) {
				
			});
		}
	});
		
		
		$http.get("listPurchaseBill").success(function(data){
			$scope.purchaseBillingList = data.PurchaseBilling;
			console.log("Get purchaseBillingList", $scope.purchaseBillingList);
		});
		
		
		//
		$scope.makePayment = function (bill) {
			console.log(bill);
			window.location.href="payPurchaseBill?id="+bill.purchaseBillingId;
		}
		
});

ngApp.controller('payPurchaseBillCtrl', function($scope, $http, $timeout, uibDateParser, $timeout) {
	
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

$http.get("getAllAccountType").success(function(data){			
	$scope.accountTypeList = data.result;				
});

$http.get("getAllAccountDetailType").success(function(data){			
	$scope.accountDetailTypeList = data.result;	
	console.log($scope.accountDetailTypeList);
});
$scope.purchaseBillingList = [];


$http.post('listByTransactionIdAndLastDate', $scope.searchParams).success(function(data) {
	$scope.purchaseBillingList = data.PurchaseBillingTransaction;
	
	console.log($scope.purchaseBillingList);
	
//	if ($scope.patientList[0].wardNumber != null) {
//		var room = {};
//			room.wardNumber = $scope.patientList[0].wardNumber;
//		console.log(room);
////		 $http.post('getRoomDetailsByWardNumber', room).success(function(data) {
////			 $scope.room = data.Floors[0];
////				
////				console.log($scope.room);
////		 });
//	}
});

if ($scope.purchaseBillingList != null) {
	

$http.post('getPurchaseBill', $scope.searchParams).success(function(data) {
	$scope.purchaseBillingList = data.PurchaseBilling;
	
	console.log($scope.purchaseBillingList);
	
//	if ($scope.patientList[0].wardNumber != null) {
//		var room = {};
//			room.wardNumber = $scope.patientList[0].wardNumber;
//		console.log(room);
////		 $http.post('getRoomDetailsByWardNumber', room).success(function(data) {
////			 $scope.room = data.Floors[0];
////				
////				console.log($scope.room);
////		 });
//	}
});
}
$scope.addPayment = function(payBill, purchaseBilling) {
	
	
	console.log("ee", purchaseBilling);
	
	payBill.purchaseBilling = purchaseBilling;
	payBill.billAmount = $scope.purchaseBillingList[0].paymentAmount;
	payBill.paymentAmount = purchaseBilling.payAmount;
	console.log(payBill);
	
	$http.post('savePurchasePayBill', payBill).success(function(data) {
		console.log(data);
	});
	
	var obj = {};
	obj.accountDetailTypeId = payBill.accountDetailType.accountDetailTypeId;
	obj.amountType = "credit";
	obj.amount = payBill.paymentAmount;
	obj.notes = payBill.accountDetailType.description;
	
	var obj1 = {};
	obj1.accountDetailTypeId = payBill.accountDetailType.accountDetailTypeId;
	obj1.amountType = "debit";
	obj1.amount = payBill.paymentAmount;
	obj1.notes = payBill.accountDetailType.description;
	
	$http.post('addFinancialTransaction', obj).success(function(data) {
		console.log(data);
	});
	
	$http.post('addFinancialTransaction', obj1).success(function(data) {
		console.log(data);
	});
	
}
});