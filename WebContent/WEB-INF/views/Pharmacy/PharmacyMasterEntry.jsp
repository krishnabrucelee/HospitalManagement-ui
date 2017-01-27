<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html  data-ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Master Entry</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<%@ include file="../Common/includeScript.jsp" %>
 <script src="resources/js/Pharmacy/pharmacyController.js" ></script>  
 
</head>
<body data-ng-controller="pharmacyCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
     
      <div class="clear">
        <div class="right_block">
        <h1 class="heading">Master Stock Entry </h1>
        <div class="buttons" align="right">			
				<a  data-ng-click="pharmacyStock()" class="demo">Add new</a>
			</div>
          
		<script type="text/ng-template" id="secondDialog"/>
			<div class="ngdialog-message">
				<h3>Medicine Stock Entry</h3>
			  <form class="centered_form ">        
                <div class="row">
               		<div class="form-group col-md-8">
				    <label>Medicine Id:</label>
				    <input type="number"  data-ng-model="masterstock.medicineId" name="" class="form-control">
				  </div>
				 </div>
				 <div class="row">
               		<div class="form-group col-md-8">
				    <label>Item Name:</label>
				    <input type="text"  data-ng-model="masterstock.itemName" name="" class="form-control">
				  </div>
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
		       <div class="row">
                	  <label></label>
                    <button type="button" class="btn btn-primary col-md-6" ng-click="addMasterStockEntry(masterstock)">Add</button>  
                </div>
			   
			</form>
			<div>	
			
		</script>
		
		 <table class="scroll table table-bordered">
		<thead>
		<tr><th>Medicine Id</th><th>Item Name</th><th>Batch Id</th><th> PurchaseDate</th><th>Manuf date</th><th>Expiry Date</th><th>Units</th><th>Quantity</th><th>Price</th> <th width="20">Action</th></tr>
		</thead>
		 <tr class="success" data-ng-repeat="stock in masterstock">
		  <td>{{stock.medicineId}}</td>
		    <td>{{stock.itemName}}</td>
			<td>{{stock.batchId}}</td>
		 <td>{{stock.purchaseDate | date: 'dd-MM-yyyy'}}</td>		
		  <td>{{stock.manufactureDate | date: 'dd-MM-yyyy'}}</td>
		 <td>{{stock.expiryDate | date: 'dd-MM-yyyy'}}</td>		
		 <td>{{stock.itemUnits}}</td>		
		<td>{{stock.quantity}}</td>
		 <td>{{stock.price}}</td>
		  <td>
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Action
                       <span class="caret"></span></button>
                          <ul class="dropdown-menu">
                              <li><a href="#" data-toggle="modal" ng-click=" " data-target="#myModal2" >Edit</a></li>
                                  <li><a href="" ng-click=" " >Delete</a></li>
                            </ul>
                   </div>                                                       
           </td>
		 </tr>
		
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