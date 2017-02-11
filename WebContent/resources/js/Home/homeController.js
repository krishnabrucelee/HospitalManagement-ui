
ngApp.controller('homeCtrl', function($scope, $http) {
	
//	$scope.sessionDetails = $scope.result.sessionDetails;
	
	   $scope.signIn = function(login) {
		   console.log(login);
	       	$http.post("loginUser",login).success(function(data){
    			console.log("hgfdsd", data);
    			if (data.result == true) {
    				$scope.sessionDetails = data.session;
    				console.log("hgfdsd", $scope.sessionDetails);
    				window.location.href="home";
    			} else {
    				window.location.href="accessDenied";
    			}
    		});
	   }
	   
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
});

