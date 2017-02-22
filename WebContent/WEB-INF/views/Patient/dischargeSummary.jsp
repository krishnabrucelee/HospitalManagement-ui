<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
     <script src="resources/js/Patient/patientController.js" ></script>
</head>
<body ng-controller="patientViewCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">
			
			
            <form class="centered_form" data-ng-repeat="patient in patientList">
                        
               <div class="row" >

				  <div class="form-group col-md-4 col-md-offset-1" >
				    <label>Patient Name:</label>
				    <input type="text" data-ng-model="patient.patientName"class="form-control" placeholder="Enter Patient Name" >
				  </div>
				  
                        <div class="col-md-3">
                            <div class="form-group">
                                 <label>Doctor:</label>
                        <select class="form-control"  data-ng-model="discharge.doctor" data-ng-options="doctor.doctorName for doctor in doctorList">
								<option value="">Select</option>
						</select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Nurse:</label>
                        <select class="form-control"  data-ng-model="discharge.nurse" data-ng-options="nurse.nurseRegId for nurse in nurseList">
								<option value="">Select</option>
						</select>
                            </div>
                        </div>
               </div>
               
               <div class="row">

				  <div class="form-group col-md-4 col-md-offset-1" >
				    <label>Room Number:</label>
				    <input type="text" data-ng-model="patient.wardNumber" class="form-control" placeholder="Enter Patient Name">
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-1" >
				    <label>InPatient From:</label>
				    <input type="text" data-ng-model="patient.createdDate | date:'dd-MM-yyyy HH:mm:ss'" class="form-control" >
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-1" >
				    <label>InPatient Discharge Date:</label>
				    <datetimepicker data-ng-model="discharge.dischargeDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
				    				 <!--    <p class="input-group">
							    <input type="text" class="form-control" datetime-picker="dd MMM yyyy HH:mm" ng-model="discharge.dischargeDate" is-open="isOpens" datepicker-options="datePickerOption" />
							    <span class="input-group-btn">
							        <button type="button" class="btn btn-default" ng-click="isOpens=!isOpens"><i class="fa fa-calendar"></i></button>
							    </span>
					</p> -->
				  </div>
               </div>

			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Discharge Summary:</label>
				    <textarea class="form-control" type="text" rows="5" data-ng-model="discharge.dischargeSummaryDetails" placeholder="Enter Discharge Summary" ></textarea>
				  </div>
			  </div>
            <div class="row">
                <div class="col-md-1">
                    <button type="button" ng-click="createDischargeSummary(patient, discharge)" class="btn btn-default">Save</button>
                </div>
                <div class="col-md-1">
                    <button type="button" class="btn btn-default">Cancel</button>
                </div>
            </div>
			</form>
        </div>
    </div>
</body>
</html>