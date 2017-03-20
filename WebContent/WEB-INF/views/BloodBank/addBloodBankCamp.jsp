<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Blood Bank Camp</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/BloodBank/bloodBankController.js" ></script>
</head>
<body ng-controller="bloodCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
<div class="right_block">
		<h1 class="heading">Add Blood Bank Camp</h1>
		<form class="centered_form"  >
			<div class="row">
			 <div class="col-md-4">
			  <div class="form-group">
			    <label>Blood Bank Camp Name:</label>
			    <input type="text" name="" data-ng-model="bloodCamp.bloodBankCampName" class="form-control" placeholder="Enter Patient Name" >
			  </div>

           		<div class="form-group">
			    <label>Blood Bank Camp Address:</label>
			    <input type="text" name="" data-ng-model="bloodCamp.bloodBankCampAddress" class="form-control" placeholder="Enter Patient Name" >
				</div>
			  </div>
			  </div>

			   <div class="row">
					<div class="col-md-4">
						<button type="submit" data-ng-click="saveBloodBankCamp(bloodCamp)" class="btn btn-default col-md-4">Submit</button>
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