
ngApp.controller('homeCtrl', function($scope, $http) {
	
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
});