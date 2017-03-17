<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hike Bonus</title>
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
         <h1 class="heading">Hike Bonus</h1>
    
           <h4 class="sub-heading">Hike Bonus <small>added by Admin</small></h4>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                  
                    <th>Id</th>
                    <th>Name</th>
                    <th>Hike</th>
                    <th>Bonus</th>
                    
                  </tr>
                </thead>
                <tbody>
                  <tr  ng-click="showHike(staff)"  ng-repeat="staff in staffdata">
                  
                    <td>{{staff.staffId}}</td>
                    <td>{{staff.staffName}}</td>
                    <td><button class="btn btn-primary col-md-8" type="button" ng-click="showHike(staff)">Hike</button></td>
                    <td><button class="btn btn-primary col-md-8" type="button" ng-click="showBonus()">Bonus</button></td>
                    
                   </tr>
                  
                </tbody>
              </table>
          
          
          <script type="text/ng-template" id="showHike"/>
			<div class="">			
				<div class="modal-header">
		            <h3 class="modal-title">Add Hike</h3>
		        </div>
	        		<div class="modal-body">
				  <form class="">
				<div class="form-group row">
					<h3 class="text-center">Add Hike <img src="images/close.png" class="leave_close_icon add_leave"></h3>
					<br>
					
					<label for="name" class="col-md-3">Percentage</label>
					<div class="col-md-9">
						<input type="text" class="form-control" ng-model="hike.percentage" integer>
					</div>
				</div>
				<div class="form-group row">
					<label for="comment" class="col-md-3">StaffId</label>
					<div class="col-md-9">
					<tr  ng-repeat="staff in staffdata">
					<td>
					<input type="text" class="form-control" ng-model="staff.staffId" integer>
					</td></tr>						
					</div>
				</div>	
				<div class="form-group row">
					<label for="comment" class="col-md-3">Amount</label>
					<div class="col-md-9">
					<input type="text" class="form-control" ng-model="hike.amount" integer>						
					</div>
				</div>		
			</form>
				  </div>
			  <div class="modal-footer">
	            <button class="btn btn-primary" type="button" ng-click="saveHike(hike, staff)">Add Hike</button>	           
	        </div>
			<div>				
		</script>
		
		 <script type="text/ng-template" id="showBonus"/>
			<div class="">			
				<div class="modal-header">
		            <h3 class="modal-title">Add Bonus</h3>
		        </div>
	        		<div class="modal-body">
				  <form class="">
				<div class="form-group row">
					<h3 class="text-center">Add Bonus <img src="images/close.png" class="leave_close_icon add_leave"></h3>
					<br>
					<label for="name" class="col-md-3">Amount</label>
					<div class="col-md-9">
						<input type="text" class="form-control" ng-model="bonus.amount" integer>
					</div>
				</div>
				<div class="form-group row">
					<label for="comment" class="col-md-3">StaffId</label>
					<div class="col-md-9">
					<tr  ng-repeat="staff in staffdata">
					<td>
					<input type="text" class="form-control" ng-model="staff.staffId" integer>
					</td></tr>						
					</div>
				</div>	
				<div class="form-group row">
					<label for="comment" class="col-md-3">Purpose</label>
					<div class="col-md-9">
					<input type="text" class="form-control" ng-model="bonus.purpose" >						
					</div>
				</div>	
				<div class="form-group col-md-3">
				    <label>  Date:</label>
				       <p class="input-group">
							    <input type="text" class="form-control"  uib-datepicker-popup="dd-MM-yyyy" data-ng-model="bonus.applicableDate" is-open="myDateOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="myDateOpen=!myDateOpen"><i class="fa fa-calendar"></i></button>
							    </span>
					  </p>
				  </div>	
			</form>
				  </div>
			  <div class="modal-footer">
	            <button class="btn btn-primary" type="button" ng-click="saveBonus(bonus,staff)">Add Bonus</button>	           
	        </div>
			<div>				
		</script>
          
         </div>
        </div>
</body>
</html>