<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Room</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Room/roomController.js" ></script>
</head>
<body ng-controller="roomListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Patient Listing
                <div class="modal-demo">
                    <button type="button" class="btn btn-default" ng-click="addRoom(room)">Add Room</button>
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
                <tbody data-ng-repeat="">
                  <tr>
                    <td>{{patient.patientRefNumber}}</td>
                    <td>{{patient.patientName}}</td>
                    <td>{{patient.patientGender}}</td>
                    <td>{{patient.patientDob | date:'dd-MM-yyyy'}}</td>
                    <td>{{patient.patientType}}</td>
                    <td>{{patient.bloodGroup}}</td>
                    <td class="dropdown" ><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu" >
                        <li data-ng-repeat="permission in permissionList" data-ng-if="permission.module == 'Patient' && permission.action == 'read'" ><a ng-click="viewPatient(patient.patientId)">View</a></li>
                        <li data-ng-repeat="permission in permissionList" data-ng-if="permission.module == 'Patient' && permission.action == 'update'" ><a href="#">Edit</a></li>
                        <li data-ng-repeat="permission in permissionList" data-ng-if="permission.module == 'Patient' && permission.action == 'delete'" ><a href="#">Delete</a></li>
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