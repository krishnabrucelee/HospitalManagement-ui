<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Schedule</title>
<%@ include file="Common/includeScript.jsp" %>
<script src="resources/js/Schedule/DoctorScheduleCtrl.js" ></script>
<style type="text/css">
  .employeeDispBox{
    height: 200px;
    overflow: auto;
  }
</style>
</head>
<body ng-controller="doctorScheduleCtrl">
    <%@ include file="Common/menubar.jsp" %>
    <%@ include file="Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">
            <h1 class="heading">Doctor Shift Scheduling                     
            </h1>           
            <div class="container">               
                <div class="row">
                    <div class="col-md-3">
                       <h5>Doctor's List</h5>
                       <div class="employeeDispBox">
                          <div ng-repeat="details in employee">                          
                            <p><label>Name : </label>{{details.Name}}</p>
                            <hr/>
                          </div>
                       </div>
                    </div>
                    <div class="col-md-3">
                       <h5>Shift Types</h5>
                       <div class="employeeDispBox">
                          <div ng-repeat="shifType in shiftTypes">                          
                            <p>{{shifType.Description +" ("+ shifType['@ID'] +")"}}</p>
                            <p>{{shifType.StartTime}} - {{shifType.EndTime}}</p>
                            <hr/>
                          </div>
                       </div>
                    </div>
                    <div class="col-md-3">
                       <h5>CoverRequirements</h5>
                       <div class="employeeDispBox">
                          <div ng-repeat="dayofweek in DayOfWeekCover">                          
                            <ul>
                              <li>{{dayofweek.Day}}</li>
                              <ul>
                                  <li ng-repeat="coverDetails in dayofweek.Cover">
                                    {{coverDetails.Shift+" ( "+coverDetails.Preferred+" )"}}
                                  </li>
                              <ul>
                            </ul>
                            <hr/>
                          </div>
                       </div>
                    </div>
                </div>
                <div class="row">
                   <div class="col-md-3">
                      <form>
                        <div class="form-group">
                          <label>Start Date</label>
                          <input type="text" class="form-control" placeholder="yyyy-MM-dd" ng-model="search.StartDate">
                        </div>
                        <div class="form-group">
                          <label>End Date</label>
                          <input type="text" class="form-control" placeholder="yyyy-MM-dd" ng-model="search.EndDate">
                        </div>                       
                       
                        <button type="submit" class="btn btn-info" ng-click="schedule()" >Schedule</button>
                      </form>
                   </div>
                </div>
                <div class="row">
                   <div class="col-md-10" ng-show="groupByResult">
                     <table class="table table-bordered">
                       <thead>
                          <th>Employee</th>
                          <th ng-repeat="(date,value) in groupByResult">{{date}}</th>
                       </thead>
                       <tbody>
                          <tr ng-repeat="emp in employee">
                             <td>{{emp.Name}}</td>
                             <td ng-repeat="(date,value) in groupByResult">
                                {{checkType(value,emp['@ID'])}}
                              </td>
                          </tr>
                       </tbody> 
                     </table>
                     <button class="btn btn-info" ng-click="saveAttendance()">Save</button>
                   </div>
                </div>
            </div>
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