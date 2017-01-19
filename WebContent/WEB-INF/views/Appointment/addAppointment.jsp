<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Appointment</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Appointment/appointmentController.js" ></script>
</head>
<body ng-controller="appointmentCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>

    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Appointment Registration</h1>
            <form class="centered_form" name="addAppointmentForm" data-ng-submit="save(addAppointmentForm, appointment, format)">
               <div class="row">
               		<div class="form-group col-md-4">
				    <label>ID:</label>
				    <input type="text" name="" class="form-control" placeholder="Enter ID">
				  </div>

				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Doctor Name:</label>
				     	<select class="form-control"  data-ng-model="appointment.doctor" data-ng-options="doctor.doctorName for doctor in doctorList">
								<option value="">Select</option>
						</select>
				  </div>
               </div>

			  <div class="row">
				    <label>Patient Name:</label>
				     	<select class="form-control"  data-ng-model="appointment.patient" data-ng-options="patient.patientName for patient in patientList">
								<option value="">Select</option>
						</select>
				  </div>

				    <label>Department Name:</label>
				     	<select class="form-control"  data-ng-model="appointment.department" data-ng-options="department.departmentName for department in departmentList">
								<option value="">Select</option>
						</select>
				  </div>
			  </div>

			  <div class="row">
				  <div class="form-group col-md-4 col-md-offset-2">
				    <label>Purpose:</label>
				    <input type="text" class="form-control" data-ng-model="appointment.purpose" placeholder="Enter Purpose">
				  </div>
			  </div>
			  
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Appointment Time:</label>
                        <div>
                            <!-- <pre>Selected time and date is: <em>{{date | date:'shortTime' }}, {{date | date:'fullDate' }}</em></pre> -->
                            <datetimepicker ng-model="appointment.appointTime" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                </div>


			  <div class="row">
                <div class="col-md-4">
                    <button type="submit" class="btn btn-default col-md-4">Submit</button>  
                </div>       
              </div>

			</form>
        </div>
    </div>
    <footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>
    </div>
</body>
</html>