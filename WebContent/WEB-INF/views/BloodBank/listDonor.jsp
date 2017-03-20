<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Donor</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/BloodBank/bloodBankController.js" ></script>
</head>
<body ng-controller="bloodCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Donor Listing
                
                <div class="modal-demo">
                <button type="button" class="btn btn-default" ng-click="addDonor()">Add Donor</button>
            </div>
            
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Donor Name</th>
                    <th>Sex</th>
                    <th>Age</th>
                    <th>Date of Register</th>
                    <th>Blood Group</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="donor in donorList">
                  <tr>
                    <td>{{donor.donorId}}</td>
                    <td>{{donor.donorName}}</td>
                    <td>{{donor.donorGender}}</td>
                    <td>{{donor.donorAge}}</td>
                    <td>{{donor.dateOfRegister  | date:'dd-MM-yyyy HH:mm:ss'}}</td>
                    <td>{{donor.donorBloodGroup}}</td>
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