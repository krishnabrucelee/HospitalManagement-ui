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
<body data-ng-controller="expenseCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
     <div class="clear">
        <div class="right_block">
        <!-- Purchase Order Start -->
            <h1>Expense</h1>
            <hr>
            <form role="form">
            <div class="col-md-8">
                
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                        <label>Staff Name :</label>
                        <select class="form-control"  data-ng-model="expense.staff" data-ng-options="staff.staffName for staff in staffList">
								<option value="">Select</option>
							</select>
                    </div>
                     <div class="form-group">
                            <label>Account Chart :</label>
                        <select class="form-control"  data-ng-model="expense.accountCategoryChart" data-ng-options="accountType.name for accountType in accountTypeList">
								<option value="">Select</option>
							</select>
					</div>
                            <div class="form-group">
                                <label>Payment method:</label>
                                <select class="form-control" data-ng-model="expense.paymentMethod">
								<option value="Cash">Cash</option>
                          <option value="Cheque">Cheque</option>
                          <option value="Credit Card">Credit Card</option>
							</select>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                              <div class="form-group">
                                        <label>Payment Date</label>
                                       <datetimepicker data-ng-model="expense.paymentDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                         </div>
                        </div>
                    </div>

	<div class="row">
            <div class="col-md-12">
                <h4>Account details</h4>
                <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Account</th>
                    <th>Description</th>
                    <th>Amount</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                  
                  <td>
                  	<select class="form-control"  data-ng-model="expense.accountType" data-ng-options="accountDetailType.name for accountDetailType in accountDetailTypeList">
								<option value="">Select</option>
							</select>
				</td>
                  <td><input type="text" data-ng-model="expense.accountDescription" class="form-control" placeholder="Description"></td>
                  <td><input type="text" data-ng-model="expense.accountAmount" class="form-control" placeholder="Amount"></td>
                   </tr>
                  
                </tbody>
              </table>
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
                  
                  <td><input type="text" data-ng-model="expenseItems.itemName" class="form-control" placeholder="Name"></td>
                  <td><input type="text" data-ng-model="expenseItems.itemDescription" class="form-control" placeholder="Description"></td>
                  <td>
                      <input type="text" class="form-control" data-ng-model = "expenseItems.itemQuantity">
                  </td>
                  <td>
                      <input type="text" class="form-control" data-ng-model = "expenseItems.itemRate" data-ng-change="calculatePrice(expenseItems)">
                  </td>
                  <td>
                      <input type="text" class="form-control"  data-ng-model = "expenseItems.itemAmount"> 
                  </td>
                    <td class="dropdown" ><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu" >
                        <li><a ng-click="addItem(expenseItems)">Add Item</a></li>
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>
            </div>
                    <button type="button" class="btn btn-primary col-md-6" ng-click="addExpense(expense, expenseItems)">Add</button>  
        </div>
               
       </form>
            </div>
     </div>
</body>
</html>