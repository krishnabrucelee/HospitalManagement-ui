
ngApp.controller('patientCtrl', function($scope, $http, uibDateParser) {
	
	$scope.format = 'dd-mm-yyyy';
	$scope.date = new Date();
$scope.patient = {};
$scope.room = {};
$scope.rooms = [];

	
	
	//
	
	$scope.listPatient = function() {
		window.location.href="listPatient";
	}
	$scope.searchRoom = {};
	
	$scope.listRoomByFilter = function(classType, floor) {
		$scope.searchRoom.classType = classType;
		$scope.searchRoom.floor = floor;
		console.log( $scope.searchRoom);
		$http.post('listRoomByFilter', $scope.searchRoom).then(function(data) {
			$scope.roomList = data.data.Floors;
//			$scope.roomList = $scope.result.Patient;
//			$scope.sessionDetails = $scope.result.sessionDetails;
//			$scope.permissionList = $scope.result.sessionDetails.permissionList;
			console.log($scope.roomList);
			angular.forEach($scope.roomList, function(data){
				console.log("1",data);
				angular.forEach(data, function(data1){
					console.log("2:",data1);
					$scope.rooms.push(data1);
				});
				
			});
			console.log("floorId", $scope.rooms);
			
			var object = {};
			object.floorId = $scope.rooms[0].floorId;
			console.log("floorIiiid", object);
			//
			$scope.addRoomToPatient = function(roomData) {
				
				
				alert("hi");
				$scope.room = roomData;
				object.wardNumber = roomData.wardNumber;
				console.log("hqqi", object);
			}
				$scope.save = function(addPatientForm, patient, formatDate) {
					
					patient.patientDob = formatDate;
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

});


ngApp.controller('patientViewCtrl', function($scope, $http, $httpParamSerializer) {
	
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
    });
    
    $scope.emrReport = function(patientId) {
    	var emrView = "emrView"; 
    	window.location.href="listEmr?id="+patientId+"&view="+emrView;
    }
});




ngApp.controller('patientListCtrl', function($scope, $http, $httpParamSerializer) {
	
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
	    
 
	    
});