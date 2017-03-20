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
<body data-ng-controller="invoiceCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">
        <!-- Purchase Order Start -->
            <h1>Invoice</h1>
            <hr>
            <form role="form">
            <div class="col-md-8">
                
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                        <label>Patient Name :</label>
                        <select class="form-control"  data-ng-model="invoice.patient" data-ng-options="patient.patientName for patient in patientList">
								<option value="">Select</option>
							</select>
                    </div>
                   <div class="form-group">
                        <label>Patient Address :</label>
                        <input type="text" data-ng-model="invoice.patientAddress" class="form-control" placeholder="Name">
                    </div>                    
                    <div class="form-group col-md-4">
                        <label>Department:</label>
                        <select class="form-control"  data-ng-model="invoice.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>
                            <div class="form-group">
                                <label>Payment method:</label>
                                <select class="form-control" data-ng-model="invoice.paymentMethod">
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
                                       <datetimepicker data-ng-model="invoice.invoiceDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                         </div>
                        </div>
                        <div class="col-md-4">
                              <div class="form-group">
                                        <label>Due Date</label>
                                       <datetimepicker data-ng-model="invoice.dueDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
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
                  
                  <td><input type="text" data-ng-model="invoiceItems.itemName" class="form-control" placeholder="Name"></td>
                  <td><input type="text" data-ng-model="invoiceItems.itemDescription" class="form-control" placeholder="Description"></td>
                  <td>
                      <input type="text" class="form-control" data-ng-model = "invoiceItems.itemQuantity">
                  </td>
                  <td>
                      <input type="text" class="form-control" data-ng-model = "invoiceItems.itemRate" data-ng-change="calculatePrice(invoiceItems)">
                  </td>
                  <td>
                      <input type="text" class="form-control"  data-ng-model = "invoiceItems.itemAmount"> 
                  </td>
                    <td class="dropdown" ><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu" >
                        <li><a ng-click="addItem(invoiceItems)">Add Item</a></li>
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>
            </div>
                    <button type="button" class="btn btn-primary col-md-6" ng-click="addInvoice(invoice, invoiceItems)">Add</button>  
        </div>
               
       </form>
            </div>
     </div>
</body>
</html>