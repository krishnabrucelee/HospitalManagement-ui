<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave</title>
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
         <h1 class="heading">Leave
           
         		<div class="dropdown pull-right">
                  <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Settings
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a  data-ng-click="setFinancialYear()">Set Financial Year</a></li>
                    <li><a  data-ng-click="addHoliday()">Add Holiday</a></li>
                    <li><a  data-ng-click="addLeave()">Add Leave</a></li>
                  </ul>
                </div>                           
         </h1>
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
       
         
      <form>    
         <div class="row">          
            <div class="col-xs-3">
                <select class="form-control"  ng-model="leavebalance.employee_id" integer>
                                <option selected>--- Select EmployeId ---</option>
                                <option ng-repeat="employe in LeaveBalanceEmp"  value="{{employe}}" >{{employe}}</option>                               
                             </select>
            </div>
            <div class="col-xs-3">
              	<button type="submit" class="btn btn-primary" ng-click="getLeaveBalance(leavebalance)">GetLeavebalance</button>
            </div>
         </div>
        <br>      
      </form>
      
      <form>    
         <div class="row">          
                <!-- <div class="col-xs-3">
                         <select class="form-control"  ng-model="leaverequest.employee_id" integer>
                                <option selected>--- Select EmployeId ---</option>
                                <option ng-repeat="employe in LeaveBalanceEmp"  value="{{employe}}" >{{employe}}</option>                               
                             </select>
                    </div> -->
            
                
               		<div class="form-group col-md-2">
				    <label> From date:</label>
				    <p class="input-group">
							    <input type="text" class="form-control"  uib-datepicker-popup="dd-MM-yyyy" ng-model="leaverequest.FromDate" is-open="isOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
							    </span>
					</p>
				  </div>
				
				 
				  
               		<div class="form-group col-md-2">
				    <label> To Date:</label>
				       <p class="input-group">
							    <input type="text" class="form-control"  uib-datepicker-popup="dd-MM-yyyy" data-ng-model="leaverequest.ToDate" is-open="myDateOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="myDateOpen=!myDateOpen"><i class="fa fa-calendar"></i></button>
							    </span>
					  </p>
				  </div>
				 
           	
           	
            <div class="col-xs-3">
              	<button type="submit" class="btn btn-primary" ng-click="getLeaveRequest(leaverequest)">GetLeaveRequest</button>
            </div>
        
        <br>      
      </form>
            
               
             <script type="text/ng-template" id="setFinancialYear"/>
               <!--  <div class=""> -->
               
                <div class="modal-header">
                    <h3 class="modal-title">Set Financial Year</h3>
                </div>
                    <div class="modal-body">
                  <form class="centered_form ">
                    <div class="form-group row">
                        <label for="name" class="col-md-3"> From Month</label>
                        <div class="col-md-4">
                            <select class="form-control" ng-model="financial.frommonth" integer>
                                <option selected>--- Select Month ---</option>
                                <option value="1">Jan</option>
                                <option value="2">Feb</option>
                                <option value="3">march</option>
                                <option value="4">april</option>
                                <option value="5">may</option>
                                <option value="6">june</option>
                                <option value="7">july</option>
                                <option value="8">aug</option>
                                <option value="9">sep</option>
                                <option value="10">oct</option>
                                <option value="11">nov</option>
                                <option value="12">dec</option>
                              </select>
                        </div>
                        <div class="col-md-3">
                            <input type="text" class="form-control" ng-model="financial.fromyear" placeholder="Enter year (yyyy)" integer>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="comment" class="col-md-3">To Month</label>
                        <div class="col-md-4">
                            <select class="form-control" ng-model="financial.tomonth" integer>
                                <option selected>--- Select Month ---</option>
                                <option value="1">Jan</option>
                                <option value="2">Feb</option>
                                <option value="3">march</option>
                                <option value="4">april</option>
                                <option value="5">may</option>
                                <option value="6">june</option>
                                <option value="7">july</option>
                                <option value="8">aug</option>
                                <option value="9">sep</option>
                                <option value="10">oct</option>
                                <option value="11">nov</option>
                                <option value="12">dec</option>
                              </select>
                        </div>
                        <div class="col-md-3">
                            <input type="text" class="form-control" placeholder="Enter year (yyyy)" ng-model="financial.toyear" integer>
                        </div>
                        
                    </div>
                  </form>
                  </div>
              <div class="modal-footer">
                <button class="btn btn-primary" type="button" ng-click="addFinancialYear(financial)">SetFinancial Year</button>
                <button class="btn btn-warning" type="button" >Cancel</button>
            </div>
            <!-- <div>    -->          
        </script>
        
        <script type="text/ng-template" id="addLeave"/>
			<div class="">
			
				<div class="modal-header">
		            <h3 class="modal-title">Add Leave</h3>
		        </div>
	        		<div class="modal-body">
				  <form class="">
				<div class="form-group row">
					<h3 class="text-center">Add leave <img src="images/close.png" class="leave_close_icon add_leave"></h3>
					<br>
					<label for="name" class="col-md-3">Leave Name</label>
					<div class="col-md-9">
						<input type="text" class="form-control" ng-model="leave.leave_name">
					</div>
				</div>
				<div class="form-group row">
					<label for="comment" class="col-md-3">Allowed Days</label>
					<div class="col-md-9">
						<textarea class="form-control" rows="5" ng-model="leave.allowed_days" integer></textarea>
					</div>
				</div>
				<div class="form-group row">
					<label for="category" class="col-md-3">Leave Days Type</label>
					<div class="col-md-9">
						<select class="form-control"  ng-model="leave.leave_days_type">
									<option value="yearly">Yearly</option>
									<option value="halfyearly">Half Yearly</option>
									<option value="quarterly">Quarterly</option>
									<option value="monthly">Monthly</option>
									<option value="monthly">LOP Leave</option>
								</select>
					</div>
				</div>
				<div class="form-group row">
				<div>
					<label class="col-md-3"> Pro Leave type</label>
					<div class="col-md-6">
						<input type="radio" id="one" value="yes" ng-model="leave.pro_leave">
						<label for="one">Yes</label>

						<input type="radio" id="two" value="no" ng-model="leave.pro_leave">
						<label for="two">No</label>
					</div>
				</div>
					
				</div>
			</form>
				  </div>

			  <div class="modal-footer">
	            <button class="btn btn-primary" type="button" ng-click="saveLeave(leave)">OK</button>
	            <button class="btn btn-warning" type="button" ng-click="">Cancel</button>
	        </div>

			<div>	
			
		</script>
        
       <script type="text/ng-template" id="addHoliday"/>
			<div class="">
			
				<div class="modal-header">
		            <h3 class="modal-title">Add Holiday</h3>
		        </div>
	        		<div class="modal-body">
	        			

						<!--Option setting-->

						<div class="row">

							<label class="col-md-12"> Choose the leave type </label>
							
							<div class="col-md-12">
								<div class="col-md-6">
									<label for="one">
									<input type="radio" id="one" value="public holiday" ng-model="holiday.leave_type">
									public holiday</label>
								</div>
								<div class="col-md-6">
									<label for="two">
									<input type="radio" id="two" value="weekoff" ng-model="holiday.leave_type">
									Week off</label>
								</div>
							</div>

						</div>
						<div >
							<h3>public holiday</h3>
							<div class="form-group row">
								<label for="name" class="col-md-3">Leave Name</label>
								<div class="col-md-6">
									<input type="text" class="form-control" ng-model="holiday.leave_name">
								</div>
							</div>
							<div class="form-group row">
								<label for="name" class="col-md-3">Date</label>
								<div class="col-md-6">
									<p class="input-group">
										    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm"  ng-model="holiday.daate" is-open="isOpen" datepicker-options="datePickerOption" />
										    <span class="input-group-btn">
										        <button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
										    </span>
								</p>
								</div>
							</div>

							<div class="form-group row">
								<label for="name" class="col-md-3">Number of Days</label>
								<div class="col-md-6">
									<input type="text" class="form-control" ng-model="holiday.numberofDays" integer>
								</div>
							</div>

							<div class="form-group row">
								<label for="name" class="col-md-3">Day Name</label>
								<div class="col-md-6">
									<input type="text" class="form-control" ng-model="holiday.day_name">
								</div>
							</div>

							<div class="form-group row">
								<label for="name" class="col-md-3">Day Value</label>
								<div class="col-md-6">
									<input type="text" class="form-control" ng-model="holiday.day_value" integer>
								</div>
							</div>

						</div>
					
	        		</div>

			  <div class="modal-footer">
	            <button class="btn btn-primary" type="button" ng-click="saveHoliday(holiday)">SaveHoliday</button>
	            <button class="btn btn-warning" type="button" ng-click=" ">Cancel</button>
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
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody>
                  <tr ng-repeat="leaves in leaveLists">
                  
                    <td>{{leaves.leave_name}}</td>
                    <td>{{leaves.allowed_days}}</td>
                    <td>{{leaves.leave_days_type}}</td>
                    <td>{{leaves.pro_leave}}</td>
                     <td>{{leaves.financialyear_id}}</td>
                    <td class="dropdown"><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu">
                      <li> <button class="btn btn-danger col-md-8" type="button" ng-click="deleteLeave(leaves,$index)">Delete</button>
                      </li>                    
                      </ul>
                    </td>
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
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody>
                  <tr ng-repeat="holiday in holidaylist">
                  
                    <td>{{holiday.leave_type}}</td>
                    <td>{{holiday.leave_name}}</td>
                    <td>{{holiday.day_name}}</td>
                    <td>{{holiday.daate | date: 'dd-MM-yyyy'}}</td>
                     <td>{{holiday.numberofDays}}</td>
                    <td class="dropdown"><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu">
                      <li> <button class="btn btn-primary" type="button" ng-click="deleteHoliday(holiday,$index)">Delete</button>
                      </li>
                        <li><a href="#">View</a></li>
                       
                      </ul>
                    </td>
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
                    <th>Actions</th>
                    <!--<th width="20">Options</th>-->
                  </tr>
                </thead>
                <tbody>
                  <tr ng-repeat="request in LeaveRequest">
                    <td>{{request.employee_id}}</td>
                    <td>{{request.leaveConfigurationId}}</td>
                    <td>{{request.fromDate | date: 'dd-MM-yyyy'}}</td>
                    <td>{{request.ToDate | date: 'dd-MM-yyyy'}}</td>
                    <td>{{request.totaldays}}</td>
                    <td>{{request.status}}</td>
                   
                    <td class="dropdown"><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu">
                       <li><button class="btn btn-success col sm-3" ng-click="showModel(request,$index)">Approve</button></li>
                       <!--<li><button class="btn btn-success col sm-3" data-ng-click="leaveAction(request,$index)">Approve</button></li>-->
                        <li><button  class="btn btn-danger col sm-3" ng-click="rejectLeave(request,$index)">Reject</button></li>
                      
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>
              
               <script type="text/ng-template" id="leaveAction"/>
			<div class="">
			
				<div class="modal-header">
		            <h3 class="modal-title">Approve Leave</h3>
		        </div>
	        		<div class="modal-body">
				  <form class="">
				<div class="form-group row">
					<!-- <h3 class="text-center">Approve leave <img src="images/close.png" class="leave_close_icon add_leave"></h3> -->
					<br>
					<label for="name" class="col-md-3">Emp Id</label>
					<div class="col-md-9">
						<input type="text" class="form-control" ng-model="request.employee_id">
					</div>
				</div>
				<div class="form-group row">
					<label for="comment" class="col-md-3">Applied Days</label>
					<div class="col-md-9">
						<input type="text" class="form-control" />
					</div>
				</div>
				<div class="form-group row">
					<label for="category" class="col-md-3">Leave Days Type</label>
					<div class="col-md-9">
						<select class="form-control"  ng-model="request.status" >
									<option value="approve">Approve</option>									
								</select>
					</div>
				</div>
				<div class="form-group row">
				   
					
				</div>
			</form>
				  </div>

			  <div class="modal-footer">
	            <button class="btn btn-primary" type="button" ng-click="approveLeaveData(request)">Approve</button>
	            <button class="btn btn-warning" type="button" ng-click="rejectLeave(request)">Cancel</button>
	        </div>

			<div>	
			
		</script>
       
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