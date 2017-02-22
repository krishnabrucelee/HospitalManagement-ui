<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="role" value='<%=session.getAttribute("role")%>'></c:set>
<c:set var="permission" value='<%=session.getAttribute("permission")%>'></c:set>
<c:set var="module" value='<%=session.getAttribute("module")%>'></c:set>
<c:set var="roleList" value='<%=session.getAttribute("roleList")%>'></c:set>
<c:set var="professionType" value='<%=session.getAttribute("type")%>'></c:set>
<c:set var="user" value='${userId}'></c:set>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html data-ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<%@ include file="../views/Common/includeScript.jsp" %>
    <script src="resources/js/Home/homeController.js" ></script>
<title>Hospital Management</title>
</head>
<body data-ng-controller="homeCtrl">
 <%@ include file="../views/Common/menubar.jsp" %> 
	<div class="front_banner">
		<img src="resources/images/banner.jpg" width="100%">
	</div>

  <div class="bg_color">
	<div class="container">
			<div class="main_container clear col-md-12">

			<h2 class="page_heading">
				Dashboard  
			</h2>
			<div class="dashboard_block clear">
				<div class="col-md-3">
						<a data-ng-click="listPatient()">
							
							<img  src="resources/images/icons.png">
							<h4>Patient</h4>
						</a>
					</div>
					<div class="col-md-3">
						<a data-ng-click="listDoctor()">
							
							<img  src="resources/images/icons.png">
							<h4>Doctor</h4>
						</a>
					</div>
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addStaff()">
							
							<img  src="resources/images/icons.png">
							<h4>Add Staff</h4>
						</a>
					</div>
				</c:if>
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addDepartment()">
							
							<img  src="resources/images/icons.png">
							<h4>Add Department</h4>
						</a>
					</div>
					</c:if>
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addRole()">
							
							<img  src="resources/images/icons.png">
							<h4>Add Role</h4>
						</a>
					</div>
					</c:if>
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addRoom()">
							
							<img  src="resources/images/icons.png">
							<h4>Add Room</h4>
						</a>
					</div>
					</c:if>		
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addBilling()">
							
							<img  src="resources/images/icons.png">
							<h4>Add Billing Chart</h4>
						</a>
					</div>
					</c:if>		
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="listStockRequest()">
							<h4>List Stock Request</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>		
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="listPurchaseOrder()">
							<h4>List PurchaseOrder</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="requestMrn()">
							<h4>Request Material Recieve Note</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>		
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="listSupplier()">
							<h4>List Supplier</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>		
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addSurgeryRoom()">
							<h4>Add Surgery Room Configuration</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>		
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="activityLog()">
							<h4>Activity Log</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>	
					<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addSurgery()">
							<h4>Add Surgery Schedule</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>	
					<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="listWaitingList()">
							<h4>List Waiting List</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>	
					<div class="col-md-3">
						<a data-ng-click="editProfile(${user})">
							<h4>Edit Profile</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>									
				<c:if test="${role.roleName eq 'Regular'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Lab</h4>
						</a>
					</div>
				</c:if>
				<c:if test="${role.roleName eq 'Regular'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Billing</h4>
						</a>
					</div>
</c:if>
			<c:if test="${role.roleName eq 'Regular'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Blood Bank</h4>
						</a>
					</div>
					</c:if>
<c:if test="${role.roleName eq 'Regular'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Ward</h4>
						</a>
					</div>
</c:if>

					<div class="col-md-3">
						<a data-ng-click="addAppointment()">
							
							<img src="resources/images/icons.png">
							<h4>Appointment</h4>
						</a>
					</div>

					<div class="col-md-3">
						<a data-ng-click="addNurseScheduling()">
							
							<img src="resources/images/icons.png">
							<h4>Nurse Scheduling</h4>
						</a>
					</div>
<c:if test="${ professionType eq 'Doctor' || professionType eq 'Nurse' || professionType eq 'Admin'}">
					<div class="col-md-3">

						<a data-ng-click="viewAttendance()">							
							<img src="resources/images/icons.png">
							<h4>View Attendance</h4>
						</a>
					</div>
</c:if>

<c:if test="${ module eq 'Laboratory'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Doctor</h4>
						</a>
					</div>
</c:if>
<c:if test="${role.roleName eq 'Limited'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>EMR</h4>
						</a>
					</div>
</c:if>
<c:if test="${role.roleName eq 'Limited'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Pharmacy</h4>
						</a>
					</div>
</c:if>
<c:if test="${ module eq 'Nurse'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Nurse</h4>
						</a>
					</div>
</c:if>
<c:if test="${ module eq 'HR'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>HR</h4>
						</a>
					</div>
					</c:if>
<c:if test="${ module eq 'House Keeping'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>House Keeping</h4>
						</a>
					</div>
</c:if>
<c:if test="${ module eq 'Inventory'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Inventory</h4>
						</a>
					</div>
</c:if>
<c:if test="${role.roleName eq 'Limited'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Front Office</h4>
						</a>
					</div>
</c:if>
<c:if test="${role.roleName eq 'Limited'}">
					<div class="col-md-3">
						<a href="#">
							
							<img src="resources/images/icons.png">
							<h4>Report</h4>
						</a>
					</div>
					</c:if>
			</div>

			<div class="feeds_block">
				<h4 class="page_heading text-center">
					Feeds
				</h4>
			</div>
		
		</div>
	</div>
  </div>	
	<footer>	
		<div class="container-fluid text-center">
			<p>2016 Copy rights</p>
		</div>
	</footer>

</body>
</html>