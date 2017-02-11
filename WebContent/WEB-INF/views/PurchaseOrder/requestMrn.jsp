<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/PurchaseOrder/purchaseOrderController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="purchaseOrderCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>

                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                        <label>Purchase Order:</label>
                        <select class="form-control"  data-ng-model="mrn.purchaseOrder" data-ng-options="purchase.purchaseOrderId for purchase in purchaseOrderList">
								<option value="">Select</option>
							</select>
                    </div>
                     <div class="form-group">
                            <label>Supplier:</label>
                         <select class="form-control"  data-ng-model="mrn.supplier" data-ng-options="supplier.displayName for supplier in supplierList">
								<option value="">Select</option>
							</select>
					</div>
                            </div>
                    <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Mrn Date: </label>
                       <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy" data-ng-model="mrn.createdDate" is-open="createOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="createOpen=!createOpen"><i class="fa fa-calendar"></i></button>
							    </span>
					</p>
                                    </div>
                   </div>   
                   <div class="row">
               		<div class="form-group col-md-8">
				    <label>Item Name:</label>
				    <input type="text"  data-ng-model="masterstock.itemName" name="" class="form-control">
				  </div>
				 </div>
				   <div class="form-group col-md-4">
                        <label>Depeartment ID:</label>
                        <select class="form-control"  data-ng-model="masterstock.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
						</select>
                    </div>
				 <div class="row">
               		<div class="form-group col-md-8">
				    <label> Batch Id:</label>
				    <input type="text"  data-ng-model="masterstock.batchId" name="" class="form-control">
				  </div>
				 </div>
			    <div class="row">
               		<div class="form-group col-md-8">
				    <label> Purchase date:</label>
				    <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="masterstock.purchaseDate" is-open="isOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
							    </span>
					</p>
				  </div>
				 </div>
			  <div class="row">
               		<div class="form-group col-md-8">
				    <label> Manufacture Date:</label>
				   <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy" data-ng-model="masterstock.manufactureDate" is-open="myDateOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="myDateOpen=!myDateOpen"><i class="fa fa-calendar"></i></button>
							    </span>
					</p>
				  </div>
				 </div>			  
			  <div class="row">
               		<div class="form-group col-md-8">
				    <label>Expiry Date:</label>
				   <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="mediumDate" data-ng-model="masterstock.expiryDate" is-open="expDate" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="expDate=!expDate"><i class="fa fa-calendar"></i></button>
							    </span>
					</p>
				  </div>
				 </div>			  
			   			 	  					  			 				 			 
			    <div class="row">
               		<div class="form-group col-md-8">
				    <label> One Units Details:</label>
				    <input type="text"  data-ng-model="masterstock.itemUnits" name="" class="form-control">
				  </div>
				 </div>
				  <div class="row">
               		<div class="form-group col-md-8">
				    <label> One Units total:</label>
				    <input type="number"  data-ng-model="masterstock.numbersInUnit" name="" class="form-control">
				  </div>
				 </div>
				 <div class="row">
               		<div class="form-group col-md-8">
				    <label> Number of Units:</label>
				    <input type="number"  data-ng-model="masterstock.numberofUnits" name="" class="form-control">
				  </div>
				 </div>
			   <!-- <div class="row">
               		<div class="form-group col-md-8">
				    <label> Quantity:</label>
				    <input type="number"  data-ng-model="masterstock.quantity" name="" class="form-control">
				  </div>
				 </div>	 -->  		  
			 		
			 	<div class="row">
               		<div class="form-group col-md-8">
				    <label> Price:</label>
				    <input type="number"  data-ng-model="masterstock.price" name="" class="form-control">
				  </div>
				 </div>	       
                             <button type="button" class="btn btn-primary col-md-6" ng-click="addMrn(mrn, masterstock)">Add</button> 
                        </div>
                        
</body>
</html>