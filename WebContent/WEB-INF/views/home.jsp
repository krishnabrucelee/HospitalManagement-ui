<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="role" value='<%=session.getAttribute("role")%>'></c:set>
<c:set var="permission" value='<%=session.getAttribute("permission")%>'></c:set>
<c:set var="module" value='<%=session.getAttribute("module")%>'></c:set>
<c:set var="roleList" value='<%=session.getAttribute("roleList")%>'></c:set>
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

	<div class="container">
			<div class="main_container clear col-md-12">

			<h2 class="page_heading">
				Dashboard {{sessionDetails}}
			</h2>
			<div class="dashboard_block clear">
				<div class="col-md-3">
						<a data-ng-click="listPatient()">
							<h4>Patient</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					<div class="col-md-3">
						<a data-ng-click="listDoctor()">
							<h4>Doctor</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addStaff()">
							<h4>Add Staff</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
				</c:if>
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addDepartment()">
							<h4>Add Department</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addRole()">
							<h4>Add Role</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addRoom()">
							<h4>Add Room</h4>
							<img  src="resources/images/icons.png">
						</a>
					</div>
					</c:if>		
				<c:if test="${role.roleName eq 'Admin'}">
					<div class="col-md-3">
						<a data-ng-click="addBilling()">
							<h4>Add Billing Chart</h4>
							<img  src="resources/images/icons.png">
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
						<a data-ng-click="listProcument()">
							<h4>List Procument</h4>
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
				<c:if test="${role.roleName eq 'Regular'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Lab</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
				</c:if>
				<c:if test="${role.roleName eq 'Regular'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Billing</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
</c:if>
			<c:if test="${role.roleName eq 'Regular'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Blood Bank</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
					</c:if>
<c:if test="${role.roleName eq 'Regular'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Ward</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
</c:if>

					<div class="col-md-3">
						<a data-ng-click="addAppointment()">
							<h4>Appointment</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
<c:if test="${ module eq 'Laboratory'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Doctor</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
</c:if>
<c:if test="${role.roleName eq 'Limited'}">
					<div class="col-md-3">
						<a href="#">
							<h4>EMR</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
</c:if>
<c:if test="${role.roleName eq 'Limited'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Pharmacy</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
</c:if>
<c:if test="${ module eq 'Nurse'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Nurse</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
</c:if>
<c:if test="${ module eq 'HR'}">
					<div class="col-md-3">
						<a href="#">
							<h4>HR</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
					</c:if>
<c:if test="${ module eq 'House Keeping'}">
					<div class="col-md-3">
						<a href="#">
							<h4>House Keeping</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
</c:if>
<c:if test="${ module eq 'Inventory'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Inventory</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
</c:if>
<c:if test="${role.roleName eq 'Limited'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Front Office</h4>
							<img src="resources/images/icons.png">
						</a>
					</div>
</c:if>
<c:if test="${role.roleName eq 'Limited'}">
					<div class="col-md-3">
						<a href="#">
							<h4>Report</h4>
							<img src="resources/images/icons.png">
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
	<footer>	
		<div class="container-fluid text-center">
			<p>2016 Copy rights</p>
		</div>
	</footer>

</body>
</html>