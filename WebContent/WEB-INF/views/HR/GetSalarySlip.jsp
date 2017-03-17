<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GetSalaryByEmp</title>
 <!-- <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />  -->
<!-- <link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
-->
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/HR/hrController.js" ></script> 
</head>
<body ng-controller="hrCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    
      <div class="clear">
        <div class="right_block">
         <h1 class="heading">List Monthly SalaryFro 1 Emp</h1>
         
         <div class="container">
			 <!--<div class="form-group">
			      <label class="control-label col-sm-2" for="email">Name:</label>
			      <div class="col-sm-4">
			        <input type="text" class="form-control"  placeholder="Enter name" ng-model="staffsalary.fromm">
			      </div>
			    </div>
			  <div class="form-group">
			      <label class="control-label col-sm-2" >Name:</label>
			      <div class="col-sm-4">
			       <label>Staff:</label>
						     <select ng-model="staffsalary.staffId" class="form-control col-md-4" integer>
						        <option ng-repeat="staff in staffdata" value="{{staff.staffId}}">{{staff.staffName}}</option>
						     </select>	
						     <br>			       
			      </div>
			    </div>-->
			   <div class="form-group col-md-3">
			    <label>  Date: </label>
				       <p class="input-group">
							    <input type="text" class="form-control"  uib-datepicker-popup="dd-MM-yyyy" data-ng-model="staffsalary.salaryDate" is-open="myDateOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="myDateOpen=!myDateOpen"><i class="fa fa-calendar"></i></button>
							    </span>
					  </p>
				  </div>
			    
			     <div class="form-group">
			      <label class="control-label col-sm-2" >Name:</label>
			      <div class="col-sm-4">
			       <label>Staff:</label>
						     <select ng-model="staffsalary.staffId" class="form-control col-md-4" integer>
						        <option ng-repeat="staff in staffdata" value="{{staff.staffId}}">{{staff.staffName}}</option>
						     </select>	
						     <br>	
			       
			      </div>
			    </div> 
			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10">
			        <button type="submit" class="btn btn-primary" ng-click="getMonthlySalary(staffsalary)">GetSalary</button>
			      </div>
			    </div>
			  
          </div>
       
             <h4 class="sub-heading">Salary Details</h4>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>                 
                    <th>Name</th> 
                    <th>Amount</th>                   
                  </tr>
                </thead>
                <tbody>
                  <tr ng-repeat="salary in earnedSalary" >                  
                    <td>{{salary.name}}</td> 
                    <td>{{salary.amount}}</td>                    
                   </tr>                
                </tbody>
              </table>
         
         
          <h4 class="sub-heading">Salary Details</h4>
            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>                 
                    <th>Name</th> 
                    <th>Amount</th>                   
                  </tr>
                </thead>
                <tbody>
                  <tr ng-repeat="salary in earnedSalary" >                  
                    <td>{{salary.name}}</td> 
                    <td>{{salary.amount}}</td>                    
                   </tr>                
                </tbody>
              </table>
          
         </div>
        </div>
</body>
</html>