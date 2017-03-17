<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Equipment</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-1.11.1.js"></script>
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-ui-1.11.1.js"></script>
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Equipment/equipmentController.js" ></script> 

</head>
<body ng-controller="equipmentCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">
         <h1 class="heading">Add Equipment</h1>
             <div class="container">
	       		 <div class="row">

	       		 	<!-- <div class="col-md-6">
				        <p class="input-group">
				          <input type="text" class="form-control" uib-datepicker-popup="{{format}}" ng-model="dt" is-open="popup1.opened" datepicker-options="dateOptions" ng-required="true" close-text="Close" alt-input-formats="altInputFormats" />
				          <span class="input-group-btn">
				            <button type="button" class="btn btn-default" ng-click="open1()"><i class="glyphicon glyphicon-calendar"></i></button>
				          </span>
			        </p>
			      	</div> -->

	       		 	<div class="col-md-12">	       		
		       		  <form>
		       		  
		       		   <div class="form-group col-md-2" >
						    <label>Building Id:</label>
						     <select ng-model="buildingDetails"  ng-options="building.buildingName for building  in listBuildingvalues" class="form-control col-md-2"> 
						  
						     </select>	
						     <br>			    						  
						  </div> 
						  
						   <div class="form-group col-md-2" >
						    <label>Floor Id:</label>
						     <select ng-model="floorDetails" ng-options="floorDetails.floorName for floorDetails  in buildingDetails.floorlist" class="form-control col-md-2">						       
						     </select>	
						     <br>			    						  
						  </div> 
						  
						    <div class="form-group col-md-2" >
						    <label>Room Id:</label>
						     <select ng-model="equipment.roomId" integer ng-options="room.roomId as room.roomName for room  in floorDetails.roomlist" class="form-control col-md-2">					        
						     </select>	
						     <br>			    						  
						  </div>  
				  
				  
						  <div class="form-group col-md-2" >
						    <label>Device Id:</label>
						     <select ng-model="equipment.deviceId" integer class="form-control col-md-2">
						        <option ng-repeat="device in listDevicevalues" value="{{device.deviceId}}">{{device.deviceName}}</option>
						     </select>
						      <br>					    						
						  </div>
						  
						   <div class="form-group col-md-2" >
						    <label>Maintanance Id:</label>
						     <select ng-model="equipment.maintanaceConfigId" integer class="form-control col-md-2">
						        <option ng-repeat="maintanance in listMaintanacevalues" value="{{maintanance.maintanaceConfigId}}">{{maintanance.maintanaceName}}</option>
						     </select>	
						     <br>			    						 
						  </div> 
						  
		       		  </form>
		       		 </div>
		       		 
		       		<!-- <div class="row">
	       		 	<div class="col-md-12">	   -->     		
		       		  <form class = "form-horizontal" role = "form">
   
		   <div class = "form-group">
		      <label for = "firstname" class = "col-sm-2 control-label">Equipment Name</label>
				
		      <div class = "col-sm-10">
		         <input type = "text"  ng-model="equipment.equipmentName"  class = "form-control" placeholder = "Equipment Name">
		      </div>
		   </div>
		   
		   <div class = "form-group">
		      <label for = "lastname" class = "col-sm-2 control-label">Manufacture Name</label>
				
		      <div class = "col-sm-10">
		         <input type = "text" ng-model="equipment.manufactureName" class = "form-control" placeholder = "Manufacture Name ">
		      </div>
		   </div>
		   
		   <div class = "form-group">
		      <label for = "firstname" class = "col-sm-2 control-label">SupplierName</label>
				
		      <div class = "col-sm-10">
		         <input type = "text"  ng-model="equipment.supplierName" class = "form-control"  placeholder = "SupplierName ">
		      </div>
		   </div>
		   
		   <div class = "form-group">
		      <label for = "lastname" class = "col-sm-2 control-label">Price</label>
				
		      <div class = "col-sm-10">
		         <input type = "text" ng-model="equipment.price" class = "form-control"  placeholder = " Price">
		      </div>
		   </div>
   
			   <div class = "form-group">
			      <label class = "col-sm-2 control-label">Manufacture Date</label>
       				<p class="input-group">
					   <input type="text" uib-datepicker-popup="dd-MM-yyyy" class="form-control"   
					   ng-model="equipment.manufactureDate" is-open="isOpen" />
						 <span class="input-group-btn">
							<button type="button" class="btn btn-default" ng-click="isOpen=!isOpen">
							<i class="fa fa-calendar"></i></button>
						 </span>
					 </p>		     
  				 </div>
   <div class = "form-group">
      <label for = "lastname" class = "col-sm-2 control-label">Waranty</label>
		
      <div class = "col-sm-10">
         <input type = "text" ng-model="equipment.waranty" class = "form-control"  placeholder = "Waranty ">
      </div>
   </div>
   <div class = "form-group">
      <div class = "col-sm-offset-2 col-sm-10">
         <button type = "submit" class = "btn btn-default" ng-click="addEquipment(equipment)">Add Equipment</button>
      </div>
   </div>
	
</form>
		       		 <!--  </div>
		       		  </div> -->
		       		</div>
		       	</div>	  
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