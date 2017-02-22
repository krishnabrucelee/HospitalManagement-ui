

ngApp.controller('roleCtrl', function($scope, $http, $timeout, uibDateParser,ngDialog ) {
	
	$scope.saveRole = function (roleForm, role) {
		
		$scope.addRole = [];
		$scope.permissionList = [];
		$scope.module = {};
		$scope.action = {};
		console.log("hi:", role);
		
		if (role.permissionList.Laboratory) {
			if (role.permissionList.Laboratory.module.Laboratory) {
			angular.forEach(role.permissionList.Laboratory.module, function(value, key) {
        		angular.forEach(role.permissionList.Laboratory.action, function(valueAction, keyAction) {
        		
        			if (valueAction == true) {
        			var obj = {};
        			obj.module = key;
        			obj.action = keyAction;
        			obj.actionKey = keyAction + key;
        		}
				$scope.permissionList.push(obj);
        		});
	});
        	
			//
			}
		}
		
		
		if (role.permissionList.Emr) {
			if (role.permissionList.Emr.module.Emr) {
			angular.forEach(role.permissionList.Emr.module, function(value, key) {
        		angular.forEach(role.permissionList.Emr.action, function(valueAction, keyAction) {
        		
        		if (valueAction == true) {
        			var obj = {};
        			obj.module = key;
        			obj.action = keyAction;
        			obj.actionKey = keyAction + key;
        		}
				$scope.permissionList.push(obj);
        		});
	});
        	
			//
			}
		}
		
		if (role.permissionList.Pharamacy) {
			if (role.permissionList.Pharamacy.module.Pharamacy) {
			angular.forEach(role.permissionList.Pharamacy.module, function(value, key) {
        		angular.forEach(role.permissionList.Pharamacy.action, function(valueAction, keyAction) {
        		
        		if (valueAction == true) {
        			var obj = {};
        			obj.module = key;
        			obj.action = keyAction;
        			obj.actionKey = keyAction + key;
        		}
				$scope.permissionList.push(obj);
        		});
	});
        	
			//
			}
		}
		
		if (role.permissionList.Finance) {
			if (role.permissionList.Finance.module.Finance) {
			angular.forEach(role.permissionList.Finance.module, function(value, key) {
        		angular.forEach(role.permissionList.Finance.action, function(valueAction, keyAction) {
        		
        		if (valueAction == true) {
        			var obj = {};
        			obj.module = key;
        			obj.action = keyAction;
        			obj.actionKey = keyAction + key;
        		}
				$scope.permissionList.push(obj);
        		});
	});
        	
			//
			}
		}
		
		if (role.permissionList.Appointment) {
			if (role.permissionList.Appointment.module.Appointment) {
        	angular.forEach(role.permissionList.Appointment.module, function(value, key) {
        		angular.forEach(role.permissionList.Appointment.action, function(valueAction, keyAction) {
        		
        			if (valueAction == true) {
        			var obj = {};
        			obj.module = key;
        			obj.action = keyAction;
        			obj.actionKey = keyAction + key;
        		}
				$scope.permissionList.push(obj);
        		});
	});
        	
			//
			}
		}
		
		if (role.permissionList.Patient) {
			if (role.permissionList.Patient.module.Patient) {
        	angular.forEach(role.permissionList.Patient.module, function(value, key) {
        		angular.forEach(role.permissionList.Patient.action, function(valueAction, keyAction) {
        		
        			if (valueAction == true) {
        			var obj = {};
        			obj.module = key;
        			obj.action = keyAction;
        			obj.actionKey = keyAction + key;
        		}
				$scope.permissionList.push(obj);
        		});
	});
        	
			//
			}
		}
		var addRole = {};
		
		addRole.permissionList = $scope.permissionList;
		addRole.roleName = role.roleName;
		addRole.roleDescription = role.roleDescription;
		console.log("aaa", addRole);
		
		$http.post('createRole', addRole).success(function(data) {
			$scope.result = data;
			console.log($scope.result);
			location.reload();
		});
		
	}
	
var hasRole = $http.get('listRoleDetails');
	hasRole.then(function(data) {
		$scope.result = data.data;
		$scope.roleList = $scope.result.Role;
		console.log($scope.roleList);
	});
	
});