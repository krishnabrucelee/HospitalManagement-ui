<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Payment/paymentController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="salesReceiptCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
     <div class="clear">
        <div class="right_block">
        <!-- Purchase Order Start -->
            <h1>Sales Receipt</h1>
            <hr>
            <form role="form">
            <div class="col-md-8">
                
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                        <label>Customer Name :</label>
                        <select class="form-control"  data-ng-model="sales.customer" data-ng-options="customer.customerName for customer in listCustomerDetails">
								<option value="">Select</option>
							</select>
                    </div>
                    <div class="form-group">
                            <label>Account Chart :</label>
                        <select class="form-control"  data-ng-model="expense.accountCategoryChart" data-ng-options="accountType.name for accountType in accountTypeList">
								<option value="">Select</option>
							</select>
					</div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Billing Address</label>
                                <textarea class="form-control" data-ng-model="sales.customerAddress" rows="4"></textarea>
                            </div>
                        </div>
                        <div class="col-md-8">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Sales Receipt date</label>
                                       <datetimepicker data-ng-model="sales.salesReceiptDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                <label>Payment method:</label>
                                <select class="form-control" data-ng-model="sales.paymentMethod">
								<option value="Cash">Cash</option>
                          <option value="Cheque">Cheque</option>
                          <option value="Credit Card">Credit Card</option>
							</select>
                                </div>
                            </div>
                        </div>

        
        <div class="row">
            <div class="col-md-12">
                <h4>Item details</h4>
                <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Item name</th>
                    <th>Item Description</th>
                    <th>Item Quantity</th>
                    <th>Rate</th>
                    <th>Price</th>
                     <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                  
                  <td><input type="text" data-ng-model="salesRecieptItems.itemName" class="form-control" placeholder="Name"></td>
                  <td><input type="text" data-ng-model="salesRecieptItems.itemDescription" class="form-control" placeholder="Description"></td>
                  <td>
                      <input type="text" class="form-control" data-ng-model = "salesRecieptItems.itemQuantity">
                  </td>
                  <td>
                      <input type="text" class="form-control" data-ng-model = "salesRecieptItems.itemRate" data-ng-change="calculatePrice(salesRecieptItems)">
                  </td>
                  <td>
                      <input type="text" class="form-control"  data-ng-model = "salesRecieptItems.itemAmount"> 
                  </td>
                    <td class="dropdown" ><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu" >
                        <li><a ng-click="addItem(salesRecieptItems)">Add Item</a></li>
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>
            </div>
                    <button type="button" class="btn btn-primary col-md-6" ng-click="addSales(sales, salesRecieptItems)">Add</button>  
        </div>
          
       </form>
           </div>      
     </div>
</body>
</html>