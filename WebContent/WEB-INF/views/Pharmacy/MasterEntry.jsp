<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Master Entry</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />

<%@ include file="../Common/includeScript.jsp" %>
 <script src="resources/js/Pharmacy/pharmacyController.js" ></script>  
 
</head>
<body ng-controller="pharmacyCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
     
      <div class="clear">
        <div class="right_block">
        <h1 class="heading">Master Entry Form</h1>
        <div class="buttons" align="right">
				<!-- <a  ng-click="open()" class="demo">Demo</a> -->
				<a  ng-click="second()" class="demo">Add new</a>
			</div>
           <!--  <form class="centered_form">
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
                    <label>Purchase date: {{myDateTime}} </label>
                  
                    
                     <div class="col-sm-14">
			               <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="masterentry.purchaseDate" is-open="isOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
							    </span>
							</p>
            		</div>
                   
                  </div>
                  
                  <div class="form-group col-md-4 col-md-offset-1">
                    <label>Manufacturing Date: {{myDate}}</label>
                    
                      <div class="col-sm-14">
               				 <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="masterentry.manufactureDate" enable-time="false"  is-open="myDateOpen" datepicker-options="datePickerOption"  />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="myDateOpen=!myDateOpen"><i class="fa fa-calendar"></i></button>
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
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="masterentry.expiryDate" enable-time="false"  is-open="expDate" datepicker-options="datePickerOption"  />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="expDate = !expDate "><i class="fa fa-calendar"></i></button>
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

			</form> -->
			
		<script type="text/ng-template" id="secondDialog">
			<div class="ngdialog-message">
				
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
                    <label>Purchase date: {{myDateTime}} </label>
                  
                    
                     <div class="col-sm-12">
			               <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="masterentry.purchaseDate" is-open="isOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
							    </span>
							</p>
            		</div>
                   
                  </div>
                  
                  <div class="form-group col-md-4 col-md-offset-1">
                    <label>Manufacturing Date: {{myDate}}</label>
                    
                      <div class="col-sm-14">
               				 <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="masterentry.manufactureDate" enable-time="false"  is-open="myDateOpen" datepicker-options="datePickerOption"  />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="myDateOpen=!myDateOpen"><i class="fa fa-calendar"></i></button>
							    </span>
							</p>                              
                       </div>
                   
                  </div>    
              </div>

              <div class="row">
                <div class="form-group col-md-4">
                    <label>Expiry Date:</label>
                 
                      <div class="col-sm-12">
                      <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="masterentry.expiryDate" enable-time="false"  is-open="expDate" datepicker-options="datePickerOption"  />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="expDate = !expDate "><i class="fa fa-calendar"></i></button>
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
				
			
		</script>
		
		 <table class="scroll table table-bordered">
		<thead>
		<tr><th>Medicine Id</th><th>Medicine Name</th><th>MedicinePower</th><th> Composition</th><th>Batch Id</th><th>Manufacture Date</th><th>Expiry Date</th><th>Count</th> <th width="20">Action</th></tr>
		</thead>
		 <tr class="success" ng-repeat="master in masterdata">
		  <td>{{master.medicineId}}</td>
		    <td>{{master.medicineName}}</td>
		 <td>{{master.medicinePower}}</td>
		 <td>{{master.medicineComposition}}</td>
		 <td>{{master.medicineBatchId}}</td>
		  <td>{{master.manufactureDate | date: 'dd-MM-yyyy' }}</td>
		 <td>{{master.expiryDate | date: 'dd-MM-yyyy'}}</td>
		 <td>{{master.medicinePrice}}</td>
		 <td>{{master.medicineCount}}</td>
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