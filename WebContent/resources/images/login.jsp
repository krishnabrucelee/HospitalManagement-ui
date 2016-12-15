<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" type="text/css" href="font/css/font-awesome.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
	body,html{
		height:100%;
	}
</style>
<title>Sign in</title>
</head>
<body>
	<div class="signin">
    	<div class="inner_block">
        <h4>DASHBOARD</h4>
        	<div class="main">
        		    <img src="images/admin.jpg" width="150" class="logo">
                <form role="form" id="demo-form" data-parsley-validate="">
                  <div class="form-group email_icon">
                    <span><img src="images/email.png" width="20"></span>
                    <input type="email" class="form-control" placeholder="Email" data-parsley-trigger="change" required="">
                  </div>
                  <div class="form-group pass_icon">
                    <span><img src="images/password_icon.png" width="15"></span>
                    <input type="password" class="form-control" placeholder="password">
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