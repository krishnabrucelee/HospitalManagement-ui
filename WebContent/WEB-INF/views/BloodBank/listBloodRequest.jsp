<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Blood Bank Camp</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/BloodBank/bloodBankController.js" ></script>
</head>
<body ng-controller="bloodCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
<body>
 <div class="clear">
        <div class="right_block">

            <h1 class="heading">Blood Request Listing
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Blood Request Id</th>
                    <th>Blood Requested By</th>
                    <th>Blood Requested To</th>
                    <th>blood Requested Date</th>
                    <th>Blood Group</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="bloodRequest in bloodRequestList">
                  <tr>
                    <td>{{bloodRequest.bloodRequestId}}</td>
                    <td>{{bloodRequest.bloodRequestedBy}}</td>
                    <td>{{bloodRequest.patient.patientName}}</td>
                    <td>{{bloodRequest.bloodRequestedDate | date:'dd-MM-yyyy HH:mm:ss'}}</td>
                    <td>{{bloodRequest.bloodGroup}}</td>
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