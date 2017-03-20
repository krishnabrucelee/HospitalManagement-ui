<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/Payment/profitAndLossReportController.js" ></script>
<title>Insert title here</title>
</head>
<body data-ng-controller="profitAndLossReportCtrl">
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
            <h3 class="text-center">PROFIT AND LOSS</h3>
            <h3 class="text-center">1 April, 2017 - 18 March, 2018</h3>
            <hr>
            <div class="row">
                <div class="text-right pull-right col-md-6">
                    <h4>TOTAL</h4>
                </div>
            </div>

		<div data-ng-if="incomeList">
			 <div class="col-md-12">
                    <h4>INCOME</h4>
                </div>
 			<div class="row" data-ng-repeat="income in incomeList">
               
                <div class="col-md-8">
                    <p>{{income.name}}</p>
                </div>
                <div class="col-md-4 text-right">
                    <p>{{income.balance}}</p>
                </div>
            </div>
             <div class="col-md-8">
                    <h5>Total Income</h5>
                </div>
                <div class="col-md-4 text-right">
                    <h5>{{incomeTotal}}</h5>
                </div>
		</div>
            <div class="row">
                <div class="col-md-12">
                    <hr>
                </div>
            </div>

       <div data-ng-if="costOfSalesList">
			 <div class="col-md-12">
                    <h4>COST OF SALES</h4>
                </div>
 			<div class="row" data-ng-repeat="costOfSales in costOfSalesList">
               
                <div class="col-md-8">
                    <p>{{costOfSales.name}}</p>
                </div>
                <div class="col-md-4 text-right">
                    <p>{{costOfSales.balance}}</p>
                </div>
            </div>
             <div class="col-md-8">
                    <h5>Total Cost Of Sales</h5>
                </div>
                <div class="col-md-4 text-right">
                    <h5>{{costOfSalesTotal}}</h5>
                </div>
		</div>

            <div class="row">
                <div class="col-md-12">
                    <hr>
                </div>
            </div>

       <div data-ng-if="expensesList">
			 <div class="col-md-12">
                    <h4>COST OF SALES</h4>
                </div>
 			<div class="row" data-ng-repeat="expenses in expensesList">
               
                <div class="col-md-8">
                    <p>{{expenses.name}}</p>
                </div>
                <div class="col-md-4 text-right">
                    <p>{{expenses.balance}}</p>
                </div>
            </div>
             <div class="col-md-8">
                    <h5>Total Expenses</h5>
                </div>
                <div class="col-md-4 text-right">
                    <h5>{{expensesTotal}}</h5>
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