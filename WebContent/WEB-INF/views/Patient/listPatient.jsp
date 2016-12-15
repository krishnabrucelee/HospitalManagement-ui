<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Common/includeScript.jsp" %>
     <script src="resources/js/Patient/patientController.js" ></script>
</head>
<body ng-controller="patientListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Patient Listing</h1>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Sex</th>
                    <th>DOB</th>
                    <th>Blood Group</th>
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="patient in patientList">
                  <tr>
                    <td>{{patient.patientRefNumber}}</td>
                    <td>{{patient.patientName}}</td>
                    <td>{{patient.patientGender}}</td>
                    <td>{{patient.patientDob | date:'dd-MM-yyyy'}}</td>
                    <td>{{patient.bloodGroup}}</td>
                    <td class="dropdown"><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu">
                        <li><a href="#">View</a></li>
                        <li><a href="#">Edit</a></li>
                        <li><a href="#">Delete</a></li>
                      </ul>
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
    </div>
</body>
</html>