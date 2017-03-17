<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SalaryConfig</title>
<!-- <link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-1.11.1.js"></script>
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-ui-1.11.1.js"></script> -->
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/HR/hrController.js" ></script> 
</head>
<body ng-controller="hrCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    
      <div class="clear">
        <div class="right_block">
         <h1 class="heading">Salry Config</h1>
         
         
         
           <div class="container">
 
			  <form class="form-horizontal">
			    <div class="form-group">
			      <label class="control-label col-sm-2" for="email">Name:</label>
			      <div class="col-sm-4">
			        <input type="text" class="form-control"  placeholder="Enter name" ng-model="salaryconfig.name">
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="control-label col-sm-2" >Percentage:</label>
			      <div class="col-sm-4">          
			        <input type="text" class="form-control"  placeholder="Enter percentage" ng-model="salaryconfig.percentage">
			      </div>
			    </div>
			    
			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10">
			        <button type="submit" class="btn btn-primary" ng-click="saveSalaryConfig(salaryconfig)">Submit</button>
			      </div>
			    </div>
			  </form>
          </div>
         </div>
        </div>
</body>
</html>