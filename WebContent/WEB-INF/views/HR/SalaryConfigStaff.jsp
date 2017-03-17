<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SalaryConfig</title>
<!--<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />-->

<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/HR/hrController.js" ></script> 
</head>
<body ng-controller="hrCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    
      <div class="clear">
        <div class="right_block">
         <h1 class="heading">Salry Config</h1>
         
         
         <div class="container">
 
			  <form class="form-horizontal">
			    <div class="form-group">
			      <label class="control-label col-sm-2" >Name:</label>
			      <div class="col-sm-4">
			       <label>Staff:</label>
						     <select ng-model="staffsalaryconfig.staffId" class="form-control col-md-4" integer>
						        <option ng-repeat="staff in staffdata" value="{{staff.staffId}}">{{staff.staffName}}</option>
						     </select>	
						     <br>	
			       
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="control-label col-sm-2" >PermonthAmount:</label>
			      <div class="col-sm-4">          
			        <input type="text" class="form-control"  placeholder="Enter Amount" ng-model="staffsalaryconfig.perMonthAmount" integer>
			      </div>
			    </div>
			    <div class="col-md-12">
								 	 <button type="button"  ng-click="addSalaryConfig()" class="btn btn-success">
									  	<img src="resources/images/add_icon.png" width="20" />SalaryConfig 
									  </button> 
							 	</div>
			    
			   
			  </form>
          </div>
         
         	
         
         <div class="container">
	       		 <div class="row">
	       		<!--<div ng-repeat="salaryconfig  in salaryConfigDetails">-->
	       		 	<div class="col-md-6">	
			        <table>
			          <thead>
			          <th>Name</th> <th>Percentage</th>  <th>New Percentage</th><th>Amount</th> <th>Add</th>  
			          </thead>
			           <tbody>
			            <tr ng-repeat="config in SalaryConfigdata">
			               <td>
			               <input type="text" ng-model="config.name"></input>
			             
						    </td>
						      <td>{{config.percentage}}</td> 
						     <td>
						     <div class="form-group">			     
						      <div class="col-sm-6">          
						        <input type="text" class="form-control"  ng-model="config.percentage" value="" integer>
						      </div>
						    </div>
						    </td>
						    <td>{{config.amount}}</td>
						    <td>
						     <button ng-click="removeComponent($index)">Delete</button>
						    </td>
						   
			            </tr>
			           
			           </tbody>
			        </table>
			        </div>
			       <!--</div>-->
			        <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10">
			        <button type="submit" class="btn btn-primary" ng-click="saveStaffSalaryConfig()">Submit</button>
			      </div>
			    </div>
          </div>
        </div>
        </div>
         </div>
        </div>
        
        
      <footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>
    </div>
</body>
</html>