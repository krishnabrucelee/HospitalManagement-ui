<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="role" value='<%=session.getAttribute("role")%>'></c:set>
<c:set var="permission" value='<%=session.getAttribute("permission")%>'></c:set>

<c:set var="roleList" value='<%=session.getAttribute("roleList")%>'></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="sidebar_menu">
        <div class="left_menu">
            <li><a href="listPatient">Patient</a>
                <ul>
                    <li><a href="#">Patient Registration</a></li>
                    <li><a href="#">Appointment Schedule</a></li>
                    <li><a href="#">Patient Listing</a></li>
                </ul>
            </li>
            <li><a href="#">Inpatient</a>
                <ul>
                    <li><a href="#">Patient Registration</a></li>
                    <li><a href="#">Appointment Schedule</a></li>
                    <li><a href="#">Patient Listing</a></li>
                </ul>
            </li>
            <li><a href="#">Patient</a>
                <ul>
                    <li><a href="#">Patient Registration</a></li>
                    <li><a href="#">Appointment Schedule</a></li>
                    <li><a href="#">Patient Listing</a></li>
                </ul>
            </li>
            <li><a href="#">Inpatient</a>
                <ul>
                    <li><a href="#">Patient Registration</a></li>
                    <li><a href="#">Appointment Schedule</a></li>
                    <li><a href="#">Patient Listing</a></li>
                </ul>
            </li>
        </div>
    </div>
</body>
</html>