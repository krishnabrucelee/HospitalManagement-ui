<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Common/includeScript.jsp" %>
<script src="resources/js/Doctor/doctorController.js" ></script>
</head>
<body data-ng-controller="doctorCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Patient Listing
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Sex</th>
                    <th>DOB</th>
                    <th>Patient Type</th>
                    <th>Blood Group</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="patients in consultantList">
                  <tr>
                    <td>{{patients.patient.patientRefNumber}}</td>
                    <td>{{patients.patient.patientName}}</td>
                    <td>{{patients.patient.patientGender}}</td>
                    <td>{{patients.patient.patientDob | date:'dd-MM-yyyy HH:mm:ss'}}</td>
                    <td>{{patients.patient.patientType}}</td>
                    <td>{{patients.patient.bloodGroup}}</td>
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