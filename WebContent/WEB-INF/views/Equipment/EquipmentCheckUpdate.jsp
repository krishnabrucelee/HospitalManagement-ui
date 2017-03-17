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
				    <div class="col-md-8 col-md-offset-2">
						<table class="table table-bordered">
						 <thead>
						  	 <th>Request Id</th>
						  	 <th>Machine Id</th>
						  	 <th>Prepare staff</th>
						  	 <th>Update Status</th>
						  </thead>
						
						  
						  <tbody>
						  	 <tr ng-repeat="pending in pendingList">					  	 	
						  	 	<td>{{pending.equipmentMaintanaceRequestId}}</td>
						  	 	<td>{{pending.equipmentdata.equipmentId}}</td>
						  	 	<td>{{pending.assignedStaff.staffId}}</td>
						  	 	
						  	 	<td>
						  	 	<p >							
						  	 			<button  class="btn btn-info" ng-click="openUpdateEditor(pending.equipmentMaintanaceRequestId)">Update Report</button>	
						  	 			<button  class="btn btn-info" ng-click="ViewReport(pending)"> View Report </button>	
						  	 		</p>					  	 		
						  	 	</td>
						  	 </tr>
						  </tbody> 
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<form ng-show="showUpdate" >
						  <div class="form-group">
						    <label for="exampleInputEmail1">Status notes</label>
						    <input type="text" ng-model="updateObj.statusNotes" class="form-control">
						  </div>					  
						  <button type="button" ng-click="update(updateObj)" class="btn btn-primary">Update</button>
						  <button type="button" ng-click="cancelUpdateEditor()" class="btn btn-danger">Cancel</button>
						</form>
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