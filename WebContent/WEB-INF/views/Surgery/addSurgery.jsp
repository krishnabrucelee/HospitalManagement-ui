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
  <h1>Add Surgery Schedule detailsS</h1>
        <hr>
        <form>
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                          <label>Patient:</label>
                        <select class="form-control"  data-ng-model="surgery.patient" data-ng-options="patient.patientName for patient in patientList">
								<option value="">Select</option>
						</select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                 <label>Doctor:</label>
                        <select class="form-control"  data-ng-model="surgery.doctor" data-ng-options="doctor.doctorName for doctor in doctorList">
								<option value="">Select</option>
						</select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Nurse:</label>
                        <select class="form-control"  data-ng-model="surgery.nurse" data-ng-options="nurse.nurseRegId for nurse in nurseList">
								<option value="">Select</option>
						</select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Depeartment:</label>
                        <select class="form-control"  data-ng-model="surgery.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
						</select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                              <label>Surgery Room:</label>
                        <select class="form-control"  data-ng-model="surgery.surgeryRoom" data-ng-options="surgeryRoom.surgeryRoomNumber for surgeryRoom in surgeryRoomList">
								<option value="">Select</option>
						</select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Surgery Description</label>
                                <textarea class="form-control" data-ng-model="surgery.surgeryDescription" rows="4" placeholder="Street"></textarea>
                                <br>
                            </div>
                        </div>
                    </div>
                   <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Surgery Date</label>
				    <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="surgery.surgeryDate" is-open="isOpen" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="isOpen=!isOpen"><i class="fa fa-calendar"></i></button>
							    </span>
					</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Surgery Items</label>
                                <textarea class="form-control" data-ng-model="surgery.surgeryItems" rows="4" placeholder="Street"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
            <div class="row">
                <div class="col-md-1">
                    <button type="button" ng-click="addSurgery(surgery)" class="btn btn-default">Save</button>
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