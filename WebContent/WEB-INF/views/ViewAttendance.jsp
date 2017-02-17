<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="role" value='<%=session.getAttribute("role")%>'></c:set>
<c:set var="permission" value='<%=session.getAttribute("permission")%>'></c:set>
<c:set var="module" value='<%=session.getAttribute("module")%>'></c:set>
<c:set var="roleList" value='<%=session.getAttribute("roleList")%>'></c:set>
<c:set var="professionType" value='<%=session.getAttribute("type")%>'></c:set>
<c:set var="userId" value='<%=session.getAttribute("userId")%>'></c:set>

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
var type = '<c:out value="${professionType}"/>';
var userId = '<c:out value="${userId}"/>';

loggedInUserDetails = <%= json%>;

</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NurseSchdule</title>
<%@ include file="Common/includeScript.jsp" %>
<script src="resources/js/Schedule/ViewAttendanceCtrl.js" ></script>
<style type="text/css">
  .employeeDispBox{
    height: 200px;
    overflow: auto;
  }
</style>
</head>
<body ng-controller="viewAttendanceCtrl">
    <%@ include file="Common/menubar.jsp" %>
    <%@ include file="Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">
            <h1 class="heading">View Attendance                 
            </h1>           
            <div class="container">               
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-border">
                            <tr>
                                <td>Date</td>
                                <td ng-repeat="attendance in attendanceDetails">{{attendance.date}}</td>
                            </tr>
                            <tr>
                                <td>Shift</td>
                                <td ng-repeat="attendance in attendanceDetails">{{attendance.shiftType}}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
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