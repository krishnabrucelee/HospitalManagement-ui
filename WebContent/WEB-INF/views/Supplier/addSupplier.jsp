<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
   <!--  <script src="resources/js/Supplier/procumentController.js" ></script> -->
<title>Insert title here</title>
</head>
<body data-ng-controller="procumentListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="container">
        <!-- Purchase Order Start -->
        <div class="row">
  <h1>Supplier Information</h1>
        <hr>
        <form>
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Middle Name</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <label>Suffix</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Company</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Display name as</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Address</label>
                                <textarea class="form-control" rows="4" placeholder="Street"></textarea>
                                <br>
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="City/Town">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="State">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Postal Code">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Country">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>PAN No</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Mobile</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Fax</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Other</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Website</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Billing rate</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Terms</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Opening Balance</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>as of</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Account No</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Tax Registration No</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Effective Date</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1">
                    <button type="button" class="btn btn-default">Save</button>
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