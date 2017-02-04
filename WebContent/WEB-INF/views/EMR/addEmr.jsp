<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Patient</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/EMR/emrController.js" ></script>
</head>
<body ng-controller="emrCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
      <div class="right_block">
		<h1 class="heading">EMR</h1>
		<form class="centered_form"  >
			<div class="row">
			 <div class="col-md-4">
			  <div class="form-group" data-ng-if="patientList != null" data-ng-repeat="patient in patientList">
			    <label>Patient Name:</label>
			    <input type="text" name="" data-ng-model="patient.patientName" class="form-control" placeholder="Enter Patient Name" disabled>
			  </div>

           		<div class="form-group" data-ng-if="patient != null">
			    <label>Patient Name:</label>
			    <input type="text" name="" data-ng-model="patient.patientName" class="form-control" placeholder="Enter Patient Name" disabled>
				</div>
			  </div>
			  <div class="col-md-4 col-md-offset-1">	  
               	<div class="form-group" data-ng-repeat="user in userList">
				    <label>Doctor Name:</label>
				    <input type="text" name="" data-ng-model="user.userName" class="form-control" placeholder="Enter Doctor Name" disabled>
				  </div>
			  </div>
			  </div>

			  <div class="row">	  
			  	<div class="col-md-4">
				 <div class="form-group">
               		<label>Medical Report type:</label>
				     <select class="form-control"  data-ng-model="emr.medicalReport" >
							<option data-ng-repeat="report in reportType">{{report.name}}</option>
					</select>
					</div>
				 </div>

				 <div class="col-md-4 col-md-offset-1">	
				  	<div class="form-group">
					    <textarea class="form-control" type="text" rows="5" data-ng-model="emr.description" placeholder="Enter Patient History" ></textarea>
					  </div>
				  </div>
			  </div>

				
			   <div class="row">
					<div class="col-md-4">
						<button type="submit" data-ng-click="saveEmrReport(emr)" class="btn btn-default col-md-4">Submit</button>
					</div>
				</div>
		</form>
	</div>
	<footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>	
</body>
</html>