<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Radiology</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-1.11.1.js"></script>
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-ui-1.11.1.js"></script>
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Lab/labController.js" ></script> 

</head>
<body ng-controller="labCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">
         <h1 class="heading">Radiology Test</h1>
         	
         	<div class="container">
  <h2>Horizontal form</h2>
  <form class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-3" >Test name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" ng-model="radiologyy.radiologyTestName" placeholder="Enter test name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3" >Description:</label>
      <div class="col-sm-9">    
      
      <textarea rows="4" cols="100"  class="form-control col-md-16" ng-model="radiologyy.testDescription"></textarea>      
        
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-3">
        <button type="submit" class="btn btn-primary" ng-click="addRadiology(radiologyy)">Add Test</button>
      </div>
    </div>
  </form>
</div>
         	
        
          
         </div>
         </div>
</body>
</html>