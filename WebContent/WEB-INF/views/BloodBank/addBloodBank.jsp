<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Blood Bank</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/BloodBank/bloodBankController.js" ></script>
</head>
<body ng-controller="bloodCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Create Blood Bank</h1>
            <form class="centered_form" name="addBloodForm" data-ng-submit="saveBloodBank(addBloodForm, blood)">
               <div class="row">
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Blood Bag Number:</label>
				    <input type="text" name="" data-ng-model="blood.bloodBagNumber" class="form-control" placeholder="Enter Blood Bag Number">
				  </div>
               </div>

			  <div class="row">
				   <div class="form-group col-md-4">
                        <label>Donor Name:</label>
                        <select class="form-control"  data-ng-model="blood.donorName" data-ng-options="donor.donorName for donor in donorList">
								<option value="">Select</option>
						</select>
                    </div>
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Blood Quantity:</label>
				    <input type="text" name="" data-ng-model="blood.bloodQuantity" class="form-control" placeholder="Enter Blood Quantity">
				  </div>
			  </div>

			  <div class="row">
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Blood Group:</label>
				    <input type="text" name="" class="form-control" data-ng-model="blood.bloodGroup" placeholder="Blood Group">
				  </div>	
			  </div>

			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Blood Unit:</label>
				    <input type="text" name="" class="form-control"data-ng-model="blood.bloodUnit" placeholder="Enter blood unit">
				  </div>
				  
				  <div class="form-group col-md-4">
				    <label>Date of creation:</label>
						<p class="input-group">
                       <input type="text" uib-datepicker-popup="dd-MM-yyyy" class="form-control"  
                       ng-model="blood.createdDate" is-open="isOpen" />
                         <span class="input-group-btn">
                            <button type="button" class="btn btn-default" ng-click="isOpen=!isOpen">
                            <i class="fa fa-calendar"></i></button>
                         </span>
                     </p>  
				  </div>
			  </div>
			  
			  <div class="row">
                <div class="col-md-4">
                    <button type="submit" class="btn btn-default col-md-4">Submit</button>  
                </div>       
              </div>

			</form>
        </div>
    </div>
</body>
</html>