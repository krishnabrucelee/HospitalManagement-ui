<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" ng-app="hospitalModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sign in</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" type="text/css" href="font/css/font-awesome.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resources/css/style.css" />
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <script type="text/javascript" src="resources/js/angular.js"  ></script>
  <!-- <script type="text/javascript" src="resources/js/uirouter.js"  ></script>
  
   <script type="text/javascript" src="resources/scripts/app.js"></script> -->
   
   <script type="text/javascript">
   
   var hospitalModule = angular.module('hospitalModule',[]);
   hospitalModule.controller('sampleCtrl',sampleCtrl);
   
   function sampleCtrl($scope,$http)
   {
	   $scope.name="prakash";
	   $http.get('http://ip.jsontest.com/').success(function(data){
		   $scope.result = data;
	   })
	   
   }
   
   
   
   
   </script>
   
<style>
	body,html{
		height:100%;
	}
</style>
</head>

<body ng-controller="sampleCtrl">

<div class="well">
<h2>Angular Route Area</h2>

{{result.ip}} {{name}}
<!--  <ul class="nav navbar-nav">
        <li><a ui-sref="login">Login</a></li>
        <li><a ui-sref="dashboard">Dashboard</a></li>
    </ul>
 -->
<div ui-view autoscroll="true"></div>
</div>
	<div class="signin">
    	<div class="inner_block">
        <h4>DASHBOARD</h4>
        	<div class="main">
        		    <img src="images/admin.jpg" width="150" class="logo">
                <form role="form" id="demo-form" data-parsley-validate="" action="loginUser"  method="post">
                  <div class="form-group email_icon">
                    <span><img src="images/email.png" width="20"></span>
                    <input type="email" name="userEmail" class="form-control" placeholder="Email" data-parsley-trigger="change" required="">
                  </div>
                  <div class="form-group pass_icon">
                    <span><img src="images/password_icon.png" width="15"></span>
                    <input type="password" name="password" class="form-control" placeholder="password">
                  </div>
                  <div class="form-group">
                    <b href="#" class="pull-right forget_pass">Forgot Password?</b>
                  </div>
                  <div class="checkbox remember">
                    <label><input type="checkbox"> Remember me</label>
                  </div>
                  <button type="submit" class="btn btn-default login">Sign In </button>
                    <b href="#" class="text-right login_back" style="display:none;">Back to login</b>
                </form>
            </div>
        </div>
    </div>
<script>
	$(document).ready(function(){
	$(".forget_pass").click(function(){
			$(this).slideToggle(300);
			$(".password, .remember, .login_back, .pass_icon").slideToggle(300);
			$(".login").text("Submit");
		});
		$(".login_back").click(function(){
				$(this).slideUp(300);
				$(".password, .remember, .forget_pass, .pass_icon").slideToggle(300);
				$(".login").text("Login");
			});

    $('#demo-form').parsley().on('field:validated', function() {
        var ok = $('.parsley-error').length === 0;
        $('.bs-callout-info').toggleClass('hidden', !ok);
        $('.bs-callout-warning').toggleClass('hidden', ok);
      })
      .on('form:submit', function() {
        return false; // Don't submit form for this demo
      });
	});
</script>
</body>
</html>






















<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="todoApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
 
<!--  <script type="text/javascript">
 
 angular.module('todoApp', [])
 .controller('TodoListController', function($scope) {
   
 });
 </script> -->
 
<title>Insert title here</title>
</head>
<body ng-controller="TodoListController">

<!-- <input type="text" ng-model="sam">{{sam}} -->
    <form class="form-horizontal"  action="loginUser"  method="post" >
    
		<input type="radio" name=user value="Doctor"/>Doctor
        <input type="radio" name=user value="Nurse"/>Nurse
        <input type="radio" name=user value="Patient"/>Patient
	
       <div class="form-group">
						<div class="col-sm-offset-3 col-sm-4">
							<button class="btn btn-primary" type="submit">Submit</button>
						</div>
				</div>
    </form>
</body>
</html> --%>