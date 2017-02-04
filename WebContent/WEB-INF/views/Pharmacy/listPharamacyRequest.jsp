<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Patient</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Pharmacy/pharmacyController.js" ></script>
</head>
<body ng-controller="pharmacyListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Pharamacy Request Listing</h1>

            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                     <th>Item name</th>
                    <th>Department</th>
                    <th>Purpose</th>
                    <th>Quantity</th>
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody>
                  <tr data-ng-repeat="pharamcy in pharamacyRequestList " data-ng-repeat="medicine in medicineList" >
                  <td>{{pharamcy.medicineRequestId}}</td>
                   <td>{{medicine.medicineRequestId}}</td>
                  <td>{{pharamcy.departmentId}}</td>
                  <td>{{medicine.quantity}}</td>
                  <td>17</td>
                  
                    <td class="dropdown" ><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu" >
                        <li><a ng-click="stockAdjustment()">Stock Adjustment</a></li>
                        <li data-ng-repeat="permission in permissionList" data-ng-if="permission.module == 'Patient' && permission.action == 'update'" ><a href="#">Edit</a></li>
                        <li data-ng-repeat="permission in permissionList" data-ng-if="permission.module == 'Patient' && permission.action == 'delete'" ><a href="#">Delete</a></li>
                        <li data-ng-repeat="permission in permissionList" data-ng-if="permission.module == 'Patient' && permission.action == 'delete'" ><a href="#">Discharge</a></li>
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>
        </div>
    </div>
</body>
</html>