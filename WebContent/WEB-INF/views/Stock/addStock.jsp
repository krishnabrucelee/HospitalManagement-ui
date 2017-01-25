<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Stock/stockController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="stockCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="container">
        <!-- Purchase Order Start -->
     <div class="row">
            <h1>Product Service Information</h1>
            <hr>
      <div class="col-md-8">
        <form class="form-horizontal col-md-12">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Name</label>
                        <textarea class="form-control" rows="4"></textarea>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>SKU</label>
                        <input type="text" class="form-control" placeholder="">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Department</label>
                        <select class="form-control">
                            <option>optional</option>
                            <option>optional</option>
                            <option>optional</option>
                            <option>optional</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row ">
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label col-md-6">Initial quantity on hand</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row ">
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label col-md-6">As of date</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row ">
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label col-md-6">Low alert</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                </div>
            </div>
        </form>
   </div>
 </div>
        <!-- Product Service Information End -->
  </div>
        <!-- Purchase Order End -->
</body>
</html>