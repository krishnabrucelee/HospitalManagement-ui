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
<body data-ng-controller="receivePaymentCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Receive Listing
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Invoice Id</th>
                    <th>Receive Payment Date</th>
                    <th>Receive Amount</th>
                    <th>Account Type</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="receivePay in receivePayList">
                  <tr>
                    <td>{{receivePay.receivePaymentId}}</td>
                    <td>{{receivePay.invoice.invoiceId}}</td>
                    <td>{{receivePay.receivePaymentDate | date:'dd-MM-yyyy HH:mm:ss'}}</td>
                    <td>{{receivePay.receiveAmount}}</td>
                    <td>{{receivePay.accountCategoryChart.name}}</td>
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