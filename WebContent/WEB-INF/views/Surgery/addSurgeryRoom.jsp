<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
     <script src="resources/js/Surgery/surgeryController.js" ></script> 
<title>Insert title here</title>
</head>
<body data-ng-controller="surgeryCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
<div class="container">
        <!-- Purchase Order Start -->
        <div class="row">
  <h1>Surgery Room Configuration</h1>
        <hr>
        <form>
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Surgery Floor</label>
                                <input type="text" data-ng-model="surgery.surgeryFloor" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Surgery Room Number</label>
                                <input type="text" data-ng-model="surgery.surgeryRoomNumber" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Surgery Room Description</label>
                                <input type="text" data-ng-model="surgery.surgeryRoomDescription" class="form-control" placeholder="">
                            </div>
                        </div>
                       <div class="form-group col-md-9">
                            <label>Department :</label>
                        <select class="form-control" data-ng-model="surgery.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
							</select>
					</div>
                    </div>
                <div class="col-md-1">
                    <button type="button" ng-click="addSurgeryRoomConfiguration(surgery)" class="btn btn-default">Save</button>
                </div>
                <div class="col-md-1">
                    <button type="button" class="btn btn-default">Cancel</button>
                </div>
                </div>
              </div>
        </form>
        <hr>
    </div>
    </div>
</body>
</html>