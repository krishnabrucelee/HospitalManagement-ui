<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Common/includeScript.jsp" %>
     <script src="resources/js/Registration/registrationController.js" ></script>
</head>
<body ng-controller="userCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
<div class="clear">
        <div class="right_block">

            <h1 class="heading">Profile edit</h1>
            <form class="centered_form">
            <div data-ng-repeat="user in userList">
               <div class="row">
               		<div class="form-group col-md-4">
				    <label>ID:</label>
				    <input type="text" data-ng-model="user.userId" dataclass="form-control" placeholder="Enter ID" disabled>
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>User Name:</label>
				    <input type="text" name="" data-ng-model="user.userName" class="form-control" placeholder="Enter Patient Name">
				  </div>
               </div>

			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>User Email:</label>
				    <input type="text" data-ng-model="user.userEmail" class="form-control" disabled>
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Password:</label>
				    <input type="text" name="" data-ng-model="user.password" class="form-control" placeholder="Enter Age">
				  </div>
			  </div>
			  
			  <div class="row">
                <div class="col-md-4">
                    <button type="button" data-ng-click="editUser(user)" class="btn btn-default col-md-4">Submit</button>  
                </div>       
              </div>
</div>
			</form>
        </div>
    </div>
</body>
</html>