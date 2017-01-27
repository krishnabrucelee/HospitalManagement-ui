<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Master Item</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<%@ include file="../Common/includeScript.jsp" %>
 <script src="resources/js/Pharmacy/pharmacyController.js" ></script>  
 
</head>
<body ng-controller="pharmacyCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
     
      <div class="clear">
        <div class="right_block">
        <h1 class="heading">Master Item Entry </h1>
        <div class="buttons" align="right">			
				<a  ng-click="third()" class="demo">Add new</a>
			</div>
          
		<script type="text/ng-template" id="secondDialog"/>
			<div class="ngdialog-message">
				
			  <form class="centered_form ">             
                <div class="row">
               		<div class="form-group col-md-8">
				    <label>Medicine Name:</label>
				    <input type="text" ng-model="masteritementry.medicineName" name="" class="form-control">
				  </div>
				 </div>
				 <div class="row">
               		<div class="form-group col-md-8">
				    <label>Generic Name:</label>
				    <input type="text" ng-model="masteritementry.genericName" name="" class="form-control">
				  </div>
				 </div>
				 
			   <div class="row">
               		<div class="form-group col-md-8">
				    <label>Manufacture Name:</label>
				    <input type="text" ng-model="masteritementry.companyName" name="" class="form-control">
				  </div>
				 </div>
				 <div class="row">
               		<div class="form-group col-md-8">
				    <label>Pack:</label>
				    <input type="text" ng-model="masteritementry.pack" name="" class="form-control">
				  </div>
				 </div>	 
				  <div class="row">
               		<div class="form-group col-md-8">
				    <label>Purchase Unit:</label>
				    <input type="text" ng-model="masteritementry.purchaseUnit" name="" class="form-control">
				  </div>
				 </div>
				 		  
			 <div class="row">
               		<div class="form-group col-md-8">
				    <label>Sales unit:</label>
				    <input type="text" ng-model="masteritementry.salesUnit" name="" class="form-control">
				  </div>
				 </div>	 
			    <div class="row">
               		<div class="form-group col-md-8">
				    <label>ItemType:</label>
				    <input type="text" ng-model="masteritementry.itemType" name="" class="form-control">
				  </div>
				 </div>
				  <div class="row">
               		<div class="form-group col-md-8">
				    <label>Category:</label>
				    <input type="text" ng-model="masteritementry.category" name="" class="form-control">
				  </div>
				 </div>	 
				  <div class="row">
               		<div class="form-group col-md-8">
				    <label>Reorder Quantity:</label>
				    <input type="number" ng-model="masteritementry.reorderQuantity" name="" class="form-control">
				  </div>
				 </div>	 
				  <div class="row">
               		<div class="form-group col-md-8">
				    <label>Rack:</label>
				    <input type="number" ng-model="masteritementry.rack" name="" class="form-control">
				  </div>
				 </div>	 
			 <!--  <div class="row">
               		<div class="form-group col-md-8">
				    <label> ChemicalComposition:</label>
				    <input type="text" ng-model="masteritementry.chemicalComposition" name="" class="form-control">
				  </div>
				 </div> -->			  
			
			 <div class="row">
               		<div class="form-group col-md-10">
				    <label>Item Description:</label>
				    <input type="textarea" ng-model="masteritementry.itemDescription" name="" class="form-control">
				  </div>
				 </div>		  
			
		       <div class="row">
                	  <label></label>
                    <button type="button" class="btn btn-primary col-md-6" ng-click="addMasterItemEntry(masteritementry)">Add</button>  
                </div>
			   
			</form>
			<div>	
			
		</script>
		
		 <table class="scroll table table-bordered">
		<thead>
		<tr><th>Medicine Id</th><th>Medicine Name</th><th>Company Name</th><th> Generic Name</th><th>Type</th><th>Description</th> <th width="20">Action</th></tr>
		</thead>
		 <tr class="success" ng-repeat="item in masteritem">
		  <td>{{item.medicineId}}</td>
		    <td>{{item.medicineName}}</td>
		     <td>{{item.genericName}}</td>
		     <td>{{item.companyName}}</td>		
		     <td>{{item.itemType}}</td>					 
		 <td>{{item.itemDescription}}</td>
		
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