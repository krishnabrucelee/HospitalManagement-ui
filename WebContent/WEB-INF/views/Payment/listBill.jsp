<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Payment/paymentController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="purchaseBillCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>

    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Bill Listing
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Purchase Order Id</th>
                    <th>Supplier Id</th>
                    <th>Payment Amount</th>
                    <th>Billing Date</th>
                    <th>Due Date</th>
                    <th width="20">Pay</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="bill in purchaseBillingList">
                  <tr>
                    <td>{{bill.purchaseBillingId}}</td>
                    <td>{{bill.purchase.purchaseOrderId}}</td>
                    <td>{{bill.supplier.firstName}} {{bill.supplier.lastName}}</td>
                    <td>{{bill.paymentAmount}}</td>
                    <td>{{bill.purchaseBillingDate | date:'dd-MM-yyyy HH:mm:ss'}}</td>
                    <td>{{bill.purchaseDueDate | date:'dd-MM-yyyy HH:mm:ss'}}</td>
                    <td class="button" ><a ng-click="makePayment(bill)">Make Payment</a>
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