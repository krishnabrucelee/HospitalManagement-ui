
ngApp.controller('homeCtrl', function($scope, $http, $cookies, $cookieStore) {
	
	$scope.sessionDetails = {};
	
	   $scope.signIn = function(login) {
		   console.log(login);
	       	$http.post("loginUser",login).success(function(data){
    			if (data.result == true) {
    				window.location.href="home";
    				$scope.sessionDetails = data.user;
   				$cookies.putObject('sessions', $scope.sessionDetails);
    			} else {
    				window.location.href="accessDenied";
    			}
    		});
	   }
	 // Retrieving a cookie
			  var session =$cookies.getObject('sessions');
	$scope.listPatient = function() {
		window.location.href="listPatient";
	}
	
	$scope.listDoctor = function() {
		window.location.href="listDoctor";
	}
	
	$scope.addStaff = function() {
		window.location.href="registration";
	}
	
	$scope.addDepartment = function() {
		window.location.href="addDepartment";
	}
	
	$scope.addRole = function() {
		window.location.href="addRole";
	}
	
	$scope.addAppointment = function() {
		window.location.href="listAppointment";
	}

	$scope.addNurseScheduling = function() {
		window.location.href="NurseSchedule";
	}
	
	$scope.addRoom = function() {
		window.location.href="listRoom";
	}
	
	$scope.addBilling = function() {
		window.location.href="addBillingChart";
	}
	
	$scope.listStockRequest = function() {
		window.location.href="listStockRequest";
	}
	
	$scope.listPurchaseOrder = function() {
		window.location.href="listPurchaseOrder";
	}
	
	$scope.listSupplier = function() {
		window.location.href="listSupplier";
	}
	
	$scope.requestMrn = function() {
		window.location.href="requestMrn";
	}	
	
	$scope.addSurgeryRoom = function() {
		window.location.href="addSurgeryRoom";
	}
	
	$scope.addSurgery = function() {
		window.location.href="addSurgery";
	}

	$scope.viewAttendance = function(){
		window.location.href="viewAttendance";
	}
	
	$scope.activityLog = function() {
		window.location.href="listActivity";
	}
	
	$scope.editProfile = function(userId) {
		window.location.href="editProfile?id="+userId;
	}
	
	$scope.listWaitingList = function() {
		window.location.href="listWaitingList";
	}
	
	$scope.addBloodBankCamp = function() {
		window.location.href="addBloodBankCamp";
	}
	
	$scope.listDonor = function() {
		window.location.href="listDonor";
	}
	
	$scope.addBloodBank = function() {
		window.location.href="addBloodBank";
	}
	
	$scope.issueBlood = function() {
		window.location.href="issueBlood";
	}
	
	$scope.receivePayment = function() {
		window.location.href="receivePayment";
	}
	
	$scope.salesReceipt = function() {
		window.location.href="salesReceipt";
	}
	
	$scope.expense = function() {
		window.location.href="expense";
	}
	
	$scope.payBill = function() {
		window.location.href="payBill";
	} 
	
	$scope.listBill = function() {
		window.location.href="listBill";
	}
	  
	$scope.invoice = function() {
		window.location.href="invoice";
	}
	
	$scope.addCustomer = function() {
		window.location.href="addCustomer";
	}
	
	$scope.chartOfAccounts = function() {
		window.location.href="chartOfAccounts";
	}
	
	$scope.profitAndLossReport = function() {
		window.location.href="profitAndLossReport";
	}
});

