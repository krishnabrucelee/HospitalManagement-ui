

ngApp.controller('roomListCtrl', function($scope, $http, $timeout) {
	
	  $scope.addRoom = function(room) {			   			    
		  window.location.href="addRoom";
	  };
	  
	
});


ngApp.controller('roomCtrl', function($scope, $http, $timeout) {
	
	

	$scope.addRoomTypes = function(room) {
		$scope.proceedToBedConfiguration = room;
		console.log($scope.proceedToBedConfiguration);
	}

	//
	$scope.roomTypeDetails = [{id : 'choice1' }];

	$scope.addRoomDetails = function() {
		var newItemNo = $scope.roomTypeDetails.length + 1;
		$scope.roomTypeDetails.push({'id' : 'choice' + " " + newItemNo});
	};

	$scope.removeRoomDetails = function() {
		var lastItem = $scope.roomTypeDetails.length - 1;
		$scope.roomTypeDetails.splice(lastItem);
	};
	
	//
	  //
	  $scope.newFloor = [{id: 'choice1'}];
	  
	  $scope.floor = {"roomManagement":[]};
	  
	  //
	    $scope.getNumber = function(num) {
	        return new Array(parseInt(num));   
	    }
	  
	  $scope.saveRoom = function(room, roomTypeDetails) {	
		  var add = 1;
		  
		  var multiply = {};
		  angular.forEach($scope.roomTypeDetails, function(data){
//			  $scope.roomTypeDetails.push(room);
			  multiply = data.numberOfBeds * room.bedsForClassType;
			  console.log("0",multiply);
			  
			  
				  
				  
				for(i = 1; i <= multiply; i++){
					for (j = 1; j <= room.bedsForClassType; j++) {
						  var o ={};
						  if (room.classType == "Class A") {
							  o.bedsForClassType = room.bedsForClassType;
							  o.classType = room.classType;
							  o.numberOfFloors = room.numberOfFloors;
							  o.price = room.price;
							  o.numberOfBeds = multiply;
							  o.floorNumber = data.floorNumber;
							  o.isAvailable = false;
							  o.wardNumber = "A"+"F"+data.floorNumber+"W"+j+"B"+i;
							  o.customWardNumber = data.customWardNumber;
							  $scope.floor.roomManagement.push(o);
							  o = {};
						  }
						  
						  if (room.classType == "Class B") {
							  o.bedsForClassType = room.bedsForClassType;
							  o.classType = room.classType;
							  o.numberOfFloors = room.numberOfFloors;
							  o.price = room.price;
							  o.numberOfBeds = multiply;
							  o.floorNumber = data.floorNumber;
							  o.isAvailable = false;
							  o.wardNumber = "B"+"F"+data.floorNumber+"W"+j+"B"+i;
							  o.customWardNumber = data.customWardNumber;
							  $scope.floor.roomManagement.push(o);
							  o = {};
						  }
						  
						  if (room.classType == "Class C") {
							  o.bedsForClassType = room.bedsForClassType;
							  o.classType = room.classType;
							  o.numberOfFloors = room.numberOfFloors;
							  o.price = room.price;
							  o.numberOfBeds = multiply;
							  o.floorNumber = data.floorNumber;
							  o.isAvailable = false;
							  o.wardNumber = "C"+"F"+data.floorNumber+"W"+j+"B"+i;
							  o.customWardNumber = data.customWardNumber;
							  $scope.floor.roomManagement.push(o);
							  o = {};
						  }
						  
						  if (room.classType == "Class D") {
							  o.bedsForClassType = room.bedsForClassType;
							  o.classType = room.classType;
							  o.numberOfFloors = room.numberOfFloors;
							  o.price = room.price;
							  o.numberOfBeds = multiply;
							  o.floorNumber = data.floorNumber;
							  o.isAvailable = false;
							  o.wardNumber = "D"+"F"+data.floorNumber+"W"+j+"B"+i;
							  o.customWardNumber = data.customWardNumber;
							  $scope.floor.roomManagement.push(o);
							  o = {};
						  }
						  
						  if (room.classType == "Class E") {
							  o.bedsForClassType = room.bedsForClassType;
							  o.classType = room.classType;
							  o.numberOfFloors = room.numberOfFloors;
							  o.price = room.price;
							  o.numberOfBeds = multiply;
							  o.floorNumber = data.floorNumber;
							  o.isAvailable = false;
							  o.wardNumber = "E"+"F"+data.floorNumber+"W"+j+"B"+i;
							  o.customWardNumber = data.customWardNumber;
							  $scope.floor.roomManagement.push(o);
							  o = {};
						  }
						  
						  if (room.classType == "Class F") {
							  o.bedsForClassType = room.bedsForClassType;
							  o.classType = room.classType;
							  o.numberOfFloors = room.numberOfFloors;
							  o.price = room.price;
							  o.numberOfBeds = multiply;
							  o.floorNumber = data.floorNumber;
							  o.isAvailable = false;
							  o.wardNumber = "F"+"F"+data.floorNumber+"W"+j+"B"+i;
							  o.customWardNumber = data.customWardNumber;
							  $scope.floor.roomManagement.push(o);
							  o = {};
						  }
						  
						  if (room.classType == "Class G") {
							  o.bedsForClassType = room.bedsForClassType;
							  o.classType = room.classType;
							  o.numberOfFloors = room.numberOfFloors;
							  o.price = room.price;
							  o.numberOfBeds = multiply;
							  o.floorNumber = data.floorNumber;
							  o.isAvailable = false;
							  o.wardNumber = "G"+"F"+data.floorNumber+"W"+j+"B"+i;
							  o.customWardNumber = data.customWardNumber;
							  $scope.floor.roomManagement.push(o);
							  o = {};
						  }
						  
						  if (room.classType == "Class H") {
							  o.bedsForClassType = room.bedsForClassType;
							  o.classType = room.classType;
							  o.numberOfFloors = room.numberOfFloors;
							  o.price = room.price;
							  o.numberOfBeds = multiply;
							  o.floorNumber = data.floorNumber;
							  o.isAvailable = false;
							  o.wardNumber = "H"+"F"+data.floorNumber+"W"+j+"B"+i;
							  o.customWardNumber = data.customWardNumber;
							  $scope.floor.roomManagement.push(o);
							  o = {};
						  }
				  }
			  }
//			  var obj = {};
//
//			  obj.bedsForClassType = room.bedsForClassType;
//			  obj.classType = room.classType;
//			  obj.numberOfFloors = add;
//			  obj.price = room.price;
//			  obj.numberOfBeds = multiply;
//			  obj.floorNumber = data.floorNumber;
//			  if (room.classType == "Class A") {
//				  obj.wardNumber = "A"+"F"+data.floorNumber+"W"+add;
//				  obj.customWardNumber = data.customWardNumber;
//			  }
//			  if (room.classType == "Class B") {
//				  
//				  obj.wardNumber = "B"+"F"+data.floorNumber+"W"+add;
//				  obj.customWardNumber = data.customWardNumber;
//			  }
//			  if (room.classType == "Class C") {
//				  obj.wardNumber = "C"+"F"+data.floorNumber+"W"+add;
//				  obj.customWardNumber = data.customWardNumber;
//			  }
//			  if (room.classType == "Class D") {
//				  obj.wardNumber = "D"+"F"+data.floorNumber+"W"+add;
//				  obj.customWardNumber = data.customWardNumber;
//			  }
//			  if (room.classType == "Class E") {
//				  obj.wardNumber = "E"+"F"+data.floorNumber+"W"+add;
//				  obj.customWardNumber = data.customWardNumber;
//			  }
//			  if (room.classType == "Class F") {
//				  obj.wardNumber = "F"+"F"+data.floorNumber+"B"+add;
//				  obj.customWardNumber = data.customWardNumber;
//			  }
//			  
//			  $scope.floor.roomManagement.push(obj);
//			  obj = {};
//			  add++;
				  add++;	  
				  
		  });
		  
		  
		  console.log("2",$scope.floor);
//		  
	    	$http.post('addRoomDetails', JSON.stringify($scope.floor)).success(function(data) {
	    		console.log(data);
	    	});
	  };
	  
});