<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Master Entry</title>
<%@ include file="../Common/includeScript.jsp" %>
<link rel="stylesheet" href="resources/css/style1.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.2.0/ui-bootstrap-tpls.js"></script>
    <script src="resources/js/datetime-picker.js"></script>
    <script src="resources/js/appp.js"></script>
 <script src="resources/js/Pharmacy/pharmacyController.js" ></script>  
</head>
<body ng-controller="pharmacyCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
     
      <div class="clear">
        <div class="right_block">
        <h1 class="heading">Master Entry Form</h1>
            <form class="centered_form">
               <div class="row">
               		<div class="form-group col-md-4">
				    <label>Medicine Id:</label>
				    <input type="number" ng-model="masterentry.medicineId" name="" class="form-control">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Medicine Name:</label>
				    <input type="text" name="" ng-model="masterentry.medicineName" class="form-control" placeholder="Enter Medicine Name">
				  </div>
               </div>

               <div class="row">
                <div class="form-group col-md-4">
                    <label>Purchase date:</label>
                  
                    
                   
            <div class="col-sm-14">
                <p class="input-group">
                    <input type="text" class="form-control" datetime-picker="MM/dd/yyyy HH:mm" ng-model="masterentry.purchaseDate.date" is-open="pharmacyCtrl.purchaseDate.open" />
              <span class="input-group-btn">
                  <button type="button" class="btn btn-default" ng-click="pharmacyCtrl.openCalendar($event, 'purchaseDate')"><i class="fa fa-calendar"></i></button>
              </span>
                </p>
            </div>
                    
                  </div>
                  
                  <div class="form-group col-md-4 col-md-offset-1">
                    <label>Manufacturing Date:</label>
                  
                  
            <div class="col-sm-14">
                <p class="input-group">
                    <input type="text" class="form-control" datetime-picker="mediumDate" ng-model="masterentry.manufactureDate" is-open="pharmacyCtrl.manufactureDate.open" enable-time="false" datepicker-options="pharmacyCtrl.picker1.datepickerOptions" close-on-date-selection="false" datepicker-append-to-body="true" />
              <span class="input-group-btn">
                  <button type="button" class="btn btn-default" ng-click="pharmacyCtrl.openCalendar($event, 'manufactureDate')"><i class="fa fa-calendar"></i></button>
              </span>
                </p>
            </div>
                   
                  </div>    
              </div>

              <div class="row">
                <div class="form-group col-md-4">
                    <label>Expiry Date:</label>
                  
                         
            <div class="col-sm-14">
                <p class="input-group">
                    <input type="text" class="form-control" datetime-picker="mediumDate" ng-model="masterentry.expiryDate.date" is-open="pharmacyCtrl.expiryDate.open" enable-time="false" datepicker-options="pharmacyCtrl.picker1.datepickerOptions" close-on-date-selection="false" datepicker-append-to-body="true" />
              <span class="input-group-btn">
                  <button type="button" class="btn btn-default" ng-click="pharmacyCtrl.openCalendar($event, 'expiryDate')"><i class="fa fa-calendar"></i></button>
              </span>
                </p>
            </div>
                  </div>
                  
                  <div class="form-group col-md-4 col-md-offset-1">
                    <label>Supplier Name:</label>
                    <input type="text" name="" ng-model="masterentry.supplierName" class="form-control" placeholder="Supplier Name">
                  </div>    
              </div>

			  <div class="row">
			  		<div class="form-group col-md-4" >
				    <label>Company Name:</label>
				    <input type="text" name="" ng-model="masterentry.companyName" class="form-control" placeholder="Enter Company Name">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Medicine Power:</label>
				    <input type="text" name="" ng-model="masterentry.medicinePower" class="form-control" placeholder="Enter Medicine Power">
				  </div>
			  </div>

			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>Batch Id:</label>
				    <input type="text" name="" ng-model="masterentry.medicineBatchId" class="form-control" placeholder="Enter Batch Id">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Medicine Composition:</label>
				    <input type="text" ng-model="masterentry.medicineComposition"class="form-control" placeholder="Enter Medicine Composition">
				  </div>
			  </div>
			  
			  <div class="row">
                    <div class="form-group col-md-4">
                    <label>Price:</label>
                    <input type="number" name="" ng-model="masterentry.medicinePrice"class="form-control" placeholder="Enter Price">
                  </div>

                  <div class="form-group col-md-4 col-md-offset-1">
                    <label>Quantity:</label>
                    <input type="number" ng-model="masterentry.medicineCount" class="form-control" placeholder="Enter total Quantity">
                  </div>
              </div>

			  <div class="row">
			  
			  <div class="form-group col-md-4 ">
				    <label>Medicine Type:</label>
				    <input type="text" ng-model="masterentry.medicineType"class="form-control" placeholder="Enter Medicine Type">
				  </div>
                <div class="col-md-4  col-md-offset-1">
                	  <label></label>
                    <button type="button" class="btn btn-primary col-md-6" ng-click="addMasterEntry(masterentry)">Add</button>  
                </div>       
              </div>

			</form>
        </div>
        </div>
        
        <footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>
</body>
</html>