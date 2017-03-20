<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Customer/customerController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="customerCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>

	<div class="clear">
        <div class="right_block">
        <!-- Purchase Order Start -->
            <h1>Sales Receipt</h1>
            <hr>
            <form role="form">
            <div class="row">
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Customer Name:</label>
				    <input type="text" name="" data-ng-model="customer.customerName" class="form-control" placeholder="Enter Customer Name">
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Customer Company:</label>
				    <input type="text" name="" data-ng-model="customer.company" class="form-control" placeholder="Enter Customer company">
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Customer address:</label>
				    <input type="text" name="" data-ng-model="customer.address" class="form-control" placeholder="Enter Customer address">
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Customer email:</label>
				    <input type="text" name="" data-ng-model="customer.email" class="form-control" placeholder="Enter Customer email">
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Customer mobile:</label>
				    <input type="text" name="" data-ng-model="customer.mobile" class="form-control" placeholder="Enter Customer mobile">
				  </div>
               </div>
                <div class="form-group col-md-4 col-md-offset-1">
                	<button type="button" class="btn btn-primary col-md-6" ng-click="addCustomer(customer)">Add</button>  
                </div>
            </form>
        </div>
  </div>
</body>
</html>