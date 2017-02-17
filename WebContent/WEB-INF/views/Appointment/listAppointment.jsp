<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%
String json = null;
String professionType = (String) session.getAttribute("type");

if(professionType != null )
{
    if(professionType.equals("Doctor"))
    {
        if(session.getAttribute("doctorDetails") != null)
            json = new ObjectMapper().writeValueAsString(session.getAttribute("doctorDetails"));    
    }
    else if(professionType.equals("Nurse"))
    {
        if(session.getAttribute("nurseDetails") != null)
            json = new ObjectMapper().writeValueAsString(session.getAttribute("nurseDetails"));    
    }
    else
    {
        System.out.println("Expected Role is Nurse or Doctor. But Founded is "+professionType);
    }
}
%>

<script type="text/javascript">
var type = '<%= professionType%>';

loggedInUserDetails = <%= json%>;

console.log(loggedInUserDetails);

</script>

<%@ include file="../Common/includeScript.jsp" %>
     <script src="resources/js/Appointment/appointmentController.js" ></script>
</head>



<body ng-controller="appointmentListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Appointment Listing
                <div class="modal-demo">
                    <button type="button" class="btn btn-default" ng-click="addAppointment(appointment)">Add Appointment</button>
                </div>
            </h1>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Patient</th>
                    <th>Appointment Start Time</th>
                    <th>Appointment End Time</th>
                    <th>Purpose</th>
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="appointment in appointmentList | orderBy:'starttime'">
                  <tr>
                    <td> {{$index+1}}</td>
                    <td>{{appointment.patientDetails.patientName}}</td>
                    <td>{{appointment.starttime | date:'dd-MM-yyyy HH:mm'}}</td>
                    <td>{{appointment.endtime | date:'dd-MM-yyyy HH:mm'}}</td>
                    <td>{{appointment.notes}}</td>
                    <td class="dropdown"><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu">
                        <li><a ng-click="viewPatient(appointment.patientDetails.patientId)">View</a></li>
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