<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Common/includeScript.jsp" %>
<script src="resources/js/Doctor/doctorController.js" ></script>
</head>
<body data-ng-controller="doctorListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
<div class="clear">
        <div class="right_block">
            <h1 class="heading clear">
            <span>Doctor Listing</span>
            </h1>

            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Doctor ID</th>
                    <th>Doctor Name</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Specialization</th>
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="consultant in consultantList">
                  <tr>
                    <td>{{consultant.doctorRegId}}</td>
                    <td>{{consultant.doctorName}}</td>
                    <td>{{consultant.gender}}</td>
                    <td>{{consultant.doctorAge}}</td>
                    <td>{{consultant.doctorType}}</td>
                    <td class="dropdown"><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu">
                        <li><a ng-click="viewConsultant(consultant.doctorId)">View Consultant</a></li>
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>


            
        </div>
    </div>
</body>
</html>