<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html ng-app="ngModule">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Create Appointment</title>
        <%@ include file="../Common/includeScript.jsp" %>
        
        <link href="resources/css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
        <link href="resources/css/angular-bootstrap-calendar.css" rel="stylesheet"> 
        <!-- <link href="resources/css/ngDialog.min.css" rel="stylesheet">
         <link href="resources/css/ngDialog-theme-default.min.css" rel="stylesheet"> --> 

        
            <script src="resources/js/Appointment/appointmentController.js"></script>
    </head>

    <body ng-controller="appointmentCtrl">
        <%@ include file="../Common/menubar.jsp" %>
            <%@ include file="../Common/sidebar.jsp" %>
                <div class="clear">
                    <div class="right_block">
                        <h1 class="heading">Appointment Registration</h1>
                        <form class="centered_form" name="addAppointmentForm">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>ID:</label>
                                        <input type="text" name="" class="form-control" placeholder="Enter ID">
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <label>Doctor Name:</label>
                                        <select class="form-control" data-ng-model="appointment.doctorId" data-ng-options="doctor.doctorId as doctor.doctorEmail for doctor in doctorList">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Patient Name:</label>
                                        <select class="form-control" data-ng-model="appointment.patientId" data-ng-options="patient.patientId as patient.patientName for patient in patientList">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>        
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <label>Department Name:</label>
                                        <select class="form-control" data-ng-model="appointment.departmentId" data-ng-options="department.departmentId as department.departmentName for department in departmentList">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>        
                            </div>
                        </form>
                        
                        <div class="row">
                            <div class="col-md-6">
                                  <div class="btn-group">
                        
                                    <button
                                      class="btn btn-primary"
                                      mwl-date-modifier
                                      date="viewDate"
                                      decrement="calendarView">
                                      Previous
                                    </button>
                                    <button
                                      class="btn btn-default"
                                      mwl-date-modifier
                                      date="viewDate"
                                      set-to-today>
                                      Today
                                    </button>
                                    <button
                                      class="btn btn-primary"
                                      mwl-date-modifier
                                      date="viewDate"
                                      increment="calendarView">
                                      Next
                                    </button>
                                  </div>
                             </div>
                             <br class="visible-xs visible-sm">
                             <div class="col-md-6 text-right">
                                   <div class="btn-group">                  
                                    <label class="btn btn-primary" ng-model="calendarView" uib-btn-radio="'month'" ng-click="cellIsOpen = false">Month</label>                 
                                    <label class="btn btn-primary" ng-model="calendarView" uib-btn-radio="'day'" ng-click="cellIsOpen = false">Day</label>
                                  </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <mwl-calendar
                                    events="events"
                                    view="calendarView"
                                    view-date="viewDate"
                                    cell-auto-open-disabled="true"
                                    on-date-range-select="rangeSelected(calendarRangeStartDate, calendarRangeEndDate)"
                                    on-timespan-click="timespanClicked(calendarDate)"
                                    day-view-start="{{dayStart}}"
                                    day-view-end="{{dayEnd}}"
                                    day-view-split="15"
                                    cell-modifier="cellModifier(calendarCell)"
                                    >
                                  </mwl-calendar>
                            </div>
                        </div>
    

                    </div>
                </div>
                <footer>
                    <div class="container-fluid text-center">
                        <p>2016 Copy rights</p>
                    </div>
                </footer>
                
    </body>

    </html>
