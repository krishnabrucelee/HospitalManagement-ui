<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Procument/procumentController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="procumentCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
   <div class="container">
        <!-- Purchase Order Start -->
        <div class="row">
            <h1>Purchase Order</h1>
            <hr>
            <div class="col-md-8">
                <form role="form">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Customer Name:</label>
                                <input type="text" class="form-control" placeholder="Customer Name">
                            </div>
                            <div class="form-group">
                                <label>Email:</label>
                                <input type="text" class="form-control" placeholder="Email">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Mailing Address</label>
                                <textarea class="form-control" rows="4"></textarea>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Ship To</label>
                                        <input type="text" class="form-control" placeholder="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Purchase Date Order</label>
                                        <input type="text" class="form-control" placeholder="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Shipping Address</label>
                                        <textarea class="form-control" rows="4"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Ship via</label>
                                        <input type="text" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4">
                <div class="form-group text-right">
                    <label>Amount</label>
                    <h4>Rs0.00</h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h4>Item details</h4>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Item Name</th>
                            <th>Description</th>
                            <th>Quantity</th>
                            <th>Rate/Price</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>
                                <input type="text" class="form-control" placeholder="Item Name">
                            </td>
                            <td width="50%">
                                <input type="text" class="form-control" placeholder="Description">
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="Quantity">
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="Rate/Price">
                            </td>
                            <td>
                                <button type="submit" class="btn btn-default">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>
                                <input type="text" class="form-control" placeholder="Item Name">
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="Description">
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="Quantity">
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="Rate/Price">
                            </td>
                            <td>
                                <button type="submit" class="btn btn-default">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <button type="button" class="btn btn-default"><b>Add item </b></button>
                                <button type="button" class="btn btn-default"><b>Clear all </b></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="row">
                    <div class="col-md-1 pull-right text-right">
                        <h4><b>$0.00</b></h4>
                    </div>
                    <div class="col-md-3 pull-right text-right">
                        <h4>Sub Total</h4>
                    </div>
                </div>
                <div class="row total_amount">
                    <div class="col-md-1 pull-right text-right">
                        <h4><b>$0.00</b></h4>
                    </div>
                    <div class="col-md-3 pull-right text-right">
                        <h4><b>Total</b></h4>
                    </div>
                </div>
            </div>
        </div>
     </div>
</body>
</html>