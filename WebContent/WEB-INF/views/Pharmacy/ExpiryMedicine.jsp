<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule" ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expiry Medicine</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Pharmacy/pharmacyController.js" ></script> 

</head>
<body ng-controller="pharmacyCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Expiry Medicine Return</h1>
           <form class="centered_form" name=" " >
            
			<!--  <div class="form-group">
      <label class="control-label">Department Id:</label>         
       <select class="form-control"  ng-model="pharmacyrequest.departmentId" >
       <option ng-repeat="department in departments" value="{{department.departmentId}}">{{department.departmentName}}</option>
       </select>
       
      </div> -->
			  <div class="row">
			  		<div class="form-group col-md-2" >
				    <label> ID:</label>
				    <!--  <select ng-model="expirymedicine.departmentId">
				        <option ng-repeat="department in departments" value="{{department.departmentId}}">{{department.departmentName}}</option>
				     </select> -->
				    
				    <input type="number" name="" ng-model="expirymedicine.departmentId" class="form-control" placeholder="Department Id">
				  </div>

				  <div class="form-group col-md-3">
				    <label>From Date:</label>
				    <p class="input-group">
					   <input type="text" class="form-control" date-picker="dd MMM yyyy " ng-model="expirymedicine.fromDate" is-open="isOpen" datepicker-options="datePickerOption" />
						 <span class="input-group-btn">
							<button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
						 </span>
					 </p>
				  </div>
				  <div class="form-group col-md-3" >
				    <label>To Date:</label>
				     <p class="input-group">
					   <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="expirymedicine.toDate" is-open="isTodate" datepicker-options="datePickerOption" />
						 <span class="input-group-btn">
							<button type="button" class="btn btn-default" ng-click="isT0date=!isTodate"><i class="fa fa-calendar"></i></button>
						 </span>
					 </p>
				  </div>

				  <div class="form-group col-md-2">
				  <!--   <label>Get Medicine:</label> -->
				    
							<button type="button" class="btn btn-primary"  value="GetMedicine">GetMedicine</button>
					
				  </div>
			  </div>
	
	
      
   
   
   

			</form>
        </div>
    </div>
  
    <div>
      <footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>
    </div>
</body>
</html>