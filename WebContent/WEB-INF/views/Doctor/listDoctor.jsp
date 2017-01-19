<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Common/includeScript.jsp" %>
<script src="resources/js/Doctor/doctorController.js" ></script>
</head>
<body data-ng-controller="doctorListCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
<div class="clear">
        <div class="right_block">
            <h1 class="heading clear">
            <span>Doctor Listing</span>
            </h1>

            <table class="table centered_form table-bordered table-responsive">
                <thead>
                  <tr>
                    <th>Doctor ID</th>
                    <th>Doctor Name</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Specialization</th>
                    <th width="20">Options</th>
                  </tr>
                </thead>
                <tbody data-ng-repeat="doctor in doctorList">
                  <tr>
                    <td>{{doctor.doctorRegId}}</td>
                    <td>{{doctor.doctorName}}</td>
                    <td>{{doctor.gender}}</td>
                    <td>{{doctor.doctorAge}}</td>
                    <td>{{doctor.doctorType}}</td>
                    <td class="dropdown"><span data-toggle="dropdown">Action</span>
                      <ul class="dropdown-menu">
                        <li><a href="#">View</a></li>
                        <li><a href="#">Edit</a></li>
                        <li><a href="#">Delete</a></li>
                      </ul>
                    </td>
                   </tr>
                  
                </tbody>
              </table>


            
        </div>
    </div>
    <footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>
    </div>
</body>
<script type="text/ng-template" id="addDoc">
                    <div class="modal-header">
                        <h3 class="modal-title" id="modal-title">New Doctor Details.!</h3>
                    </div>
                    <div class="modal-body">
                        <form>
                           <div class="row">
                                <div class="form-group col-md-4 col-md-offset-1">
                                <label>Doctor ID:</label>
                                <input type="text" name="" class="form-control">
                              </div>

                              <div class="form-group col-md-4 col-md-offset-1">
                                <label>Doctor Name:</label>
                                <input type="text" name="" class="form-control" placeholder="Enter Doctor Name">
                              </div>
                           </div>

                          <div class="row">
                                <div class="form-group col-md-4 col-md-offset-1">
                                <label>D.O.B:</label>
                                <input type="text" name="" class="form-control" ng-model="format">
                              </div>

                              <div class="form-group col-md-4 col-md-offset-1">
                                <label>Age:</label>
                                <input type="text" name="" class="form-control" placeholder="Enter Age">
                              </div>
                          </div>

                          <div class="row">
                                <div class="form-group col-md-4 col-md-offset-1">
                                <label>Gender:</label>
                                <label class="radio-inline"><input type="radio" name="gender" value="Female">Female</label>
                                <label class="radio-inline"><input type="radio" name="gender" value="Male">Male</label>
                              </div>

                              <div class="form-group col-md-4 col-md-offset-1">
                                <label>Email ID:</label>
                                <input type="email" class="form-control" placeholder="Enter Email ID">
                              </div>
                          </div>
                          
                          <div class="row">
                            <div class="form-group col-md-4 col-md-offset-1">
                                <label>Mobile/Phone No:</label>
                                <input type="text" name="" class="form-control" placeholder="Enter Mobile/Phone number">
                              </div>
                              
                              <div class="form-group col-md-4 col-md-offset-1">
                                <label>Specialization:</label>
                                <select class="form-control">
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                  </select>
                              </div>    
                          </div>

                          <div class="row">
                            <div class="form-group col-md-4 col-md-offset-1">
                                <label>Address:</label>
                                <textarea class="form-control" rows="5" placeholder="Enter Your Address"></textarea>
                              </div>
                          </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-default" type="button" >Add</button>
                        <button class="btn btn-warning" type="button" ng-click="closeThisDialog()">Cancel</button>
                    </div>
                </script>
</html>