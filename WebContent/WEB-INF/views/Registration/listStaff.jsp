<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Registration/registrationController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="registrationCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 <div class="clear">
        <div class="right_block">

            <h1 class="heading">Staff Listing
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Sex</th>
                    <th>DOJ</th>
                    <th>Profession Type</th>
                    <th>Address</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="staff in staffList">
                  <tr>
                    <td>{{staff.employeeId}}</td>
                    <td>{{staff.staffName}}</td>
                    <td>{{staff.staffGender}}</td>
                    <td>{{staff.staffDoj | date:'dd-MM-yyyy'}}</td>
                    <td>{{staff.staffWork}}</td>
                    <td>{{staff.staffAddress}}</td>
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