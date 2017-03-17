<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Master Lab</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
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
        
         <h1 class="heading">Master Labtest</h1>
       		<div class="container">
	       		 <div class="row">
	       		 	<div class="col-md-3">	       		
		       		  <form>
						  <div class="form-group">
						    <label>Test Name:</label>
						    <input type="text" class="form-control" ng-model="labmaster.testName">
						  </div>
						  
						   <div class="form-group">
					        <label class="control-label">Test Subcategeries List:</label>		       
			              </div>
						</form>						
					</div>
				</div>
				
				<div class="row" >
					<div  ng-repeat="lab in labmastersubcategeries">
					   <form >
					   <div class="row">
				  	
					  <div class="form-group col-sm-2">
					    <label>Name</label>
					    <input type="text" class="form-control" ng-model="lab.testName">
					   
					  </div>
					  <div class="form-group col-sm-1" >
					    <label>Methodology</label>
					    <input type="text"  ng-model="lab.testMethodology" class="form-control" >
					  </div>
					  <div class="form-group col-sm-1">
					    <label>Sample</label>
					  <input type="text" class="form-control" ng-model="lab.testSample" value-date-format format="dd-MM-yyyy">
					   </div>
					   <div class="form-group col-sm-1" >
					    <label>Volume</label>
					   <input type="text"  class="form-control" ng-model="lab.testVolume" >
					  </div>
					  <div class="form-group col-sm-1" >
					    <label>Storage</label>
					    <input type="text"  class="form-control" ng-model="lab.testStorage" >
					  </div>
					  
					    <div class="form-group col-sm-1" >
					    <label>Report</label>
					   <input type="text" class="form-control" ng-model="lab.testReport " >
					  </div>
					  <div class="form-group col-sm-1" >
					    <label>Instruction</label>
					    <input type="text" class="form-control" ng-model="lab.testInstruction">
					  </div>
					  
					  <div class="form-group col-sm-1" >
					    <label>High</label>
					    <input type="text"  ng-model="lab.testHigh" class="form-control" >
					  </div>
					  <div class="form-group col-sm-1" >
					    <label>Low</label>
					    <input type="text"  ng-model="lab.testLow" class="form-control" >
					  </div>
					  
					  <div class="form-group col-sm-1" >
					    <label>Price</label>
					    <input type="text" class="form-control" ng-model="lab.price">
					  </div>
					   
					  </div>
					  </div>
					 
					  </form>
					</div>
				  <div class="col-md-12">
					 	 <button type="button"  ng-click="addList()" class="btn btn-success">
						  	<img src="resources/images/add_icon.png" width="20" />AddTest Categories 
						  </button> 
				 	</div>				 	
			  </div>
			  <hr>
			  	 <div class="row" align="left">
                   <div>          
                    <button type="button" class="btn btn-primary col-md-2" ng-click="addMaterLabTest(labmaster)">Add Master Lab</button>  
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