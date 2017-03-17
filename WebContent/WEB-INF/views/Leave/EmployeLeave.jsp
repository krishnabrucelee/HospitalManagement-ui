<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Action</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-1.11.1.js"></script>
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-ui-1.11.1.js"></script>
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Leave/leaveController.js" ></script> 
<script type="text/javascript">
</script>
</head>
<body ng-controller="leaveCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    
     <div class="clear">
        <div class="right_block">
         <h1 class="heading">LeaveAction</h1>
         
           <div class="pull-right">
	        	<button type="button" class="btn btn-default" data-ng-click="leaveRequest()">Leave Request</button>
	        </div>
           <!--<div class="dropdown pull-right">
                  <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Settings
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">               
                   <button type="button" class="btn btn-default" data-ng-click="leaveRequest()">Leave Request</button>
                  </ul>
                </div>-->
                 <div class="container">
            <div class="row" >           
            <form class="form-inline">
               <div class="form-group">
               <label class="control label" >Holiday Type</label>          
						<select class="form-control" ng-model="holiday.leave_type">
                                <option selected>--- Select Type ---</option>
                                <option value="public holiday">public holiday</option>
                                <option value="weekoff">Weekoff</option>
                             </select>
				</div>							
				<button type="submit" class="btn btn-primary" ng-click="getHolidays(holiday)">Get HolidaysTypes</button>
            </form>             
            </div>
         </div>
                
                <script type="text/ng-template" id="leaveRequest"/>
			<div class="">
			
				<div class="modal-header">
		            <h3 class="modal-title">Leave Request Form</h3>
		        </div>
	        		<div class="modal-body">
				  <form class="centered_form ">
				  
							
							<div class="form-group row">				  	
								<label for="category" class="col-md-3">Leave Id</label>
								<div class="col-md-9">
									<select class="form-control" ng-model="leaverequest.leaveconfigid" integer>
										<option  ng-repeat="leaves in leaveLists"  value="{{leaves.id}}" >{{leaves.leave_name}}</option>
									</select>
								</div>
							</div>
				   
				  	   <div class="form-group row">				  	
								<label for="category" class="col-md-3">Financial Year id</label>
								<div class="col-md-9">
									<select class="form-control" ng-model="leaverequest.financialyearid" integer>
										<option ng-repeat="leaves in leaveLists" value="{{leaves.financialyear_id}}" >{{leaves.financialyear_id}}</option>
									</select>
								</div>
							</div>  
							<div class="form-group row">
								<label for="name" class="col-md-3">From Date</label>
								<div class="col-md-9">
									<input type="text" class="form-control" ng-model="leaverequest.From_Date">
								</div>
							</div>
							<div class="form-group row">
								<label for="name" class="col-md-3">To Date</label>
								<div class="col-md-9">
									<input type="text" class="form-control" ng-model="leaverequest.To_Date">
								</div>
							</div>
							<div class="form-group row">
								<label for="name" class="col-md-3">Number Of Days</label>
								<div class="col-md-9">
									<input type="text" class="form-control" ng-model="leaverequest.numberofdays" integer>
								</div>
							</div>
							<div class="form-group row">
								<label for="name" class="col-md-3">Reason</label>
								<div class="col-md-9">
									<input type="text" class="form-control" ng-model="leaverequest.Reason">
								</div>
							</div>
				  </form>
				  </div>
			  <div class="modal-footer">
	            <button class="btn btn-primary" type="button" ng-click="saveLeaveRequest(leaverequest)">Request Leave</button>
	            <button class="btn btn-warning" type="button" ng-click="">Cancel</button>
	        </div>
			<div>				
		</script>
		
		<h4 class="sub-heading">Leave List <small>added by Admin</small></h4>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                  
                    <th>Leave Name</th>
                    <th>Allowed Days</th>
                    <th>Leave Type</th>
                    <th>Pro Leave</th>
                      <th>Financialyear Id</th>
                   
                  </tr>
                </thead>
                <tbody>
                  <tr ng-repeat="leaves in leaveLists">
                  
                    <td>{{leaves.leave_name}}</td>
                    <td>{{leaves.allowed_days}}</td>
                    <td>{{leaves.leave_days_type}}</td>
                    <td>{{leaves.pro_leave}}</td>
                     <td>{{leaves.financialyear_id}}</td>
                 
                   </tr>
                  
                </tbody>
              </table>
              
              <h4 class="sub-heading">Holidays</h4>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                  
                    <th>Holiday Type</th>
                    <th>Name</th>
                    <th>Day name</th>
                    <th>Date</th>
                      <th>Days</th>
                   
                  </tr>
                </thead>
                <tbody>
                  <tr ng-repeat="holiday in holidaylist">
                  
                    <td>{{holiday.leave_type}}</td>
                    <td>{{holiday.leave_name}}</td>
                    <td>{{holiday.day_name}}</td>
                    <td>{{holiday.daate | date: 'dd-MM-yyyy'}}</td>
                     <td>{{holiday.numberofDays}}</td>
                   
                   </tr>
                  
                </tbody>
              </table>
               
               <h4 class="sub-heading">Employee Leave balance days</h4>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Employee Id</th>
                    <th>LeaveConfigurationId</th>
                    <th>Financialyearid</th>
                    <th>From Date</th>
                    <th>To Date</th>                  
                    <th>Remainingdays</th>
                    
                  </tr>
                </thead>
                <tbody>
                  <tr ng-repeat="fiscal in LeaveBalancelist">
                   <td>{{fiscal.employee_id}}</td>
                    <td>{{fiscal.leaveConfiguration_Id}}</td>
                    <td>{{fiscal.financialyear_id}}</td>
                    <td>{{fiscal.FromDate | date: 'dd-MM-yyyy'}}</td>
                    <td>{{fiscal.ToDate | date: 'dd-MM-yyyy'}}</td>                   
                    <td>{{fiscal.remainingdays}}</td>                  
                   </tr>
                  
                </tbody>
              </table>
              
                 <h4 class="sub-heading">Leave Request <small>by Employee</small></h4>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Employee Name</th>
                    <th>Leave Name</th>
                    <th>From Date</th>
                    <th>To Date</th>
                    <th>Total Days</th>                  
                    <th>Status</th>                   
                  </tr>
                </thead>
                <tbody>
                  <tr ng-repeat="request in LeaveRequest">
                    <td>{{request.employee_id}}</td>
                    <td>{{request.leaveConfigurationId}}</td>
                    <td>{{request.fromDate | date: 'dd-MM-yyyy'}}</td>
                    <td>{{request.toDate | date: 'dd-MM-yyyy'}}</td>
                    <td>{{request.totaldays}}</td>
                    <td>{{request.status}}</td>
                  
                   </tr>
                  
                </tbody>
              </table>
		
         </div>
        </div> 

</body>
</html>