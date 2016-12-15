<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="role" value='<%=session.getAttribute("role")%>'></c:set>
<c:set var="permission" value='<%=session.getAttribute("permission")%>'></c:set>

<c:set var="roleList" value='<%=session.getAttribute("roleList")%>'></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="todoApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>

<script type="text/javascript">
	angular.module('todoApp', []).controller('DoctorController',
			function($scope) {
				$scope.doctor = {};

				console.log($scope.doctor);
			});
</script>

<title>Doctor</title>
</head>
<body>
	<%-- <c:forEach items="${role.permissionList}" var="permission">
${permission.action}
</c:forEach> --%>

	<c:forEach items="${roleList}" var="permission">
		<%-- ${permission.action} ${permission.module} <br/> --%>

	<c:if test="${role.name eq 'Admin' }">
			<table class="table" align="center">
				<thead>
					<tr>
						<c:if
							test="${permission.module eq 'Laboratory' && permission.action eq 'Create'}">
							${permission.module}
							<th>Name</th>
							<th>Description</th>
							<th>Add</th>
						</c:if>
						<c:if
							test="${permission.module eq 'Emr' && permission.action eq 'Update'}">
							${permission.module}
							<th>Name</th>
							<th>Description</th>
							<th>Edit</th>
						</c:if>
						<c:if
							test="${permission.module eq 'Diet' && permission.action eq 'Delete'}">
							${permission.module}
							<th>Name</th>
							<th>Description</th>
							<th>Delete</th>
						</c:if>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach items="${doctor}" var="doctor">
							<tr>
								<c:if
									test="${permission.module eq 'Laboratory' && permission.action eq 'Create'}">
									<td>${doctor.doctorName}</td>
								<td>${doctor.doctorDescription}</td>
									<td><div class="col-sm-offset-3 col-sm-4">
											<button class="btn btn-primary" type="submit">Add</button>
										</div></td>
								</c:if>
								<c:if
									test="${permission.module eq 'Emr' && permission.action eq 'Update'}">
									<td>${doctor.doctorName}</td>
								<td>${doctor.doctorDescription}</td>
									<td><div class="col-sm-offset-3 col-sm-4">
											<button class="btn btn-primary" type="submit">Edit</button>
										</div></td>
								</c:if>
								<c:if
									test="${permission.module eq 'Diet' && permission.action eq 'Delete'}">
									<td>${doctor.doctorName}</td>
								<td>${doctor.doctorDescription}</td>
									<td><div class="col-sm-offset-3 col-sm-4">

											<button class="btn btn-primary" type="submit">Delete</button>
										</div></td>
								</c:if>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
		</c:if>
		<br />
	</c:forEach>
</body>
</html>