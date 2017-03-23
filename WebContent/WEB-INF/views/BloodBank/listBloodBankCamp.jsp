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
   <div class="clear">
        <div class="right_block">

            <h1 class="heading">Blood Bank Listing
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Blood Bank Camp ID</th>
                    <th>Blood Bank Camp Name</th>
                    <th>Blood Bank Camp Created Date</th>
                    <th>Blood Bank Camp Address</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="bloodCamp in bloodCampList">
                  <tr>
                    <td>{{bloodCamp.bloodBankCampId}}</td>
                    <td>{{bloodCamp.bloodBankCampName}}</td>
                    <td>{{bloodCamp.bloodBankCampCreatedDate | date:'dd-MM-yyyy HH:mm:ss'}}</td>
                    <td>{{bloodCamp.bloodBankCampAddress}}</td>
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