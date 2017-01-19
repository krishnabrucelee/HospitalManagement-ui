
ngApp.controller('registrationCtrl', function($scope, $http, $timeout) {
	
//	$scope.dateTimeNow = function() {
//        $scope.date = new Date();
//        $scope.showWeeks = false;
//    };
//    $scope.dateTimeNow();
//    $scope.options = {
//        showWeeks: false
//    };
	$scope.format = "dd-MM-yyyy"
	$scope.professionType = [{name : "FrontOffice"}, {name : "Doctor"}, {name : "Nurse"}, {name : "Finance"}, {name : "Inventory"}, {name : "LabTechnician"}, {name : "Pharmacist"}, {name : "Laundry"}]
	
	
//	$scope.department
	
	var hasDepartment = $http.get('listDepartmentDetails');
	hasDepartment.then(function(data) {
		$scope.result = data.data;
		$scope.departmentList = $scope.result.Department;
		console.log($scope.departmentList);
	});
	
	var hasRole = $http.get('listRoleDetails');
	hasRole.then(function(data) {
		$scope.result = data.data;
		$scope.roleList = $scope.result.Role;
		console.log($scope.roleList);
	});
	
	
	
	$scope.saveStaff = function (staffForm, staff) {
		console.log("staff111", staff);
		$scope.Doctor = [];
		$scope.Nurse = [];

		if (staff.staffRole == "Doctor") {
			$scope.Doctor = staff.doctor;
			$scope.Doctor.department_id = staff.doctor.department.departmentId;
			$scope.Doctor.role_id = staff.doctor.role.roleId;
			delete $scope.Doctor.department;
			delete $scope.Doctor.role;
			delete staff.doctor;
			console.log("doctor", $scope.Doctor);
			console.log("staff", staff);
			var obj = {};
			obj = staff;
			obj.Doctor = $scope.Doctor;
		}
		
		if (staff.staffRole == "Nurse") {
			$scope.Nurse = staff.nurse;
			$scope.Nurse.department_id = staff.nurse.department.departmentId;
			$scope.Nurse.role_id = staff.nurse.role.roleId;
			delete $scope.Nurse.department;
			delete $scope.Nurse.role;
			delete staff.nurse;
			console.log("Nurse", $scope.Nurse);
			console.log("staff", staff);
			var obj = {};
			obj = staff;
			obj.Nurse = $scope.Nurse;
		}
		
		if (staff.staffRole == "FrontOffice") {
			$scope.Receptionist = staff.receptionist;
			$scope.Receptionist.department_id = staff.receptionist.department.departmentId;
			$scope.Receptionist.role_id = staff.receptionist.role.roleId;
			delete $scope.Receptionist.department;
			delete $scope.Receptionist.role;
			delete staff.receptionist;
			console.log("Receptionist", $scope.Receptionist);
			console.log("staff", staff);
			var obj = {};
			obj = staff;
			obj.Receptionist = $scope.Receptionist;
		}
		
		if (staff.staffRole == "Finance") {
			$scope.Finance = staff.finance;
			$scope.Finance.department_id = staff.finance.department.departmentId;
			$scope.Finance.role_id = staff.finance.role.roleId;
			delete $scope.Finance.department;
			delete $scope.Finance.role;
			delete staff.finance;
			console.log("Finance", $scope.Finance);
			console.log("staff", staff);
			var obj = {};
			obj = staff;
			obj.Finance = $scope.Finance;
		}
		
		if (staff.staffRole == "Inventory") {
			$scope.Inventory = staff.inventory;
			$scope.Inventory.department_id = staff.inventory.department.departmentId;
			$scope.Inventory.role_id = staff.inventory.role.roleId;
			delete $scope.Inventory.department;
			delete $scope.Inventory.role;
			delete staff.inventory;
			console.log("Inventory", $scope.Inventory);
			console.log("staff", staff);
			var obj = {};
			obj = staff;
			obj.Inventory = $scope.Inventory;
		}
		
		if (staff.staffRole == "pharmacist") {
			$scope.LabTechnician = staff.labTechnician;
			$scope.LabTechnician.department_id = staff.labTechnician.department.departmentId;
			$scope.LabTechnician.role_id = staff.labTechnician.role.roleId;
			delete $scope.LabTechnician.department;
			delete $scope.LabTechnician.role;
			delete staff.labTechnician;
			console.log("LabTechnician", $scope.LabTechnician);
			console.log("staff", staff);
			var obj = {};
			obj = staff;
			obj.LabTechnician = $scope.LabTechnician;
		}
		
		if (staff.staffRole == "Pharmacist") {
			$scope.Pharmacist = staff.pharmacist;
			$scope.Pharmacist.department_id = staff.pharmacist.department.departmentId;
			$scope.Pharmacist.role_id = staff.pharmacist.role.roleId;
			delete $scope.Pharmacist.department;
			delete $scope.Pharmacist.role;
			delete staff.pharmacist;
			console.log("Pharmacist", $scope.Pharmacist);
			console.log("staff", staff);
			var obj = {};
			obj = staff;
			obj.Pharmacist = $scope.Pharmacist;
		}
		
		if (staff.staffRole == "Laundry") {
			$scope.HouseKeeping = staff.houseKeeper;
			$scope.HouseKeeping.department_id = staff.houseKeeper.department.departmentId;
			$scope.HouseKeeping.role_id = staff.houseKeeper.role.roleId;
			delete $scope.HouseKeeping.department;
			delete $scope.HouseKeeping.role;
			delete staff.houseKeeper;
			console.log("HouseKeeping", $scope.HouseKeeping);
			console.log("staff", staff);
			var obj = {};
			obj = staff;
			obj.HouseKeeping = $scope.HouseKeeping;
		}
		console.log("obj", obj);
		$http.post('createStaff', obj).success(function(data) {
			$scope.result = data;
			console.log($scope.result);
		});
	}
});