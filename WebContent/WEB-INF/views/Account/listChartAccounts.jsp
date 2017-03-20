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
<body data-ng-controller="accountCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 <div class="clear">
        <div class="right_block">
        
             <h1 class="heading">Chart of Accounts
                
                <div class="modal-demo">
                <button type="button" class="btn btn-default" ng-click="addChartOfAccounts(patient)">Add Patient</button>
            </div>
            
        <table class="table table-bordered">
   <thead>
     <tr>
       <th>Name</th>
       <th>Type</th>
       <th>Detail Type</th>
       <th>Bank Balance</th>
       <th>Action</th>
     </tr>
   </thead>
   <tbody>
     <tr data-ng-repeat="accountType in getAllAccountType">
       <td>{{accountType.name}}</td>
       <td>{{accountType.name}}</td>
       <td>{{accountType.description}}</td>
       <td>{{accountType.balance}}</td>
       <td><a ng-click="accountHistory(accountType)">Account History</a></td>
     </tr>
   </tbody>
 </table>
        </div>
    </div>
</body>
</html>