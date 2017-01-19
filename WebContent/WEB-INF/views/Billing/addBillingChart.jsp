<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Appointment</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Billing/billingController.js" ></script>
</head>
<body ng-controller="billingCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>

<div class="clear">
        <div class="right_block">

            <h1 class="heading">Billing Chart Registration</h1>
            <form class="centered_form" name="addBillingForm" data-ng-submit="saveBillingChart(billing)">
               <div class="row">

				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Modules:</label>
				     	<select class="form-control" data-ng-model="billing.moduleService" >
								<option  data-ng-repeat="modules in moduleList" >{{modules.moduleName}}</option>
						</select>
						
				  </div>
				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Module Service:</label>
				     	<select class="form-control" data-ng-model="billing.moduleService" >
								<option  data-ng-repeat="modules in moduleList" >{{modules.moduleName}}</option>
						</select>
						
				  </div>
               </div>

			  	<div class="row">
				    <label>Price:</label>
				    <input type="text" name="" data-ng-model="billing.price" class="form-control" placeholder="Enter Price">
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