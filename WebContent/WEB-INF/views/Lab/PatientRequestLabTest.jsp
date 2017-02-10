<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Lab patientLabRequest</title>

<style type="text/css">
	.Sub{
		padding-left: 30px;
	}
</style>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="resources/css/ivh-treeview.css">
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-1.11.1.js"></script>
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-ui-1.11.1.js"></script>
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Lab/labController.js" ></script> 

</head>
<body ng-controller="labCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">
        
         <h1 class="heading">Patient Lab Request</h1>
       		 <div class="container">
	       		 <div class="row">
	       		 	<div class="col-md-12">	       		
		       		  <form>
		       		   	   <div class="form-group col-md-2" >
						    <label>Patient:</label>
						     <select ng-model="labrequest.patientId" class="form-control col-md-2">
						        <option ng-repeat="patient in listpatientdata" value="{{patient.patientId}}">{{patient.patientId}}</option>
						     </select>	
						     <br>			    
						    <!-- <input type="text" name="" ng-model="labrequest.patientId" class="form-control" > -->
						  </div>
				  
				  
						  <div class="form-group col-md-2" >
						    <label>Age:</label>
						     <select ng-model="patientAge" class="form-control col-md-2">
						        <option ng-repeat="patient in listpatientdata" value="{{patient.patientAge}}">{{patient.patientAge}}</option>
						     </select>
						      <br>					    
						  <!--   <input type="text" name="" ng-model="labrequest.patientAge" class="form-control" > -->
						  </div>
						   <div class="form-group col-md-2" >
						    <label>Doctor:</label>
						     <select ng-model="labrequest.doctorId" class="form-control col-md-2">
						        <option ng-repeat="doctor in listdoctorsdata" value="{{doctor.doctorId}}">{{doctor.doctorId}}</option>
						     </select>	
						     <br>			    
						  <!--   <input type="text" name="" ng-model="labrequest.doctorId" class="form-control" > -->
						  </div>
				  
				  
						  <div class="form-group col-md-2" >
						    <label>Department:</label>
						     <select ng-model="labrequest.departmentId" class="form-control col-md-2">
						        <option ng-repeat="department in listdepartments" value="{{department.departmentId}}">{{department.departmentId}}</option>
						     </select>
						      <br>					    
						   <!--  <input type="text" name="" ng-model="labrequest.departmentId" class="form-control" > -->
						  </div>
		       		  
						</form>						
					</div>
				</div>
			  

					<div class="row">
					    <h4>Main Lab Test</h4>		
					    <div class="col-md-6">
					    	<input type="text" ng-model="bagSearch" />
						     <div
						    ivh-treeview="listmasterlabtests"				    
						    ivh-treeview-label-attribute="'testName'"
						    ivh-treeview-children-attribute="'labmastersubcategeries'"
						    ivh-treeview-selected-attribute="'isSelected'"
						    ivh-treeview-filter="bagSearch"
						    ivh-treeview-expand-to-depth="-1"
						    >
						  </div>
						</div>
						 <div class="col-md-6">	
						 	<div ng-repeat="lab in listmasterlabtests">
						 		<div class="Main" ng-if="lab.__ivhTreeviewIndeterminate || lab.isSelected">
						 			<h4>{{lab.testName}}</h4>
						 			<div class="Sub">
						 				<div ng-repeat="sub in lab.labmastersubcategeries" ng-if="sub.isSelected">
						 					<p>{{sub.testName}}</p>
						 				</div>
						 			</div>
						 		</div>
						 	</div>
						 </div>
				    </div>

				    <div class="row">
		                <div >
		                	<button type="button" class="btn btn-primary col-md-2" ng-click="addPatientLabRequest()">PatientLab Request</button>  
		                </div>  
		       		</div> 	
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