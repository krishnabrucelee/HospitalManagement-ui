<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="role" value='<%=session.getAttribute("role")%>'></c:set>
<c:set var="permission" value='<%=session.getAttribute("permission")%>'></c:set>
<c:set var="module" value='<%=session.getAttribute("module")%>'></c:set>
<c:set var="roleList" value='<%=session.getAttribute("roleList")%>'></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Common/includeScript.jsp" %>
     <script src="resources/js/Patient/patientController.js" ></script>
</head>
<body ng-controller="patientListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Patient Listing
                
                <div class="modal-demo"> <!-- data-ng-repeat="permission in permissionList" data-ng-if="permission.module == 'Patient' && permission.action == 'create'" -->
                <button type="button" class="btn btn-default" ng-click="addPatient(patient)">Add Patient</button>
            </div>
            
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Sex</th>
                    <th>DOB</th>
                    <th>Patient Type</th>
                    <th>Blood Group</th>
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="patient in patientList">
                  <tr>
                    <td>{{patient.patientRefNumber}}</td>
                    <td>{{patient.patientName}}</td>
                    <td>{{patient.patientGender}}</td>
                    <td>{{patient.patientDob | date:'dd-MM-yyyy HH:mm:ss'}}</td>
                    <td>{{patient.patientType}}</td>
                    <td>{{patient.bloodGroup}}</td>
                    <td class="dropdown" ><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu" >
                        <li><a ng-click="viewPatient(patient.patientId)">View</a></li>
                        <li><a data-ng-click="editPatient(patient.patientId)">Edit</a></li>
                        <li data-ng-repeat="permission in permissionList" data-ng-if="permission.module == 'Patient' && permission.action == 'delete'" ><a href="#">Delete</a></li>
                        <li><a ng-click="discharge(patient.patientId)">Discharge</a></li>
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>
        </div>
    </div>
    <footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>
</body>
</html>