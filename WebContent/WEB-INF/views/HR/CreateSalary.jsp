<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CreateSalary</title>
<!--<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
-->

<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/HR/hrController.js" ></script> 
</head>
<body ng-controller="hrCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    
      <div class="clear">
        <div class="right_block">
         <h1 class="heading">Create Monthly Salary</h1>
    
           <div class="container">
			 
			    <div class="form-group col-md-3">
				    <label> To Date: {{salarydetails.month}}</label>
				       <p class="input-group">
							    <input type="text" class="form-control"  uib-datepicker-popup="dd-MM-yyyy" data-ng-model="salarydetails.month" is-open="myDateOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="myDateOpen=!myDateOpen"><i class="fa fa-calendar"></i></button>
							    </span>
					  </p>
				  </div>
			    
			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10">
			        <button type="submit" class="btn btn-primary" ng-click="getSalaryDetails(salarydetails)">CreateSalary</button>
			      </div>
			    </div>
			  </form>
          </div>
         </div>
        </div>
</body>
</html>