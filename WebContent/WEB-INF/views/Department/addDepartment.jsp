<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Common/includeScript.jsp" %>
     <script src="resources/js/Department/departmentController.js" ></script>
</head>
<body ng-controller="departmentCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    
    <div class="clear">
       <div class="right_block">
           <h1 class="heading">Add Department</h1>
           <form class="centered_form" name="departmentForm" data-ng-submit="save(departmentForm, department)">
              <div class="row">
                  <div class="form-group col-md-4">
                    <label>Department Name:</label>
                    <input type="text" name="" data-ng-model="department.departmentName" class="form-control" placeholder="Enter Department Name">
                  </div>
              </div>
              <div class="row">
                  <div class="form-group col-md-4">
                    <label>Description:</label>
                    <textarea class="form-control" data-ng-model="department.department_description" rows="5" placeholder="Enter Description"></textarea>
                  </div>
              </div>

              <div class="row">
               <div class="col-md-4">
                   <button type="submit"  class="btn btn-default col-md-4">Add</button>  
               </div>       
             </div>
            </form>
       </div>
   </div>
</body>
</html>