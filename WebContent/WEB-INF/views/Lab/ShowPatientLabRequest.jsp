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
<body ng-controller="showLabRequestCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">
        
         <h1 class="heading">Patient LabRequest List</h1>
       		 <div class="buttons" align="right">			
				<a  class="demo">ListLabRequest</a>
			</div>
			<div class="container">
			    <div class="row">
			         <div class="form-group col-md-2" >
				        <label>Prepared By:</label>
					     <select ng-model="update.staffId" class="form-control">
					        <option ng-repeat="staff in staffdata" value="{{staff.staffId}}">{{staff.staffId}}</option>
					     </select>	
				  	</div>  
			    </div>			
			</div>
			<div class="row">
			    <div class="col-md-8 col-md-offset-2">
					<table class="table table-bordered">
					  <thead>
					  	 <th>Patient Name</th>
					  	 <th>Doctor Name</th>
					  	 <th>Test Details</th>
					  </thead>
					  <tbody>
					  	 <tr ng-repeat="labrequest in listLabRequest">					  	 	
					  	 	<td>{{labrequest.patient.patientName}}</td>
					  	 	<td>{{labrequest.doctor.doctorName}}</td>
					  	 	<td>
					  	 		<p ng-repeat="testDetails in labrequest.patientLabTestStatus">{{testDetails.testDetails.testName}}
					  	 			<button ng-show="!testDetails.isTestCompleted" class="btn btn-info" ng-click="updateReport(testDetails,labrequest)">Update Report</button>	
					  	 			<button ng-show="$last && labrequest.isAllTestCompleted" class="btn btn-info" ng-click="ViewReport(labrequest)"> View Report </button>	
					  	 		</p>					  	 		
					  	 	</td>
					  	 </tr>
					  </tbody>
					</table>
			    </div>
		    </div>
			
		<!--Update Labtest  -->
			<script type="text/ng-template" id="updateReport"/>			
				<div>
						<h5>Test Details</h5>
						<p>Name : {{update.testDetails.testDetails.testName}}</p>
						<p>High : {{update.testDetails.testDetails.testHigh}}</p>
						<p>Low : {{update.testDetails.testDetails.testLow}}</p>
				</div>
				<form>
					  <div class="form-group">
					    <label>Update Result</label>
					    <input type="text" class="form-control" ng-model="update.testResult" placeholder="result">
					  </div>
					  <div class="form-group">
					    <label>Notes</label>
					    <input type="text" class="form-control" ng-model="update.notes" placeholder="Notes">
					  </div>
					  
					  <button type="button" class="btn btn-default" ng-click="updateData()">Save</button>
					  <button type="button" class="btn btn-default" ng-click="closeThisDialog()">Cancel</button>
				</form>
			</script>
			
			<!--Display Radiology test -->
			<h1 class="heading">Patient Radiology Request List</h1>
       		 <div class="buttons" align="right">			
				<a  class="demo">ListRadiologyRequest</a>
			</div>
			
			<div class="row">
			    <div class="col-md-8 col-md-offset-2">
					<table class="table table-bordered">
					  <thead>
					  	 <th>Patient Name</th>
					  	 <th>Doctor Name</th>
					  	 <th>Test Details</th>
					  </thead>
					  <tbody>
					  	
					  	 <tr ng-repeat="radiologyrequest in listPatientRadiologyRequest">					  	 	
					  	 	<td>{{radiologyrequest.patient.patientName}}</td>
					  	 	<td>{{radiologyrequest.doctor.doctorName}}</td>
					  	 	<td>
					  	 		<p ng-repeat="testDetails in radiologyrequest.patientRadiologyTestStatus">{{testDetails.testDetails.radiologyTestName}}
					  	 			<button ng-show="!testDetails.isTestCompleted" class="btn btn-info" ng-click="updateRadiologyReport(testDetails,radiologyrequest)">Update Report</button>	
					  	 			<button ng-show="$last && radiologyrequest.isAllTestCompleted" class="btn btn-info" ng-click="ViewRadiologyReport(radiologyrequest)"> View Report </button>	
					  	 		</p>					  	 		
					  	 	</td>
					  	 </tr>
					  
					 </tbody>
					</table>
				</div>
			</div>	
			
			<!--Update Radiologytest notes -->
			<script type="text/ng-template" id="updateRadiologyReport"/>			
				<div>
						<h5>Radiology Test Details</h5>
						<p>Name : {{update.testDetails.testDetails.radiologyTestName}}</p>
						
				</div>
				<form>
					  <div class="form-group">
					    <label>Update Result</label>
					    <input type="text" class="form-control" ng-model="update.testResult" placeholder="result">
					  </div>
					  <div class="form-group">
					    <label>Notes</label>
					    <input type="text" class="form-control" ng-model="update.notes" placeholder="Notes">
					  </div>
					  
					  <button type="button" class="btn btn-default" ng-click="radiologyDataUpdate()">Save</button>
					  <button type="button" class="btn btn-default" ng-click="closeThisDialog()">Cancel</button>
				</form>
			</script>
				 
			<!--View Labtest notes-->
			<script type="text/ng-template" id="viewReport"/>	

				Patient Name : {{selectedListLabRequest.patient.patientName}}					  	 	

				Doctor Name : {{selectedListLabRequest.doctor.doctorName}}		

				<table class="table table-bordered">
					  <thead>
					  	 <th>Test Name</th>
					  	 <th>High Value</th>
					  	 <th>Low Value</th>
					  	 <th>Report Value</th>
					  	 <th>Notes</th>
					  </thead>
					  <tbody>
					  	 <tr ng-repeat="testDetails in selectedListLabRequest.patientLabTestStatus">					  	 	
					  	 	<td>{{testDetails.testDetails.testName}}</td>
					  	 	<td>{{testDetails.testDetails.testHigh}}</td>
					  	 	<td>{{testDetails.testDetails.testLow}}</td>
					  	 	<td>
					  	 		{{testDetails.testResult}}					  	 		
					  	 	</td>
					  	 	<td>
					  	 		{{testDetails.notes}}					  	 		
					  	 	</td>
					  	 </tr>
					  </tbody>
					</table>
			</script>
			
			<!--View Radiologytest notes-->
			<script type="text/ng-template" id="viewRadiologyReport"/>	

				Patient Name : {{selectedListRadiologyRequest.patient.patientName}}					  	 	

				Doctor Name : {{selectedListRadiologyRequest.doctor.doctorName}}		

				<table class="table table-bordered">
					  <thead>
					  	 <th>Test Name</th>
					  	
					  	 <th>Result</th>
					  	 <th>Notes</th>
					  </thead>
					  <tbody>
					  	 <tr ng-repeat="testDetails in selectedListRadiologyRequest.patientRadiologyTestStatus">					  	 	
					  	 	<td>{{testDetails.testDetails.radiologyTestName}}</td>
					  	 	
					  	 	<td>
					  	 		{{testDetails.testResult}}					  	 		
					  	 	</td>
					  	 	<td>
					  	 		{{testDetails.notes}}					  	 		
					  	 	</td>
					  	 </tr>
					  </tbody>
					</table>
			</script>
			
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