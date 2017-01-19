<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Common/includeScript.jsp" %>
     <script src="resources/js/Appointment/appointmentController.js" ></script>
</head>
<body ng-controller="appointmentListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Appointment Listing</h1>
            <div>
                <button type="button" class="btn btn-default" ng-click="addAppointment(appointment)">Add Appointment</button>
            </div>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Doctor</th>
                    <th>Patient</th>
                    <th>Department</th>
                    <th>Appointment Time</th>
                    <th>Purpose</th>
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="appointment in appointmentList">
                  <tr>
                    <td>{{appointment.appointId}}</td>
                    <td> {{appointment.doctor.doctorName}}</td>
                    <td>{{appointment.patient.patientName}}</td>
                    <td>{{appointment.department.departmentName}}</td>
                    <td>{{appointment.appointTime | date:'dd-MM-yyyy hh:mm:ss'}}</td>
                    <td>{{appointment.purpose}}</td>
                    <td class="dropdown"><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu">
                        <li><a ng-click="viewPatient(appointment.patient.patientId)">View</a></li>
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