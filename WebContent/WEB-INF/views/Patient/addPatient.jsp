<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Patient</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Patient/patientController.js" ></script>
</head>
<body ng-controller="patientCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>

    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Patient Registration</h1>
            <form class="centered_form" name="addPatientForm" data-ng-submit="save(addPatientForm, patient, format)">
               <div class="row">
               		<div class="form-group col-md-4">
				    <label>ID:</label>
				    <input type="text" name="" class="form-control" placeholder="Enter ID">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Patient Name:</label>
				    <input type="text" name="" data-ng-model="patient.patientName" class="form-control" placeholder="Enter Patient Name">
				  </div>
               </div>

			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>D.O.B:</label>
				    <input type="text" name="" data-ng-model="format" class="form-control">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Age:</label>
				    <input type="text" name="" data-ng-model="patient.patientAge" class="form-control" placeholder="Enter Age">
				  </div>
			  </div>

			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>Gender:</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="patient.patientGender" name="gender" value="Female">Female</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="patient.patientGender" name="gender" value="Male">Male</label>
				  </div>

				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Email ID:</label>
				    <input type="email" class="form-control" data-ng-model="patient.email" placeholder="Enter Email ID">
				  </div>
			  </div>
			  
			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Mobile/Phone No:</label>
				    <input type="text" name="" class="form-control" data-ng-model="patient.phoneNumber" placeholder="Enter Mobile/Phone number">
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Blood Group:</label>
				    <input type="text" name="" class="form-control" data-ng-model="patient.bloodGroup" placeholder="Blood Group">
				  </div>	
			  </div>

			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>Patient Type:</label>
				    <select class="form-control" data-ng-model="patient.patientType">
					    <option>Inpatient</option>
					    <option>Outpatient</option>
					  </select>
				  </div>

				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Parent/Guardian Name:</label>
				    <input type="text" name="" class="form-control" data-ng-model="patient.patientGuardian" placeholder="Enter Parent/Guardian Name">
				  </div>
			  </div>

			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Address:</label>
				    <textarea class="form-control" rows="5" data-ng-model="patient.patientAddress" placeholder="Enter Your Address"></textarea>
				  </div>
			  </div>
			  
			  <div data-ng-if="patient.patientType == 'Inpatient'">
				<label>Select Room:</label>
			  <div class="row">
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

				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Enter Floor:</label>
				    <input type="text" name="" class="form-control" data-ng-model="floor" placeholder="Enter Floor Number">
				  </div>
				  
				   <div class="col-md-4">
                    <button type="button" data-ng-click="listRoomByFilter(classType, floor)" class="btn btn-default col-md-4">Search Ward</button>  
                </div>       
			  </div>
			  
			  <div data-ng-show = "roomList != null">
			    <table class="table centered_form table-bordered table-responsive">
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
                <tbody data-ng-repeat="room in rooms">
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
			</div>
			  <div class="row">
                <div class="col-md-4">
                    <button type="submit" class="btn btn-default col-md-4">Submit</button>  
                </div>       
              </div>

			</form>
        </div>
    </div>
    <footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>
    </div>
</body>
</html>