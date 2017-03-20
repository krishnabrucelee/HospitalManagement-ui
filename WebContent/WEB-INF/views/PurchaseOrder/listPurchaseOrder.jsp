<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/PurchaseOrder/purchaseOrderController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="purchaseOrderListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Purchase Order</h1>
            <div >
                <button type="button" class="btn btn-default" ng-click="addPurchaseOrder()">Add New PurchaseOrder</button>
            </div>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                     <th>Item name</th>
                    <th>Department</th>
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="purchase in purchaseOrderTransactionList">
                  <tr>
                  <td>{{purchase.purchaseOrderTransactionId}}</td>
                  <td>{{purchase.medicineItemMaster.medicineName}}</td>
                  <td>{{department.departmentName}}</td>
                  	
                    <td class="dropdown" ><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu" >
                        <li><a ng-click="billPayment(purchase)">Bill Payment</a></li>
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