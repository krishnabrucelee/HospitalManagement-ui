
ngApp.controller('patientCtrl', function($scope, $http, uibDateParser,  $timeout) {
	
	$scope.format = 'dd-mm-yyyy';
	$scope.date = new Date();
$scope.patient = {};
$scope.room = {};
$scope.rooms = [];
	
	
	//
var hasDepartment = $http.get('listDepartmentDetails');
hasDepartment.then(function(data) {
	$scope.result = data.data;
	$scope.departmentList = $scope.result.Department;
	console.log($scope.departmentList);
});
	
	$scope.listPatient = function() {
		window.location.href="listPatient";
	}
	$scope.searchRoom = {};
	
	$scope.listRoomByFilter = function(classType, isAvailable) {
		$scope.searchRoom.classType = classType;
		$scope.searchRoom.isAvailable = isAvailable;
		console.log( $scope.searchRoom);
		$http.post('listRoomByFilter', $scope.searchRoom).then(function(data) {
			
			$scope.roomList = data.data.Floors;
//			$scope.roomList = $scope.result.Patient;
//			$scope.sessionDetails = $scope.result.sessionDetails;
//			$scope.permissionList = $scope.result.sessionDetails.permissionList;
			console.log("r", $scope.roomList);
			angular.forEach($scope.roomList, function(data){	
				console.log("1",data);
					angular.forEach(data, function(data1) {
						
						if (data1.roomManagement != null) {
							console.log("2:", data1.roomManagement);
						$scope.rooms.push(data1.roomManagement);
						}
					});
				
			});
			console.log("floorId", $scope.rooms);
			
			var object = {};
			object.floorId = $scope.rooms.floorId;
			console.log("floorIiiid", object);
			//
			$scope.addRoomToPatient = function(roomData) {
				
				
				alert("hi");
				$scope.room = roomData;
				object.wardNumber = roomData.wardNumber;
				console.log("hqqi", object);
			}
				$scope.save = function(addPatientForm, patient) {
					
					patient.wardNumber = object.wardNumber;
					patient.floorId = object.floorId;
					
					console.log(patient);
					
					$http.post('createPatient', patient).success(function(data) {
						$scope.result = data;
						console.log($scope.result);
					});
				}
		});
	}
	
	$scope.addWaitingList = function() {
		window.location.href="addWaitingList";
	}

});


ngApp.controller('patientViewCtrl', function($scope, $http, $httpParamSerializer,  $timeout) {
	
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
	

    $http.post('viewPatientById', $scope.searchParams).success(function(data) {
		$scope.patientList = data.Patient;
		
		console.log($scope.patientList[0]);
		
		if ($scope.patientList[0].wardNumber != null) {
			var room = {};
				room.wardNumber = $scope.patientList[0].wardNumber;
			console.log(room);
//			 $http.post('getRoomDetailsByWardNumber', room).success(function(data) {
//				 $scope.room = data.Floors[0];
//					
//					console.log($scope.room);
//			 });
		}
    });
    
    
	var hasDoctor = $http.get('listDoctorDetails');
	hasDoctor.then(function(data) {
		$scope.result = data.data;
		$scope.doctorList = $scope.result.Doctor;
		console.log($scope.doctorList);
	});
	
	var hasNurse = $http.get('listNurseDetails');
	hasNurse.then(function(data) {
		$scope.result = data.data;
		$scope.nurseList = $scope.result.Nurse;
		console.log($scope.nurseList);
	});
	
	var hasDepartment = $http.get('listDepartmentDetails');
	hasDepartment.then(function(data) {
		$scope.result = data.data;
		$scope.departmentList = $scope.result.Department;
		console.log($scope.departmentList);
	});
	
    $scope.emrReport = function(patientId) {
    	var emrView = "emrView"; 
    	window.location.href="listEmr?id="+patientId+"&view="+emrView;
    }
    
    $scope.editPatientDetails = function(patient) {
    	console.log(patient);
    	
    	patient.departmentId = patient.department.departmentId;
		$http.post('editPatientDetails', patient).success(function(data) {
			$scope.result = data;
			console.log($scope.result);
		});
    }
    
    $scope.createDischargeSummary = function(patient, discharge) {
    	discharge.patient = patient;
    	discharge.admittedDate = patient.createdDate;
    	discharge.wardNumber = patient.wardNumber;
    	console.log(discharge);
    	
		$http.post('createDischargeSummary', discharge).success(function(data) {
			$scope.result = data;
			console.log($scope.result);
		});
    }
});




ngApp.controller('patientListCtrl', function($scope, $http, $httpParamSerializer, $cookies) {
	
		$scope.patientList = [];
        
        
		$http.get('listPatientDetails').then(function(data) {
			$scope.result = data.data
			$scope.patientList = $scope.result.Patient;
			$scope.sessionDetails = $scope.result.sessionDetails;
			$scope.permissionList = $scope.result.sessionDetails.permissionList;
			console.log($scope.patientList);
		});
		
	    $scope.addPatient = function(name){
	    	window.location.href="addPatient";
	    }

	    $scope.viewPatient = function(patientId){
	    	console.log(patientId);
	    	var patientView = "patientView"; 
				window.location.href="viewPatient?id="+patientId+"&view="+patientView;
	    }
	    
	    $scope.discharge = function(patientId){
	    	console.log(patientId);
	    	var patientView = "dischargeSummary"; 
				window.location.href="dischargeSummary?id="+patientId+"&view="+patientView;
	    }
	    
	    $scope.editPatient = function(patientId) {
	    	console.log(patientId);
	    	var patientView = "patientView"; 
				window.location.href="editPatient?id="+patientId+"&view="+patientView;
	    }
 
	    
});