<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html data-ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine To Patient</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Pharmacy/pharmacyController.js" ></script> 

</head>
<body ng-controller="pharmacyCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">
        
         <h1 class="heading">Medicine To Patient</h1>
         
         <form action="">
         <div>
            
            <div class="row">
			  		<div class="form-group col-md-3" >
				    <label> Date:</label>
				    <p class="input-group">			    
					   <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm"  data-ng-model="medicinetopatient.billDate" is-open="isOpen" datepicker-options="datePickerOption" />
						 <span class="input-group-btn">
							<button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
						 </span>
					 </p>
				  </div>

				  <div class="form-group col-md-3 col-md-offset-1">
				    <label>Patient Name</label>
				     <input type="text"   data-ng-model="medicinetopatient.patientName" class="form-control" placeholder="Patient Name">
				   <!--  <p class="input-group">			    
					   <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="pharmacyrequest.requestDate" is-open="isOpen" datepicker-options="datePickerOption" />
						 <span class="input-group-btn">
							<button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
						 </span>
					 </p> -->
				  </div>
			  </div>
                <div class="row">
			  		<div class="form-group col-md-3" >
				    <label> Bill number:</label>
				    <input type="numeric"   data-ng-model="medicinetopatient.billNumber" class="form-control" placeholder="Bill number">
				  </div>

				  <div class="form-group col-md-3 col-md-offset-1">
				    <label>Doctor Name</label>
				    <p class="input-group">
				     <input type="text"  data-ng-model="medicinetopatient.doctorName" class="form-control" >									
					 </p>
				  </div>
			  </div>
			  <div>
			    <div class="row" style=" background-color:gray; border-color:green;">
			  		<div class="form-group col-sm-1" >
				    <label>Item Id:</label>
				    <input type="numeric"   data-ng-model="medicinetopatient.billNumber" class="form-control" placeholder="Item Id">
				  </div>

				  <div class="form-group col-sm-2 ">
				    <label>Item Name</label>
				    <p class="input-group">
				     <input type="text"  data-ng-model="medicinetopatient.billItemName" class="form-control" >									
					 </p>
				  </div>
				  <div class="form-group col-sm-1" >
				    <label>Batch Id:</label>
				    <input type="text"   data-ng-model="medicinetopatient.billBatchId" class="form-control" placeholder="Batch Id">
				  </div>

				  <div class="form-group col-sm-2 ">
				    <label>Expiry Date</label>
				   <p class="input-group">			    
					   <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="pharmacyrequest.expiryDate" is-open="billOpen" datepicker-options="datePickerOption" />
						 <span class="input-group-btn">
							<button type="button" class="btn btn-default" ng-click="billOpen=!billOpen"><i class="fa fa-calendar"></i></button>
						 </span>
					 </p>
				   </div>
				   <div class="form-group col-sm-1" >
				    <label>Quantity:</label>
				    <input type="numeric"   data-ng-model="medicinetopatient.billQuantity" class="form-control" >
				  </div>
				  <div class="form-group col-sm-1" >
				    <label>MRP:</label>
				    <input type="numeric"   data-ng-model="medicinetopatient.billMRP" class="form-control" >
				  </div>
				  <div class="form-group col-sm-1" >
				    <label>Discount:</label>
				    <input type="numeric"   data-ng-model="medicinetopatient.billNumber" class="form-control" >
				  </div>
				    <div class="form-group col-sm-1" >
				    <label>Rate:</label>
				    <input type="numeric"   data-ng-model="medicinetopatient.billRate" class="form-control" >
				  </div>
				  <div class="form-group col-sm-1" >
				    <label>Amount:</label>
				    <input type="numeric"   data-ng-model="medicinetopatient.billAmount" class="form-control" >
				  </div>
				  <div class="form-group col-sm-1" >
				    <label>Tax %:</label>
				    <input type="numeric"   data-ng-model="medicinetopatient.billTaxPercentage" class="form-control">
				  </div>
				     <div class="form-group col-sm-1" >
				    <label></label>
				   <button type="button" class="btn btn-primary " ng-click="addMedicineList(masterstock)">Add</button>  
				  </div> 
			  </div>
			 
			  </div>
         </div>
         </form>

</div>
</div>
</body>
</html>