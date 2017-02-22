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
<div class="clear">
        <div class="right_block">

            <h1 class="heading">Waiting Listing
                
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Sex</th>
                    <th>Room Type</th>
                    <th>Patient Type</th>
                    <th>Room Book Date</th>
                    <th>Status</th>
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="patient in waitingList">
                  <tr>
                    <td>{{patient.waitingListId}}</td>
                    <td>{{patient.patientName}}</td>
                    <td>{{patient.patientGender}}</td>
                    <td>{{patient.classType}}</td>
                    <td>{{patient.patientType}}</td>
                    <td>{{patient.roomBookDate | date:'dd-MM-yyyy HH:mm:ss'}}</td>
                    <td>{{patient.status}}</td>
                    <td class="dropdown" ><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu" >
                        <li data-ng-if="patient.status != 'Booked'"><a ng-click="changeStatus(patient.classType, false, patient)">Change status</a></li>
                        <li data-ng-if="patient.status == 'Booked'"><a ng-click="viewPatient(patient.patientId)">View Patient</a></li>
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>
              
              <script type="text/ng-template" id="secondDialog"/>
			<div class="ngdialog-message">
				<h3>Book ward to Patient</h3>
			  <form class="centered_form ">        
			  <div >
				<label>Select Room:</label>
<!-- 			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>Class Type:</label>
				    <select class="form-control" data-ng-model="classType">
						<option>Class A</option>
					     <option>Class B</option>
					      <option>Class C</option>
					       <option>Class D</option>
					        <option>Class E</option>
					  </select>
				  </div>

				   <div class="col-md-4">
                    <button type="button" data-ng-click="listRoomByFilter(classType, false)" class="btn btn-default col-md-4">Search Ward</button>  
                </div>       
			  </div> -->
			  
			  <div >
			    <table data-ng-if = "roomList != null" class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Floor Number</th>
                    <th>Custom Ward Number</th>
                    <th>Number Of Beds</th>
                    <th>Class Type</th>
                    <th>Ward Number</th>
                    <th>Price</th>
                    <th>Available</th>
                    <th>Options</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="room in roomList">
                
                  <tr>
                    <td>{{room.floorNumber}}</td>
                    <td>{{room.customWardNumber}}</td>
                    <td>{{room.numberOfBeds}}</td>
                    <td>{{room.classType}}</td>
                    <td>{{room.wardNumber}}</td>
                    <td>{{room.price}}</td>
                    <td>{{room.isAvailable}}</td>
                    <td><button type="button" data-ng-click="addRoomToPatient(room)" class="btn btn-default col-md-4">Select Room</button> </td>
                   </tr>
                  
                </tbody>
              </table>
			  </div>
			  <div data-ng-if="roomList == ''">
			  	<div class="col-md-4">
			  	<p>Sorry no rooms available!! 
                </div>               
                 
			  </div>
			</div>  
		       <div class="row">
                	  <label></label>
                    <button type="button" class="btn btn-primary col-md-6" ng-click="save()">Add</button>  
                </div>
			   
			</form>
			</div>
		</script>
    </div>
    </div>
    
</body>
</html>