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

            <h1 class="heading">Patient Waiting List</h1>
            
            <form class="centered_form" name="addPatientForm" data-ng-submit="saveWaitingList(patient)">
               <div class="row">
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Patient Name:</label>
				    <input type="text" name="" data-ng-model="patient.patientName" class="form-control" placeholder="Enter Patient Name">
				  </div>
               </div>

			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>D.O.B:</label>
					 <p class="input-group">
                       <input type="text" uib-datepicker-popup="dd-MM-yyyy" class="form-control"  
                       ng-model="patient.patientDob" is-open="isOpen" />
                         <span class="input-group-btn">
                            <button type="button" class="btn btn-default" ng-click="isOpen=!isOpen">
                            <i class="fa fa-calendar"></i></button>
                         </span>
                     </p>        
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
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

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Email ID:</label>
				    <input type="email" class="form-control" data-ng-model="patient.email" placeholder="Enter Email ID">
				  </div>
			  </div>
			  
			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Mobile/Phone No:</label>
				    <input type="text" name="" class="form-control" data-ng-model="patient.phoneNumber" placeholder="Enter Mobile/Phone number">
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-1">
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

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Parent/Guardian Name:</label>
				    <input type="text" name="" class="form-control" data-ng-model="patient.patientGuardian" placeholder="Enter Parent/Guardian Name">
				  </div>
				  
				<div class="form-group col-md-4">
				    <label>Room Class Type:</label>
				    <select class="form-control" data-ng-model="patient.classType">
						<option>Class A</option>
					     <option>Class B</option>
					      <option>Class C</option>
					       <option>Class D</option>
					        <option>Class E</option>
					  </select>
				  </div>
				 <div class="form-group col-md-4">
				    <label>Status:</label>
				    <select class="form-control" data-ng-model="patient.status">
						<option>On Process</option>
					     <option>Booked</option>
					  </select>
				  </div> 
				  <div class="form-group col-md-4">
				    <label>Date of Room Book:</label>
					<p class="input-group">
                       <input type="text" uib-datepicker-popup="dd-MM-yyyy" class="form-control"  
                       ng-model="patient.roomBookDate" is-open="isOpens" />
                         <span class="input-group-btn">
                            <button type="button" class="btn btn-default" ng-click="isOpens=!isOpens">
                            <i class="fa fa-calendar"></i></button>
                         </span>
                     </p> 
				  </div>
			  </div>

			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Address:</label>
				    <textarea class="form-control" rows="5" data-ng-model="patient.patientAddress" placeholder="Enter Your Address"></textarea>
				  </div>
				  
				  <div class="form-group col-md-4">
				    <label>Scheme of Patient:</label>
				    <select class="form-control" data-ng-model="patient.schemeType">
					    <option>Individual Patient</option>
					    <option>Corporate patient</option>
					    <option>National Health scheme patient</option>
					  </select>
				  </div>
				  <div class="form-group col-md-4">
                            <label>Department :</label>
                        <select class="form-control" data-ng-model="patient.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
					</div>
				  <div data-ng-if="patient.schemeType != null"> 
				  <div class="form-group col-md-4">
				    <label>Scheme description:</label>
				    <textarea class="form-control" rows="5" data-ng-model="patient.schemeDescription" placeholder="Enter Scheme description"></textarea>
				  </div>
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
</body>
</html>