<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine Order</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Pharmacy/pharmacyController.js" ></script> 
<!-- <script type="text/javascript">
    angular.module('ui.bootstrap.demo', ['ui.bootstrap', 'ui.bootstrap.datetimepicker']);
    angular.module('ui.bootstrap.demo').controller('DateTimePicker',
        function($scope, $timeout) {
            $scope.dateTimeNow = function() {
                $scope.date = new Date();
                $scope.showWeeks = false;
            };
            $scope.dateTimeNow();

            $scope.options = {
                showWeeks: false
            };
        });
    </script> -->
</head>
<body ng-controller="pharmacyCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Issue Order Form</h1>
           <form class="centered_form" name="addMedicineorderForm" >
             <!--  <div class="row">
               		<div class="form-group col-md-4" >
				    <label>Supplier Name:</label>
				    <input type="text" name="" ng-model="medicineorder.companyName" class="form-control" placeholder="Company Name">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Order Date:</label>
				     <p class="input-group">
					   <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="masterentry.purchaseDate" is-open="isOpen" datepicker-options="datePickerOption" />
						 <span class="input-group-btn">
							<button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
						 </span>
					 </p>
				  </div>
               </div>  -->

			  <div class="row">
			  		<div class="form-group col-md-4" >
				    <label>Supplier Name:</label>
				    <input type="text" name="" ng-model="medicineorder.supplierName" class="form-control" placeholder="Supplier Name">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Order Date:</label>
				    <p class="input-group">
					   <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="medicineorder.orderDate" is-open="isOpen" datepicker-options="datePickerOption" />
						 <span class="input-group-btn">
							<button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
						 </span>
					 </p>
				  </div>
			  </div>
	 <form class="form-inline">
   <!--  <div class="form-group">
      <label class="control-label" for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div> -->
    
  </form> 
	<form class="form-inline">
     <div  ng-repeat="input in medicineTypes"> 
     <div class="form-group">
      <label class="control-label">Medicine Name:</label>    
      <input type="text" class="form-control"  ng-model="input.medicineName"> </div>
      <div class="form-group">
       <label class="control-label">Medicine power:</label>
       <input type="text" class="form-control"  ng-model="input.medicinePower"></div>
       <div class="form-group">
        <label class="control-label">Company:</label>
        <input type="text" class="form-control"  ng-model="input.companyName"> </div>
        <div class="form-group">
        <label class="control-label">Medicine Type:</label>
        <input type="text" class="form-control"  ng-model="input.medicineTypes"> </div>
        <div class="form-group">
        <label class="control-label">Quantity:</label>
        <input type="number" class="form-control"  ng-model="input.medicineCount"></div>
        <!-- <button class="addfields" ng-click="add()"> <img src="resources/images/add_icon.png" width="20" />Add Medicine</button> -->
    </div>
     </form>
    
      
    
   
    <button class="addfields" ng-click="add()"> <img src="resources/images/add_icon.png" width="20" />Add Medicine</button>
    <!-- <button ng-click="log()">Log</button> -->
</div>
			
			  <div class="row">
                <div class="col-md-4">
                    <button type="button" class="btn btn-default col-md-4" ng-click="addMedicine(medicineorder)">Add</button>  
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