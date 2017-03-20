<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../views/Common/includeScript.jsp" %>
    <script src="resources/js/Registration/registrationController.js" ></script>
    <script src="resources/js/Role/roleController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="registrationCtrl">
    <%@ include file="../views/Common/menubar.jsp" %>
    <%@ include file="../views/Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Activity Log
                
            </h1>
            
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>User Name</th>
                    <th>User Id</th>
                    <th>Login time</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="activityLog in activityLogList">
                  <tr>
                    <td>{{activityLog.activityLogId}}</td>
                    <td>{{activityLog.userName}}</td>
                    <td>{{activityLog.userId}}</td>
                    <td>{{activityLog.loginTime | date:'dd-MM-yyyy HH:mm:ss'}}</td>
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