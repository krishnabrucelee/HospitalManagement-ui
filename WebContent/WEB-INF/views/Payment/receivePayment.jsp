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
<body data-ng-controller="receivePaymentCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
     <div class="clear">
        <div class="right_block">
        <!-- Purchase Order Start -->
        <div class="row">
            <h1>Receive Payment</h1>
            <hr>
            <form role="form">
            <div class="col-md-8">
                
                    <div class="row">
                        <div class="col-md-8">
                        
                       <div class="form-group col-md-4">
                        <label>Invoice:</label>
                        <select class="form-control" data-ng-change="getInvoice(recvPayment.invoice)" data-ng-model="recvPayment.invoice" data-ng-options="invoice.invoiceId for invoice in invoiceList">
								<option value="">Select</option>
							</select>

                    </div>
                            <div class="form-group col-md-4">
                        <label>Patient Name:</label>
							<input type="text" data-ng-model="invoiceDetails.patient.patientName" class="form-control" placeholder="Address">
                    </div>
                    
                    
                    <div class="form-group col-md-4">
                        <label>Department:</label>
                        <select class="form-control"  data-ng-model="invoiceDetails.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
                    </div>
                    					 <div class="form-group col-md-4" >
                                <label>Patient Address :</label>
                                <input type="text" data-ng-model="invoiceDetails.patientAddress" class="form-control" placeholder="Address">
                            </div> 
                            </div>
                        </div>
                    </div>
                       <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Payment Date </label>
                                       <datetimepicker data-ng-model="recvPayment.receivePaymentDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                                    </div>
                                    
          <div class="form-group col-md-4">
                            <label>Deposit To :</label>
                        <select class="form-control"  data-ng-model="recvPayment.accountCategoryChart" data-ng-options="accountType.name for accountType in accountTypeList">
								<option value="">Select</option>
							</select>
					</div>
                        </div>
        <div class="row">
            <div class="col-md-12">
                <h4>Item details</h4>
                <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Description</th>
                    <th>Due Date</th>
                    <th>Original Amount</th>
                    <th>Payment</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                  <td>Invoice {{invoiceDetails.invoiceId}}</td>
                  <td>
                      <input type="text" class="form-control" data-ng-model="invoiceDetails.dueDate">
                  </td>
                  <td>
                      <input type="text" class="form-control"  data-ng-model="invoiceDetails.invoiceItems[0].itemAmount">
                  </td>
                  <td>
                      <input type="text" class="form-control"  data-ng-model="recvPayment.receiveAmount"> 
                  </td>
                   </tr>
                  
                </tbody>
              </table>
            </div>
                    <button type="button" class="btn btn-primary col-md-6" ng-click="addRecvPayment(recvPayment, invoiceDetails)">Add</button>  
        </div>
               
       </form>
            </div>
     </div>
     </div>
</body>
</html>