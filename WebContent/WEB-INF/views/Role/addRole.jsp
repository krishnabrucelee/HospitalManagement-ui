<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Role/roleController.js" ></script>
</head>
<body data-ng-controller="roleCtrl">
 <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    
    <form class="centered_form" name="roleForm"  data-ng-submit="saveRole(roleForm, role)">
                    <div class="form-group col-md-4">	
                        <label>Role Name:</label>
                        <input class="form-control" placeholder="Enter the role name" data-ng-model="role.roleName"> </input>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Role Description:</label>
                        <input class="form-control" placeholder="Enter role description" data-ng-model="role.roleDescription"> </input>
                    </div>
    					<div class="form-group" >
						<label class="control-label col-sm-3 col-sm-offset-1">User
							Access Rights:</label>
						<div class="col-sm-8">
							<div class="">
								<div class="checkbox">
									<label><input type="checkbox" data-ng-model="role.permissionList.Laboratory.module.Laboratory" value="Laboratory"> Laboratory</label>
								</div>
								 <div data-ng-if="role.permissionList.Laboratory.module.Laboratory">
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Laboratory.action.create" value="Create"> Create
										<input  type="hidden"  value="Laboratory">
										</label> 
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Laboratory.action.update" value="Update"> Update
										<input type="hidden" value="Laboratory"></label>
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Laboratory.action.read" value="Read"> Read
										<input type="hidden"  value="Laboratory">
										</label>
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox" data-ng-model="role.permissionList.Laboratory.action.delete" value="Delete"> Delete
										<input type="hidden"  value="Laboratory">
										</label>
										
									</div>
								</div> 
								
								<div class="checkbox">
									<label><input type="checkbox"  data-ng-model="role.permissionList.Emr.module.Emr" value="Emr"> Emr</label>
								</div>
								 <div data-ng-if="role.permissionList.Emr.module.Emr">
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Emr.action.create" value="Create"> Create</label>
										<input type="hidden"   value="Emr">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Emr.action.update" value="Update"> Update</label>
										<input type="hidden"   value="Emr">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Emr.action.read" value="Read"> Read</label>
										<input type="hidden"   value="Emr">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" data-ng-model="role.permissionList.Emr.action.delete" value="Delete"> Delete</label>
										<input type="hidden" value="Emr">
									</div>
								</div> 
								
								<div class="checkbox">
									<label><input type="checkbox"  data-ng-model="role.permissionList.Pharamacy.module.Pharamacy" value="Pharamacy"> Pharamacy</label>
								</div>
								<div  data-ng-if="role.permissionList.Pharamacy.module.Pharamacy" >
									<div class="checkbox">
										<label><input type="checkbox" data-ng-model="role.permissionList.Pharamacy.action.create" value="Create"> Create</label>
										<input type="hidden"   value="Pharamacy">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Pharamacy.action.update" value="Update"> Update</label>
										<input type="hidden"   value="Pharamacy">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Pharamacy.action.read" value="Read"> Read</label>
										<input type="hidden"   value="Pharamacy">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Pharamacy.action.delete" value="Delete"> Delete</label>
										<input type="hidden"  value="Pharamacy">
									</div>
								</div>
								
								<div class="checkbox">
									<label><input type="checkbox"  data-ng-model="role.permissionList.Finance.module.Finance" value="Finance"> Finance</label>
								</div>
								 <div data-ng-if="role.permissionList.Finance.module.Finance">
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Finance.action.create" value="Create"> Create</label>
										<input type="hidden"  value="Diet">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Finance.action.update" value="Update"> Update</label>
										<input type="hidden"  value="Diet">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Finance.action.read" value="Read"> Read</label>
										<input type="hidden"  value="Diet">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Finance.action.delete" value="Delete"> Delete</label>
										<input type="hidden"   value="Diet">
									</div>
								</div> 
							<div class="checkbox">
									<label><input type="checkbox" data-ng-model="role.permissionList.Appointment.module.Appointment" value="Appointment"> Appointment</label>
								</div>
								 <div data-ng-if="role.permissionList.Appointment.module.Appointment">
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Appointment.action.create" value="Create"> Create
										<input  type="hidden"  value="Laboratory">
										</label> 
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Appointment.action.update" value="Update"> Update
										<input type="hidden" value="Laboratory"></label>
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Appointment.action.read" value="Read"> Read
										<input type="hidden"  value="Laboratory">
										</label>
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox" data-ng-model="role.permissionList.Appointment.action.delete" value="Delete"> Delete
										<input type="hidden"  value="Laboratory">
										</label>
										
									</div>
								</div> 
									
								<div class="checkbox">
									<label><input type="checkbox" data-ng-model="role.permissionList.Patient.module.Patient" value="Patient"> Patient</label>
								</div>
								 <div data-ng-if="role.permissionList.Patient.module.Patient">
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Patient.action.create" value="Create"> Create
										<input  type="hidden"  value="Laboratory">
										</label> 
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Patient.action.update" value="Update"> Update
										<input type="hidden" value="Laboratory"></label>
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox"  data-ng-model="role.permissionList.Patient.action.read" value="Read"> Read
										<input type="hidden"  value="Laboratory">
										</label>
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox" data-ng-model="role.permissionList.Patient.action.delete" value="Delete"> Delete
										<input type="hidden"  value="Laboratory">
										</label>
										
									</div>
								</div> 	
							</div>
						</div>
					</div>
										
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-7 text-right">
							<button type="submit" class="btn btn-default">Submit</button>
						</div>
					</div>
					</form>
</body>
</html>