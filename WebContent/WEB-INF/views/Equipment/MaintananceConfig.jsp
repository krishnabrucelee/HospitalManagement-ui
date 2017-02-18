<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maintanance</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-1.11.1.js"></script>
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-ui-1.11.1.js"></script>
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Equipment/equipmentController.js" ></script> 

</head>
<body ng-controller="equipmentCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">
         <h1 class="heading">Add Maintanance</h1>
         
           <form class="form-horizontal">
  
  <div class="form-group">
    <label class="control-label col-sm-3" >MaintanaceType:</label>
    <div class="col-sm-4">
      <input type="text" ng-model="maintanancecfg.maintanaceType" class="form-control"  >
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" >MaintanaceName:</label>
    <div class="col-sm-4">
      <input type="text" ng-model="maintanancecfg.maintanaceName" class="form-control"  >
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" >Days:</label>
    <div class="col-sm-4">
      <input type="text" ng-model="maintanancecfg.periodDays" class="form-control"  >
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" >Number:</label>
    <div class="col-sm-4">
      <input type="text" ng-model="maintanancecfg.periodNumbers" class="form-control"  >
    </div>
  </div>
  
   <div class="form-group">
    <label class="control-label col-sm-3" >Periodic Types:</label>
    <select ng-model="maintanancecfg.periodicType" class="form-control ">
						        <option value="DAILY">DAILY</option>
						         <option value="WEEKLY">WEEKLY</option>
						          <option value="MONTHLY">MONTHLY</option>
						           <option value="MONTHLYTWICE">MONTHLYTWICE</option>
						            <option value="HALFYEARLY">HALFYEARLY</option>
						             <option value="YEARLY">YEARLY</option>
						     </select>
   
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-6">
      <button type="submit"  class="btn btn-primary" ng-click="addMaintanancee(maintanancecfg)">AddMaintanance</button>
    </div>
  </div>
</form>
        </div>
        </div>
        
        <div>
      <footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>
    </div>
</body>
</html>