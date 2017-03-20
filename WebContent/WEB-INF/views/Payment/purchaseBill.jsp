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
<body data-ng-controller="purchaseBillCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
     <div class="clear">
        <div class="right_block">
        <!-- Purchase Order Start -->
            <h1>Purchase Bill</h1>
            <hr>
            <form role="form">
            <div class="col-md-8">
                
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                        <label>Supplier Name :</label>
                        <select class="form-control"  data-ng-model="purchase.supplier" data-ng-options="supplier.displayName for supplier in supplierList">
								<option value="">Select</option>
							</select>
                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Mailing Address</label>
                                <textarea class="form-control" data-ng-model="purchase.mailingAddress" rows="4"></textarea>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Terms</label>
                                        <input type="text" data-ng-model="purchase.terms" class="form-control" placeholder="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Bill date</label>
                                       <datetimepicker data-ng-model="purchase.purchaseBillingDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Due Date</label>
                                       <datetimepicker data-ng-model="purchase.purchaseDueDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

        
        <div class="row">
            <div class="col-md-12">
                <h4>Item details</h4>
                <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>ID</th>
                     <th>Item name</th>
                    <th>Department</th>
                    <th>Quantity</th>
                    <th>Rate</th>
                    <th>Price</th>
                     <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody>
                  <tr data-ng-repeat="pur in purchaseOrderTransactionList">
                  
                  <td>{{pur.purchaseOrderTransactionId}}</td>
                  <td>{{pur.medicineItemMaster.medicineName}}</td>
                  <td>{{department.departmentName}}</td>
                  <td>
                      <input type="text" class="form-control" data-ng-model = "pur.quantity">
                  </td>
                  <td>
                      <input type="text" class="form-control" data-ng-model = "pur.rate" data-ng-change="calculatePrice(pur)">
                  </td>
                  <td>
                      <input type="text" class="form-control"  data-ng-model = "pur.price"> 
                  </td>
                    <td class="dropdown" ><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu" >
                        <li><a ng-click="addItem(pur)">Add Item</a></li>
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>
                <div class="row">
                    <div class="col-md-1 pull-right text-right">
                        <h4><b>${{pharmacy.price}}</b></h4>
                    </div>
                    <div class="col-md-3 pull-right text-right">
                        <h4>Sub Total</h4>
                    </div>
                </div>
                <div class="row total_amount">
                    <div class="col-md-1 pull-right text-right">
                        <h4><b>${{pharmacy.price}}</b></h4>
                    </div>
                    <div class="col-md-3 pull-right text-right">
                        <h4><b>Total</b></h4>
                    </div>
                </div>
            </div>
                    <button type="button" class="btn btn-primary col-md-6" ng-click="addPurchaseBill(purchase, pur)">Add</button>  
        </div>
               
       </form>
            </div>
     </div>
</body>
</html>