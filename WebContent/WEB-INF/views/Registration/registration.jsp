<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Registration/registrationController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="registrationCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
		<div class="right_block">
			<h1 class="heading">Registration</h1>
			<div class="Registration">
				<form class="centered_form" id="my-profile" name="staffForm" data-ng-submit="saveStaff(staffForm, staff)"> 
					
					<div class="row">
						<div class="form-group clear">
							<label class="control-label col-sm-3">Name:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="staffName"
									data-ng-model="staff.staffName" placeholder="Enter your name">
							</div>
						</div>
					</div>
					<!-- <div class="form-group">
						<label class="control-label col-sm-3 col-sm-offset-1" for="email">Phone
							No:</label>
						<div class="col-sm-5">
							<input type="email" class="form-control" id="email"
								placeholder="Enter your Phone number">
						</div>
					</div> -->
					<div class="row">
						<div class="form-group clear">
							<label class="control-label col-sm-3" for="pwd">Password:</label>
							<div class="col-sm-4">	
								<input type="password" class="form-control" data-ng-model="staff.password"
									placeholder="Enter password">
							</div>
						</div>
					</div>
					<!-- 					<div class="form-group">
						<label class="control-label col-sm-3 col-sm-offset-1" for="pwd">Re-enter
							Password:</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="pwd"
								placeholder="Enter password">
						</div>
					</div> -->
					<div class="row">
					<div class="form-group clear">
							<label class="control-label col-sm-3" >Profession Type:</label>
							<div class="col-sm-4">
								<select class="form-control" name="professionType" data-ng-model="staff.staffRole">
									<option data-ng-repeat="profession in professionType track by $index">{{profession.name}}</option>
								</select>
							</div>
						</div>
					</div>	
					
				<div data-ng-if=" staff.staffRole == 'Doctor'">
					<div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Email Id:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.doctor.doctorEmail" placeholder="Enter Email Id">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Phone/Mobile Number:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.doctor.doctorPhoneNumber" placeholder="Phone/Mobile Number">
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Age:</label>
	                        <input type="text" name="" data-ng-model="staff.staffAge" class="form-control" placeholder="Enter Age">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Gender:</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Male" value="Male">Male</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Female" value="Female">Female</label>
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>WardNumber:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.staffWardNumber" placeholder="Enter WardNumber">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Work:</label>
							<input type="text" name="" data-ng-model="staff.staffWork" class="form-control" placeholder="Enter Staff Work">
	                    </div>
	                </div>
	                
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Personal Details:</label>
                        <input type="text" data-ng-model="staff.doctor.personalDetails" class="form-control">
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Doctor Type:</label>
                        <select class="form-control" id="sel1" data-ng-model="staff.doctor.doctorType">
                          <option value="INHOUSE">INHOUSE</option>
                          <option value="SURGON">SURGON</option>
                          <option value="CONSULTANT">CONSULTANT</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Depeartment ID:</label>
                        <select class="form-control"  data-ng-model="staff.doctor.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>

                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Date of Joining:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>

<!--                     <div class="form-group col-md-4 col-md-offset-4 col-md-offset-1">
                        <label>D.O.B:</label>
                        <div  class="datetimepicker date_only">
                            <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre>
                            <datetimepicker ng-model="staff.doctor." date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                Use date-ng-click="open($event, opened)" to override date ng-click
                            </datetimepicker>
                        </div>
                    </div> -->
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Appointment Start Time:</label>
                        <div>
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.doctor.appointmentStartTime" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Appointment End time:</label>
                        <div  class="datetimepicker">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.doctor.appointmentEndTime" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Description:</label>
                        <textarea class="form-control" rows="5" data-ng-model="staff.doctor.doctorDescription" placeholder="Enter the Description"> </textarea>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Address:</label>
                        <textarea class="form-control" rows="5" data-ng-model="staff.staffAddress" placeholder="Enter Address"> </textarea>
                    </div>
                </div>
                <div class="row">
                	<!-- <div class="form-group col-md-4">
                	                        <label>Date of Joining:</label>
                	                        <div  class="datetimepicker date_only">
                	                            <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre>
                	                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                	                                Use date-ng-click="open($event, opened)" to override date ng-click
                	                            </datetimepicker>
                	                        </div>
                	                    </div> -->
                	<div class="form-group col-md-4">
						<label class="control-label"  >User
							Type:</label>
						<div class="">
							<select class="form-control" name="userType" data-ng-model="staff.doctor.userType">
								<option>DOMAIN_ADMIN</option>
								<option>DOMAIN_USER</option>
								<option>USER</option>
							</select>
						</div>
					</div>
					<div class="form-group col-md-offset-1 col-md-4">
						<label class="control-label" >Role:</label>
						<div class="">
							<select class="form-control" name="professionType" data-ng-model="staff.doctor.role" data-ng-options="role.roleName for role in roleList" >
								<option value="">Select</option>
							</select>
						</div>
					</div>                    
                </div>
                	        
            		<div data-ng-repeat="role in roleList">
                  		<div class="col-md-12 col-md-12" data-ng-show="staff.doctor.role == role">
								<label class="control-label">Note :</label>
								<ul class="list-group" >
								<p>{{role.roleDescription}}</p>
									<li data-ng-repeat="permissionList in role.permissionList"> {{permissionList.module}} Module --> Can {{permissionList.action}} a {{permissionList.module}}</li>
								</ul>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<button type="submit" class="btn btn-default col-md-4">Submit</button>
						</div>
					</div>

				</div>
	<!-- +============================================================================================+ -->			
			<div data-ng-if=" staff.staffRole == 'Nurse'">
					<div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Email Id:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.nurse.nurseEmail" placeholder="Enter Email Id">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Phone/Mobile Number:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.nurse.nursePhoneNumber" placeholder="Phone/Mobile Number">
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Age:</label>
	                        <input type="text" name="" data-ng-model="staff.staffAge" class="form-control" placeholder="Enter Age">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Gender:</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Male" value="Male">Male</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Female" value="Female">Female</label>
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>WardNumber:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.staffWardNumber" placeholder="Enter WardNumber">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Work:</label>
							<input type="text" name="" data-ng-model="staff.staffWork" class="form-control" placeholder="Enter Staff Work">
	                    </div>
	                </div>
	                
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Nurse Shift:</label>
                        <select class="form-control" id="sel1" data-ng-model="staff.nurse.nurseShift">
                          <option value="Morning">Morning</option>
                          <option value="Evening">Evening</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Nurse Type:</label>
                        <select class="form-control" id="sel1" data-ng-model="staff.nurse.nurseType">
                          <option value="INHOUSE">INHOUSE</option>
                          <option value="DUTY">DUTY</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Depeartment ID:</label>
                        <select class="form-control"  data-ng-model="staff.nurse.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-4 col-md-offset-1">
                        <label>D.O.B:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.nurse.nurseDob" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
             
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Address:</label>
                        <textarea class="form-control" rows="5" data-ng-model="staff.staffAddress" placeholder="Enter Address"> </textarea>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Date of Joining:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>

                </div>
                <div class="row">
                	<div class="form-group col-md-4">
						<label class="control-label"  >User
							Type:</label>
						<div class="">
							<select class="form-control" name="userType" data-ng-model="staff.nurse.userType">
								<option>DOMAIN_ADMIN</option>
								<option>DOMAIN_USER</option>
								<option>USER</option>
							</select>
						</div>
					</div>
					<div class="form-group col-md-4 col-md-offset-1">
						<label class="control-label" >Role:</label>
						<div class="">
							<select class="form-control" name="professionType" data-ng-model="staff.nurse.role" data-ng-options="role.roleName for role in roleList" >
								<option value="">Select</option>
							</select>
						</div>
					</div>
                </div>
                	

					<div class="row">
						<div class="col-md-4">
							<button type="submit" class="btn btn-default col-md-4">Submit</button>
						</div>
					</div>
            
            <div data-ng-repeat="role in roleList">
                  <div class="col-md-12 col-md-12" data-ng-show="staff.nurse.role == role">
								<label class="control-label">Note :</label>
								<ul class="list-group" >
								<p>{{role.roleDescription}}</p>
									<li data-ng-repeat="permissionList in role.permissionList"> {{permissionList.module}} Module --> Can {{permissionList.action}} a {{permissionList.module}}</li>
								</ul>
						</div>
					</div>
				</div>
				
				
				
				<!-- +============================================================================================+ -->			
			<div data-ng-if=" staff.staffRole == 'FrontOffice'">
					<div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Email Id:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.receptionist.receptionistEmail" placeholder="Enter Email Id">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Phone/Mobile Number:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.receptionist.receptionistPhoneNumber" placeholder="Phone/Mobile Number">
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Age:</label>
	                        <input type="text" name="" data-ng-model="staff.staffAge" class="form-control" placeholder="Enter Age">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Gender:</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Male" value="Male">Male</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Female" value="Female">Female</label>
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Date of Joining:</label>
	                        <div  class="datetimepicker date_only">
	                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
	                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
	                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
	                            </datetimepicker>
	                        </div>
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Work:</label>
							<input type="text" name="" data-ng-model="staff.staffWork" class="form-control" placeholder="Enter Staff Work">
	                    </div>
	                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Depeartment ID:</label>
                        <select class="form-control"  data-ng-model="staff.receptionist.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>D.O.B:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.receptionist.receptionistDob" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
             	
             	<div class="row">
             		<div class="form-group col-md-4">
						<label class="control-label"  >User
							Type:</label>
						<div class="">
							<select class="form-control" name="userType" data-ng-model="staff.receptionist.userType">
								<option>DOMAIN_ADMIN</option>
								<option>DOMAIN_USER</option>
								<option>USER</option>
							</select>
						</div>
					</div>

					<div class="form-group col-md-4 col-md-offset-1">
						<label class="control-label" >Role:</label>
						<div class="">
							<select class="form-control" name="professionType" data-ng-model="staff.receptionist.role" data-ng-options="role.roleName for role in roleList" >
								<option value="">Select</option>
							</select>
						</div>
					</div>
             	</div>

                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Address:</label>
                        <textarea class="form-control" rows="5" data-ng-model="staff.staffAddress" placeholder="Enter Address"> </textarea>
                    </div>
                </div>
                <!-- <div class="row">
                	<div class="form-group col-md-4">
                        <label>Date of Joining:</label>
                        <div  class="datetimepicker date_only">
                            <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre>
                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                Use date-ng-click="open($event, opened)" to override date ng-click
                            </datetimepicker>
                        </div>
                    </div>
                </div> -->
                	

					<div class="row">
						<div class="col-md-4">
							<button type="submit" class="col-md-4 btn btn-default">Submit</button>
						</div>
					</div>
            
            <div data-ng-repeat="role in roleList">
                  <div class="col-md-12 col-md-12" data-ng-show="staff.receptionist.role == role">
								<label class="control-label">Note :</label>
								<ul class="list-group" >
								<p>{{role.roleDescription}}</p>
									<li data-ng-repeat="permissionList in role.permissionList"> {{permissionList.module}} Module --> Can {{permissionList.action}} a {{permissionList.module}}</li>
								</ul>
						</div>
					</div>
				</div>
				
								
				<!-- +============================================================================================+ -->			
			<div data-ng-if=" staff.staffRole == 'Finance'">
					<div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Email Id:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.finance.financeEmail" placeholder="Enter Email Id">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Phone/Mobile Number:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.finance.financePhoneNumber" placeholder="Phone/Mobile Number">
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Age:</label>
	                        <input type="text" name="" data-ng-model="staff.staffAge" class="form-control" placeholder="Enter Age">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Gender:</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Male" value="Male">Male</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Female" value="Female">Female</label>
	                    </div>
	                </div>
	                
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Depeartment ID:</label>
                        <select class="form-control"  data-ng-model="staff.finance.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-4 col-md-offset-1">
                        <label>D.O.B:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.finance.financeDob" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
             
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Address:</label>
                        <textarea class="form-control" rows="5" data-ng-model="staff.staffAddress" placeholder="Enter Address"> </textarea>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Date of Joining:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
                <div class="row">
                	<div class="form-group col-md-4">
	                        <label>Work:</label>
							<input type="text" name="" data-ng-model="staff.staffWork" class="form-control" placeholder="Enter Staff Work">
	                    </div>
	                <div class="form-group col-md-offset-1 col-md-4">
						<label class="control-label"  >User
							Type:</label>
						<div class="">
							<select class="form-control" name="userType" data-ng-model="staff.finance.userType">
								<option>DOMAIN_ADMIN</option>
								<option>DOMAIN_USER</option>
								<option>USER</option>
							</select>
						</div>
					</div>    
                </div>
                <div class="row">	
					<div class="form-group col-sm-4">
						<label class="control-label" >Role:</label>
						<div class="">
							<select class="form-control" name="professionType" data-ng-model="staff.finance.role" data-ng-options="role.roleName for role in roleList" >
								<option value="">Select</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div data-ng-repeat="role in roleList">
                  <div class="col-md-12 col-md-12" data-ng-show="staff.finance.role == role">
						<label class="control-label">Note :</label>
						<ul class="list-group" >
						<p>{{role.roleDescription}}</p>
							<li data-ng-repeat="permissionList in role.permissionList"> {{permissionList.module}} Module --> Can {{permissionList.action}} a {{permissionList.module}}</li>
						</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<button type="submit" class="btn btn-default col-md-4">Submit</button>
					</div>
				</div>
            
            
				</div>
				
												
				<!-- +============================================================================================+ -->			
			<div data-ng-if=" staff.staffRole == 'Inventory'">
					<div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Email Id:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.inventory.inventoryEmail" placeholder="Enter Email Id">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Phone/Mobile Number:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.inventory.inventoryPhoneNumber" placeholder="Phone/Mobile Number">
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Age:</label>
	                        <input type="text" name="" data-ng-model="staff.staffAge" class="form-control" placeholder="Enter Age">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Gender:</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Male" value="Male">Male</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Female" value="Female">Female</label>
	                    </div>
	                </div>
	                
	                
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Depeartment ID:</label>
                        <select class="form-control"  data-ng-model="staff.inventory.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-4 col-md-offset-1">
                        <label>D.O.B:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.inventory.inventoryDob" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
             
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Address:</label>
                        <textarea class="form-control" rows="5" data-ng-model="staff.staffAddress" placeholder="Enter Address"> </textarea>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Date of Joining:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
                <div class="row">
	                <div class="form-group col-md-4">
	                    <label>Work:</label>
						<input type="text" name="" data-ng-model="staff.staffWork" class="form-control" placeholder="Enter Staff Work">
	                </div>
	                <div class="form-group col-md-4 col-md-offset-1">
						<label class="control-label"  >User
							Type:</label>
						<div class="">
							<select class="form-control" name="userType" data-ng-model="staff.inventory.userType">
								<option>DOMAIN_ADMIN</option>
								<option>DOMAIN_USER</option>
								<option>USER</option>
							</select>
						</div>
					</div>
	            </div>
                <div class="row">
					<div class="form-group col-md-4">
						<label class="control-label" >Role:</label>
						<div class="">
							<select class="form-control" name="professionType" data-ng-model="staff.inventory.role" data-ng-options="role.roleName for role in roleList" >
								<option value="">Select</option>
							</select>
						</div>
					</div>
                </div>
                	
                	<div data-ng-repeat="role in roleList">
                  <div class="col-md-12 col-md-12" data-ng-show="staff.inventory.role == role">
								<label class="control-label">Note :</label>
								<ul class="list-group" >
								<p>{{role.roleDescription}}</p>
									<li data-ng-repeat="permissionList in role.permissionList"> {{permissionList.module}} Module --> Can {{permissionList.action}} a {{permissionList.module}}</li>
								</ul>
						</div>
					</div>


					<div class="row">
						<div class="col-md-4">
							<button type="submit" class="btn btn-default col-md-4">Submit</button>
						</div>
					</div>
            
            
				</div>
				
				
		<!-- +============================================================================================+ -->			
			<div data-ng-if=" staff.staffRole == 'LabTechnician'">
					<div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Email Id:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.labTechnician.labTechnicianEmail" placeholder="Enter Email Id">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Phone/Mobile Number:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.labTechnician.labTechnicianPhoneNumber" placeholder="Phone/Mobile Number">
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Age:</label>
	                        <input type="text" name="" data-ng-model="staff.staffAge" class="form-control" placeholder="Enter Age">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Gender:</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Male" value="Male">Male</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Female" value="Female">Female</label>
	                    </div>
	                </div>
	                
	                
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Depeartment ID:</label>
                        <select class="form-control"  data-ng-model="staff.labTechnician.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-4 col-md-offset-1">
                        <label>D.O.B:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.labTechnician.labTechnicianDob" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
             
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Address:</label>
                        <textarea class="form-control" rows="5" data-ng-model="staff.staffAddress" placeholder="Enter Address"> </textarea>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Date of Joining:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Work:</label>
						<input type="text" name="" data-ng-model="staff.staffWork" class="form-control" placeholder="Enter Staff Work">
                    </div>
                    <div class="form-group col-md-offset-1 col-md-4">
						<label class="control-label"  >User
							Type:</label>
						<div class="">
							<select class="form-control" name="userType" data-ng-model="staff.labTechnician.userType">
								<option>DOMAIN_ADMIN</option>
								<option>DOMAIN_USER</option>
								<option>USER</option>
							</select>
						</div>
					</div>
                </div>

                <div class="row">	
					<div class="form-group col-md-4">
						<label class="control-label" >Role:</label>
						<div class="">
							<select class="form-control" name="professionType" data-ng-model="staff.labTechnician.role" data-ng-options="role.roleName for role in roleList" >
								<option value="">Select</option>
							</select>
						</div>
					</div>
				</div>
					<div class="row">
						<div class="col-md-4">
							<button type="submit" class="btn btn-default col-md-4">Submit</button>
						</div>
					</div>
            
            <div data-ng-repeat="role in roleList">
                  <div class="col-md-12 col-md-12" data-ng-show="staff.labTechnician.role == role">
								<label class="control-label">Note :</label>
								<ul class="list-group" >
								<p>{{role.roleDescription}}</p>
									<li data-ng-repeat="permissionList in role.permissionList"> {{permissionList.module}} Module --> Can {{permissionList.action}} a {{permissionList.module}}</li>
								</ul>
						</div>
					</div>
				</div>
						
				
		<!-- +============================================================================================+ -->			
			<div data-ng-if=" staff.staffRole == 'Pharmacist'">
					<div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Email Id:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.pharmacist.pharmacistEmail" placeholder="Enter Email Id">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Phone/Mobile Number:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.pharmacist.pharmacistPhoneNumber" placeholder="Phone/Mobile Number">
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Age:</label>
	                        <input type="text" name="" data-ng-model="staff.staffAge" class="form-control" placeholder="Enter Age">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Gender:</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Male" value="Male">Male</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Female" value="Female">Female</label>
	                    </div>
	                </div>
	                
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Depeartment ID:</label>
                        <select class="form-control"  data-ng-model="staff.pharmacist.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-4 col-md-offset-1">
                        <label>D.O.B:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.pharmacist.pharmacistDob" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
             
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Address:</label>
                        <textarea class="form-control" rows="5" data-ng-model="staff.staffAddress" placeholder="Enter Address"> </textarea>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Date of Joining:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
                <div class="row">
                	<div class="form-group col-md-4">
                        <label>Work:</label>
						<input type="text" name="" data-ng-model="staff.staffWork" class="form-control" placeholder="Enter Staff Work">
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
						<label class="control-label"  >User
							Type:</label>
						<div class="">
							<select class="form-control" name="userType" data-ng-model="staff.pharmacist.userType">
								<option>DOMAIN_ADMIN</option>
								<option>DOMAIN_USER</option>
								<option>USER</option>
							</select>
						</div>
					</div>
                </div>
                	
					<div class="row">
						<div class="form-group col-md-4">
							<label class="control-label" >Role:</label>
							<div class="">
								<select class="form-control" name="professionType" data-ng-model="staff.pharmacist.role" data-ng-options="role.roleName for role in roleList" >
									<option value="">Select</option>
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<button type="submit" class="btn btn-default col-md-4">Submit</button>
						</div>
					</div>
            
            <div data-ng-repeat="role in roleList">
                  <div class="col-md-12 col-md-12" data-ng-show="staff.pharmacist.role == role">
								<label class="control-label">Note :</label>
								<ul class="list-group" >
								<p>{{role.roleDescription}}</p>
									<li data-ng-repeat="permissionList in role.permissionList"> {{permissionList.module}} Module --> Can {{permissionList.action}} a {{permissionList.module}}</li>
								</ul>
						</div>
					</div>
				</div>
				
					<!-- +============================================================================================+ -->			
			<div data-ng-if=" staff.staffRole == 'Laundry'">
					<div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Email Id:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.houseKeeper.houseKeeperEmail" placeholder="Enter Email Id">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Phone/Mobile Number:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.houseKeeper.houseKeeperPhoneNumber" placeholder="Phone/Mobile Number">
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>Age:</label>
	                        <input type="text" name="" data-ng-model="staff.staffAge" class="form-control" placeholder="Enter Age">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Gender:</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Male" value="Male">Male</label>
							<label class="radio-inline"><input type="radio" data-ng-model="staff.staffGender" name="Female" value="Female">Female</label>
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="form-group col-md-4">
	                        <label>WardNumber:</label>
	                        <input type="text" name="" class="form-control" data-ng-model="staff.staffWardNumber" placeholder="Enter WardNumber">
	                    </div>
	                    <div class="form-group col-md-4 col-md-offset-1">
	                        <label>Work:</label>
							<input type="text" name="" data-ng-model="staff.staffWork" class="form-control" placeholder="Enter Staff Work">
	                    </div>
	                </div>
	                
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Nurse Shift:</label>
                        <select class="form-control" id="sel1" data-ng-model="staff.houseKeeper.houseKeeperShift">
                          <option value="Morning">Morning</option>
                          <option value="Evening">Evening</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Nurse Type:</label>
                        <select class="form-control" id="sel1" data-ng-model="staff.houseKeeper.houseKeeperType">
                          <option value="INHOUSE">INHOUSE</option>
                          <option value="DUTY">DUTY</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Depeartment ID:</label>
                        <select class="form-control"  data-ng-model="staff.houseKeeper.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-4 col-md-offset-1">
                        <label>D.O.B:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.houseKeeper.houseKeeperDob" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
             
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Address:</label>
                        <textarea class="form-control" rows="5" data-ng-model="staff.staffAddress" placeholder="Enter Address"> </textarea>
                    </div>
                    <div class="form-group col-md-4 col-md-offset-1">
                        <label>Date of Joining:</label>
                        <div  class="datetimepicker date_only">
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="staff.staffDoj" date-format="{{format}}" show-spinners="true" date-options="options" hidden-time="true">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>
                <div class="row">
                	<div class="form-group col-md-4">
						<label class="control-label"  >User
							Type:</label>
						<div class="">
							<select class="form-control" name="userType" data-ng-model="staff.houseKeeper.userType">
								<option>DOMAIN_ADMIN</option>
								<option>DOMAIN_USER</option>
								<option>USER</option>
							</select>
						</div>
					</div>
					<div class="form-group col-md-offset-1 col-md-4">
						<label class="control-label" >Role:</label>
						<div class="">
							<select class="form-control" name="professionType" data-ng-model="staff.houseKeeper.role" data-ng-options="role.roleName for role in roleList" >
								<option value="">Select</option>
							</select>
						</div>
					</div>
                </div>
                	

					<div class="row">
						<div class="col-md-4">
							<button type="submit" class="btn btn-default col-md-4">Submit</button>
						</div>
					</div>
            
            <div data-ng-repeat="role in roleList">
                  <div class="col-md-12 col-md-12" data-ng-show="staff.houseKeeper.role == role">
								<label class="control-label">Note :</label>
								<ul class="list-group" >
								<p>{{role.roleDescription}}</p>
									<li data-ng-repeat="permissionList in role.permissionList"> {{permissionList.module}} Module --> Can {{permissionList.action}} a {{permissionList.module}}</li>
								</ul>
						</div>
					</div>
				</div>
				
				
						
            </form>

					</div>

			</div>




















<script type="text/javascript">

//
	$(document).ready(function(){
		$(".left_menu > li > a").click(function(){
			$(".left_menu > li ul").not($(this).next("ul")).slideUp(300);
			$(this).next("ul").slideToggle(300);
		});

		$(".Registration .radio").click(function(){
			 if($(".limited_check").is(':checked')) { 
			 	$(".limited_lists").slideDown(300);
			 }
			 else{
			 	$(".limited_lists").slideUp(300);
			 }
		});

		$(".Registration .checkbox input[type='checkbox']").click(function(){
			 if($(this).is(':checked')) { 
			 	$(this).parents(".checkbox").next(".curd").slideToggle(300);
			 }
			 else{
			 	$(this).parents(".checkbox").next(".curd").slideUp(300);
			 }
		});
	});


// checklist
    var allVals = [];
/*     $(function() {
    	
       $('#my-profile .subbtn').click(function() { 
    	   alert("sfs");
           allVals = []
         $('#my-profile :checked').each(function() {
           allVals.push($(this).val());
         });

           alert("Values " + allVals);

       });
     }); */

/* $(function() {
		$('#subbtn').click(function() {
			var send = $('#my-profile').serializeJSON();
			
			
			console.log(send);
			$.ajaxSetup({
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			});
			$.ajax({
				url: "http://localhost:8080/HospitalManagement-Rest/addStaff",
				type: "POST",
				data: JSON.stringify(send),
				error: function(xhr, error) {
					alert('Error!  Status = ' + xhr.status + ' Message = ' + error);
				},
				success: function(data) {
					console.log("fine");
				}
			});
			
			
			
			return false;
			
			$
		}); 
	});*/
</script>
</body>
</html>

































<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script type="text/javascript">
	$.fn.serializeObject = function() {
		var o = {};
		var a = this.serializeArray();
		$.each(a, function() {
			if (o[this.name] !== undefined) {
				if (!o[this.name].push) {
					o[this.name] = [ o[this.name] ];
				}
				o[this.name].push(this.value || '');
			} else {
				o[this.name] = this.value || '';
			}
		});
		return o;
	};

	$(function() {
		$('form').submit(function() {
			$('#result').text(JSON.stringify($('form').serializeObject()));
			return false;
		});
	});
</script>
</head>
<h2>Form</h2>
<body>
<form action="addStaff" method="post">
	Name:<input type="text" name="staffName" maxlength="12" size="12" />
	<br /> Email:<input type="text" name="email" maxlength="36"
		size="12" /> <br /> Gender:<br /> Male:<input type="radio"
		name="gender" value="Male" /><br /> Female:<input type="radio"
		name="gender" value="Female" /><br /> Favorite Food:<br /> Steak:<input
		type="checkbox" name="food" value="Steak" /><br /> Pizza:<input
		type="checkbox" name="food" value="Pizza" /><br /> Chicken:<input
		type="checkbox" name="food" value="Chicken" /><br />
	<textarea wrap="physical" cols="20" name="quote" rows="5">Enter your favorite quote!</textarea>
	<br /> Select a Level of Education:<br /> <select name="education">
		<option value="Jr.High">Jr.High</option>
		<option value="HighSchool">HighSchool</option>
		<option value="College">College</option>
	</select><br /> Select your favorite time of day:<br /> <select size="3"
		name="TofD">
		<option value="Morning">Morning</option>
		<option value="Day">Day</option>
		<option value="Night">Night</option>
	</select>
	<p>
		<input type="submit" />
	</p>
</form>
</body>
<h2>JSON</h2>
<pre id="result">
</pre>
</html>

 --%>