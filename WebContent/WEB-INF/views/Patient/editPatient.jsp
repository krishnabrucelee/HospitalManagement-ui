<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Patient</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Patient/patientController.js" ></script>
</head>
<body ng-controller="patientViewCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>

    <div class="clear">
        <div class="right_block">
			
			<div data-ng-repeat="patient in patientList">
            <h1 class="heading">Edit Patient
			</h1>

            <form class="centered_form" >
                        
               <div class="row">
               		<div class="form-group col-md-4">
				    <label>ID:</label>
				    <input type="text" name="" data-ng-model="patient.patientRefNumber" class="form-control" placeholder="Enter ID" disabled>
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Patient Name:</label>
				    <input type="text" name="" data-ng-model="patient.patientName" class="form-control" placeholder="Enter Patient Name" disabled>
				  </div>
               </div>

			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>D.O.B:</label>
				    <input type="text" name="" data-ng-model="format" class="form-control" disabled>
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Age:</label>
				    <input type="text" name="" data-ng-model="patient.patientAge" class="form-control" placeholder="Enter Age" disabled>
				  </div>
			  </div>

			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>Gender:</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="patient.patientGender" name="gender" value="Female" disabled>Female</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="patient.patientGender" name="gender" value="Male" disabled>Male</label>
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Email ID:</label>
				    <input type="text" class="form-control" data-ng-model="patient.email" placeholder="Enter Email ID" disabled>
				  </div>
			  </div>
			  
			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Mobile/Phone No:</label>
				    <input type="text" name="" class="form-control" data-ng-model="patient.phoneNumber" placeholder="Enter Mobile/Phone number" disabled>
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Blood Group:</label>
				    <input type="text" name="" class="form-control" data-ng-model="patient.bloodGroup" placeholder="Blood Group" disabled>
				  </div>	
			  </div>
				  <div class="form-group col-md-4">
                            <label>Department :</label>
                        <select class="form-control" data-ng-model="patient.department" data-ng-options="department.departmentName for department in departmentList">
							</select>
					</div>
			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>Patient Type:</label>
				    <select class="form-control" data-ng-model="patient.patientType" disabled>
					    <option>Inpatient</option>
					    <option>Outpatient</option>
					  </select>
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Parent/Guardian Name:</label>
				    <input type="text" name="" class="form-control" data-ng-model="patient.patientGuardian" placeholder="Enter Parent/Guardian Name" disabled>
				  </div>
			  </div>

			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Address:</label>
				    <textarea class="form-control" type="text" rows="5" data-ng-model="patient.patientAddress" placeholder="Enter Your Address" disabled></textarea>
				  </div>
			  </div>
            <div class="row">
                <div class="col-md-1">
                    <button type="button" ng-click="editPatientDetails(patient)" class="btn btn-default">Save</button>
                </div>
                <div class="col-md-1">
                    <button type="button" class="btn btn-default">Cancel</button>
                </div>
            </div>
			</form>
			</div>
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