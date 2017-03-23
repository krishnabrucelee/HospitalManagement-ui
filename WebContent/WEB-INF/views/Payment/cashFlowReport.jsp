<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Payment/cashFlowReportController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="cashFlowReportCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
<div class="right_block">
<h1 class="heading">Report</h1>
<div class="ReportBlock">
            <div class="left_block">
                <div class="row">
                    <div class="col-md-6">
                      <label>Report Period</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                          <datetimepicker data-ng-model="report.startDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>
                    <div class="pull-left col-md-1">
                        <div class="form-group form-horizontal">
                          <div>
                              <label class="control-label"> to </label>
                          </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                          <datetimepicker data-ng-model="report.endDate" date-format="{{format}}" show-spinners="true" date-options="options">
                                <!-- Use date-ng-click="open($event, opened)" to override date ng-click -->
                            </datetimepicker>
                        </div>
                    </div>

                </div>
            </div>
			<div class="form-group col-md-4 col-md-offset-1">
                	<button type="button" class="btn btn-primary col-md-6" ng-click="runReport(report)">Run Report</button>  
                </div>
        </div>

        <div class="centered_form">
            <h3 class="text-center">Cash Flow Statement</h3>
            <h3 class="text-center">{{report.startDate | date:'dd-MM-yyyy'}} - {{report.endDate | date:'dd-MM-yyyy'}}</h3>
            <hr>
            <div class="row">
                <div class="text-right pull-right col-md-6">
                    <h4>TOTAL</h4>
                </div>
            </div>

		<div data-ng-if="operatingActivityList">
			 <div class="col-md-12">
                    <h4>Operating Activities</h4>
                </div>
 			<div class="row" data-ng-repeat="operatingActivity in operatingActivityList">
               
                <div class="col-md-8">
                    <p>{{operatingActivity.name}}</p>
                </div>
                <div class="col-md-4 text-right">
                    <p>{{operatingActivity.balance}}</p>
                </div>
            </div>
             <div class="col-md-8">
                    <h5>Total Income</h5>
                </div>
                <div class="col-md-4 text-right">
                    <h5>{{operatingActivityTotal}}</h5>
                </div>
		</div>
            <div class="row">
                <div class="col-md-12">
                    <hr>
                </div>
            </div>

       <div data-ng-if="investingActivityList">
			 <div class="col-md-12">
                    <h4>COST OF SALES</h4>
                </div>
 			<div class="row" data-ng-repeat="investingActivity in investingActivityList">
               
                <div class="col-md-8">
                    <p>{{investingActivity.name}}</p>
                </div>
                <div class="col-md-4 text-right">
                    <p>{{investingActivity.balance}}</p>
                </div>
            </div>
             <div class="col-md-8">
                    <h5>Total Cost Of Sales</h5>
                </div>
                <div class="col-md-4 text-right">
                    <h5>{{investingActivityTotal}}</h5>
                </div>
		</div>

            <div class="row">
                <div class="col-md-12">
                    <hr>
                </div>
            </div>

       <div data-ng-if="financingActivityList">
			 <div class="col-md-12">
                    <h4>COST OF SALES</h4>
                </div>
 			<div class="row" data-ng-repeat="financingActivity in financingActivityList">
               
                <div class="col-md-8">
                    <p>{{financingActivity.name}}</p>
                </div>
                <div class="col-md-4 text-right">
                    <p>{{financingActivity.balance}}</p>
                </div>
            </div>
             <div class="col-md-8">
                    <h5>Total Expenses</h5>
                </div>
                <div class="col-md-4 text-right">
                    <h5>{{financingActivityTotal}}</h5>
                </div>
		</div>

            <div class="row">
                <div class="col-md-8">
                    <h4>PROFIT</h4>
                </div>
                <div class="col-md-4 text-right">
                    <h4>{{(incomeTotal + costOfSalesTotal) - expensesTotal}}</h4>
                </div>
            </div> 

           </div>

        </div>
</body>
</html>