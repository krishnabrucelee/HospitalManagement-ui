<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="role" value='<%=session.getAttribute("role")%>'></c:set>
<c:set var="permission" value='<%=session.getAttribute("permission")%>'></c:set>
<c:set var="module" value='<%=session.getAttribute("module")%>'></c:set>
<c:set var="roleList" value='<%=session.getAttribute("roleList")%>'></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<header>
        <div class="container-fluid">
            <div class="row">
            
                <div class="col-md-12">
                    <div class="logo">
                        <img src="resources/images/dummy.jpg" height="50" width="150">
                    </div>
                    <div class="pull-right">
                        <div class="search_box">
                            <form class="navbar-form" role="search">
                                <div class="input-group add-on">
                                    <input class="form-control" placeholder="Search" name="srch-term" id="srch-term" type="text">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="menu dropdown">
                            <img src="resources/images/grid.png" width="24" class="dropdown-toggle" data-toggle="dropdown">
                            <div class="dashboard_block clear dropdown-menu">
                                <div class="col-md-3">
                                    <a href="view.html">
                                        <h4>Patient</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Lab</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Billing</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Blood Bank</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Ward</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Doctor</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>EMR</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Pharmacy</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Nurse</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>HR</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>House Keeping</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Inventory</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Front Office</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">
                                        <h4>Report</h4>
                                        <img src="resources/images/icons.png">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="notification">
                            <img src="resources/images/notification.png">
                        </div>
                        <div class="email">
                            <img src="resources/images/email.png">
                        </div>
                        <div class="profile">
                            <img src="resources/images/user.jpg">
                            <div class="dropdown">
                                <b href="#" data-toggle="dropdown">${name}
							  <span class="caret"></span></b>
                                <ul class="dropdown-menu">
                                    <li><a href="logout">Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
</body>
</html>