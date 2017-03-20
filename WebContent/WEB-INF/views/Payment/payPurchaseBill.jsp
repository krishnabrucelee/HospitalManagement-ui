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
<body data-ng-controller="payPurchaseBillCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>


<div class="clear">
	<div class="right_block">
		<h1 class="heading">Pay Bill</h1>
		<div class="centered_form">
			<div class="paybillBlock">
           <div class="left_block">
               <div class="row">
                   <div class="form-group col-md-4">
                     <label>Payment Account</label>
                     <select class="form-control"  data-ng-model="payBill.accountDetailType" data-ng-options="accountDType.name for accountDType in accountDetailTypeList">
								<option value="">Select</option>
					</select>
                   </div>
               </div>
               <div class="row">
                   <div class="form-group col-md-4">
                     <label>Payment Date:</label>
                     <datetimepicker data-ng-model="payBill.purchaseBillingTransactionDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                       </datetimepicker>
                   </div>
               </div>
               <div class="col-md-4">
                       <div class="form-group">
                         <label> &nbsp; </label>
                         <div><b>Balance Rs. {{purchaseBillingList[0].paymentAmount}}</b></div>
                       </div>
           </div>

       </div>
       <hr>
       

       <table class="table table-bordered">
       <thead>
         <tr>
           <th>PAYEE</th>
           <th>PURCHASE BILL NO</th>
           <th>DUE DATE</th>
           <th>OPEN BALANCE</th>
           <th>PAYMENT AMOUNT</th>
         </tr>
       </thead>
       <tbody>
         <tr data-ng-repeat="purchaseBill in purchaseBillingList">
           <td>{{purchaseBill.supplier.displayName}}</td>
           <td>{{purchaseBill.purchaseBillingId}}</td>
           <td>{{purchaseBill.purchaseDueDate}}</td>
           <td>{{purchaseBill.supplier.openingBalance}}</td>
           <td><input type="number" data-ng-model="purchaseBill.payAmount" class="form-control" ></td>
           <td><button type="button" class="btn btn-primary col-md-6" ng-click="addPayment(payBill, purchaseBill)">Add</button>  </td>
         </tr>
       </tbody>
     </table>
     
		</div>
	</div>
</div>
</body>
</html>