<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Account/accountController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="accountHistoryCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 <div class="clear">
        <div class="right_block">
        
        <table class="table table-bordered">
   <thead>
     <tr>
      <th>Date</th>
       <th>Payee Account</th>
       <th>Paid</th>
       <th>Open Balance</th>
     </tr>
   </thead>
   <tbody>
     <tr data-ng-repeat="accountType in accountTypeHistoryList">
       <td>{{accountType.transactionDate}}</td>
       <td>{{accountType.notes}}</td>
       <td>{{accountType.debit}}</td>
       <td>{{accountType.begin_balance}}</td>
     </tr>
   </tbody>
 </table>
        </div>
    </div>

</body>
</html>