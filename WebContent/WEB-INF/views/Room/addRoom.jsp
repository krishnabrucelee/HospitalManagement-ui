<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Room</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Room/roomController.js" ></script>
</head>
<body ng-controller="roomCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>

<form>
			  		<div class="form-group col-md-4">
				    <label>Room Class Type:</label>
				    <select class="form-control" data-ng-model="room.classType">
					    <option>Class A</option>
					     <option>Class B</option>
					      <option>Class C</option>
					       <option>Class D</option>
					        <option>Class E</option>
					  </select>
				  </div>
				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Number of Beds For Class Type:</label>
				    <input type="number" name="" class="form-control" data-ng-model="room.bedsForClassType" placeholder="Enter Parent/Guardian Name">
				  </div>
				 <div class="form-group col-md-4 col-md-offset-2">
				    <label>Price:</label>
				    <input type="text" name="" class="form-control" data-ng-model="room.price" placeholder="Enter Parent/Guardian Name">
				  </div>
				 <div class="form-group col-md-4 col-md-offset-2">
				    <label>Number of Floors:</label>
				    <input type="text" name="" class="form-control" data-ng-model="room.numberOfFloors" placeholder="Enter Parent/Guardian Name">
				  </div>
			<div class="row">
                <div class="col-md-4">
                    <button type="button" data-ng-click="addRoomTypes(room)" class="btn btn-default col-md-4">Proceed to Bed Configuration</button>  
                </div>       
              </div>  
				  {{proceedToBedConfiguration}}
			<div data-ng-if="proceedToBedConfiguration != null">	
			<div class="text-center">
   						<button class="addfields" ng-click="addRoomDetails()">Add Floors</button>
					</div>  
				<div data-ng-repeat="floor in newFloor">
					<fieldset  data-ng-repeat="roomType in roomTypeDetails">
						<label>Class Type:</label>
     						<input type="text" data-ng-model="proceedToBedConfiguration.classType" name="" disabled>
     					<label>Number of Beds in each ward:</label>
     					 	<input type="number" ng-model="roomType.numberOfBeds" name="" placeholder="Number of Beds">
     					 <label>Custom Ward number:</label>
     					 	<input type="text" ng-model="roomType.customWardNumber" name="" placeholder="Ward number">
     					 <label>Select Floor:</label>{{proceedToBedConfiguration.numberOfFloors}}
   					<select ng-model="roomType.floorNumber">
								<option ng-repeat="i in getNumber(proceedToBedConfiguration.numberOfFloors) track by $index">{{$index+1}}</option>
							</select>
   					</fieldset>
   					{{roomTypeDetails}}
   					{{roomTypeDetails.length}}
   				</div>
			</div>
		
			<div class="row">
                <div class="col-md-4">
                    <button data-ng-click="saveRoom(proceedToBedConfiguration, roomTypeDetails)">Submit</button>  
                </div>       
              </div>  	
			
	</form>			  
</body>
</html>