<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pending</title>
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
         <h3 class="heading"> Maintanance Request Pending</h3>
         
          <div class="container">
             <div class="row">
                 
                 <div>
                 
                   <ul>
                 <li ng-repeat="pending in pendingList"><a href="#">{{pending}}</a></li>
             </ul> 
                 
      
                 <p >
                 
                 </p>
                 
                  <p>
                 
                 </p>
                   <p ng-repeat="pending in pendingList">
                     
                   </p>
                 </div>
                 <form>
					  <div class="form-group col-md-2">
					    <label>Update Result</label>
					    <input type="text" class="form-control col-md-3" placeholder="result">
					  </div>
					  <div class="form-group col-md-2">
					    <label>Notes</label>
					    <input type="text" class="form-control col-md-3"  placeholder="Notes">
					  </div>
					  
					  <button type="button" class="btn btn-default" ng-click="updateData()">Save</button>
					  <button type="button" class="btn btn-default" ng-click="closeThisDialog()">Cancel</button>
				</form>
                 <div class="container">
                   <h3>Controller Array value</h3>
                   <p>
                   	  <ul>
                        <li ng-repeat="namee in userList"><a href="#">{{namee}}</a></li>
                     </ul> 
                   </p>
                 </div>
                </div>
                </div>
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