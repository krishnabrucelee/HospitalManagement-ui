<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
     <script src="resources/js/Supplier/supplierController.js" ></script> 
<title>Insert title here</title>
</head>
<body data-ng-controller="supplierCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="container">
        <!-- Purchase Order Start -->
        <div class="row">
  <h1>Supplier Information {{userDetails}}</h1>
        <hr>
        <form>
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" data-ng-model="supplier.title" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" data-ng-model="supplier.firstName" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" data-ng-model="supplier.lastName" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Company</label>
                                <input type="text" data-ng-model="supplier.company" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Display name as</label>
                                <input type="text" data-ng-model="supplier.displayName" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Address</label>
                                <textarea class="form-control" data-ng-model="supplier.address" rows="4" placeholder="Street"></textarea>
                                <br>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>PAN No</label>
                                <input type="text" data-ng-model="supplier.panNo" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" data-ng-model="supplier.email" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Mobile</label>
                                <input type="text" data-ng-model="supplier.mobile" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Fax</label>
                                <input type="text" data-ng-model="supplier.fax" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Website</label>
                                <input type="text" data-ng-model="supplier.website" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Billing rate</label>
                                <input type="text" data-ng-model="supplier.billingRate" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Terms</label>
                                <input type="text" data-ng-model="supplier.terms" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Opening Balance</label>
                                <input type="text" data-ng-model="supplier.openingBalance" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>as of</label>
                                <input type="text" data-ng-model="supplier.asOf" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Account No</label>
                                <input type="text" data-ng-model="supplier.accountNo" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Tax Registration No</label>
                                <input type="text" data-ng-model="supplier.taxRegistrationNo" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Effective Date</label>
                             <datetimepicker ng-model="supplier.effectiveDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1">
                    <button type="button" ng-click="addSupplier(supplier)" class="btn btn-default">Save</button>
                </div>
                <div class="col-md-1">
                    <button type="button" class="btn btn-default">Cancel</button>
                </div>
            </div>
        </form>
        <hr>
    </div>
    </div>
</body>
</html>