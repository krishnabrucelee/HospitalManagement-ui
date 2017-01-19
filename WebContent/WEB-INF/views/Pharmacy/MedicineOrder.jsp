<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine Order</title>
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Pharmacy/pharmacyController.js" ></script> 
<script type="text/javascript">
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
    </script>
</head>
<body ng-controller="pharmacyCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Issue Order Form</h1>
           <form class="centered_form" name="addMedicineorderForm" >
               <div class="row">
               		<div class="form-group col-md-4">
				    <label>Medicine Name:</label>
				    <input type="text" name="" ng-model="medicineorder.medicineName" class="form-control" placeholder="Enter Medicine Name">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Supplier Name:</label>
				    <input type="text" name="" ng-model="medicineorder.supplierName" class="form-control" placeholder="Enter Supplier Name">
				  </div>
               </div>

			  <div class="row">
			  		<div class="form-group col-md-4" >
				    <label>Company Name:</label>
				    <input type="text" name="" ng-model="medicineorder.companyName" class="form-control" placeholder="Company Name">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Item Details:</label>
				    <input type="text" name=""  ng-model="medicineorder.itemDetails" class="form-control" placeholder="Enter Item Details">
				  </div>
			  </div>

			 
			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Quantity:</label>
				    <input type="number" name=""  ng-model="medicineorder.itemCount" class="form-control" placeholder="Enter total Quantity">
				  </div>
				    <div class="form-group col-md-4 col-md-offset-1">
				    <label>Medicine Power:</label>
				    <input type="text"  ng-model="medicineorder.medicinePower"  class="form-control" placeholder="Enter Medicine Power">
				  </div>
			
				    <div class="form-group col-md-4 col-md-offset-1">
				    <label>Order Date:</label>
				    <input type="text" name=""  ng-model="medicineorder.orderDate" class="form-control">
				  </div> 	 
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