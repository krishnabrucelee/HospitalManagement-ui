<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="resources/jquery.serializejson.js"></script>
<title>Insert title here</title>
</head>
<body>
<form id="my-profile">
  <!-- simple attribute -->
  <input type="text" name="fullName"              value="Mario Izquierdo" />

  <!-- nested attributes -->
  <input type="text" name="address[city]"         value="San Francisco" />
  <input type="text" name="address[state][name]"  value="California" />
  <input type="text" name="address[state][abbr]"  value="CA" />

  <!-- array -->
  <input type="text" name="jobbies[]"             value="code" />
  <input type="text" name="jobbies[]"             value="climbing" />

  <!-- textareas, checkboxes ... -->
  <textarea              name="projects[0][name]">serializeJSON</textarea>
  <textarea              name="projects[0][language]">javascript</textarea>
  <input type="hidden"   name="projects[0][popular]" value="0" />
  <input type="checkbox" name="projects[0][popular]" value="1" checked />

  <textarea              name="projects[1][name]">tinytest.js</textarea>
  <textarea              name="projects[1][language]">javascript</textarea>
  <input type="hidden"   name="projects[1][popular]" value="0" />
  <input type="checkbox" name="projects[1][popular]" value="1"/>

  <!-- select -->
  <select name="selectOne">
    <option value="paper">Paper</option>
    <option value="rock" selected>Rock</option>
    <option value="scissors">Scissors</option>
  </select>

  <!-- select multiple options, just name it as an array[] -->
  <select multiple name="selectMultiple[]">
    <option value="red"  selected>Red</option>
    <option value="blue" selected>Blue</option>
    <option value="yellow">Yellow</option>
    </select>
    
    <button class="btn btn-primary" type="submit">Submit</button>
</form>
</body>
</html>



<!-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.serializejson.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resources/css/style.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- <form id="my-profile">
  simple attribute
  <input type="text" name="fullName"              value="Mario Izquierdo" />

  nested attributes
  <input type="text" name="address[city]"         value="San Francisco" />
  <input type="text" name="address[state][name]"  value="California" />
  <input type="text" name="address[state][abbr]"  value="CA" />

  array
  <input type="text" name="jobbies[]"             value="code" />
  <input type="text" name="jobbies[]"             value="climbing" />

  textareas, checkboxes ...
  <textarea              name="projects[0][name]">serializeJSON</textarea>
  <textarea              name="projects[0][language]">javascript</textarea>
  <input type="hidden"   name="projects[0][popular]" value="0" />
  <input type="checkbox" name="projects[0][popular]" value="1" checked />

  <textarea              name="projects[1][name]">tinytest.js</textarea>
  <textarea              name="projects[1][language]">javascript</textarea>
  <input type="hidden"   name="projects[1][popular]" value="0" />
  <input type="checkbox" name="projects[1][popular]" value="1"/>

  select
  <select name="selectOne">
    <option value="paper">Paper</option>
    <option value="rock" selected>Rock</option>
    <option value="scissors">Scissors</option>
  </select>

  select multiple options, just name it as an array[]
  <select multiple name="selectMultiple[]">
    <option value="red"  selected>Red</option>
    <option value="blue" selected>Blue</option>
    <option value="yellow">Yellow</option>
    </select>
    
    <button class="btn btn-primary" type="button" id="subbtn">Submit</button>
</form> -->

		<div class="right_block">
			<div class="Registration">
				<form class="form-horizontal" id="my-profile">
					<h3 class="text-center">Registration</h3>
					<div class="form-group">
						<label class="control-label col-sm-3 col-sm-offset-1">Name:</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="staffName"
								id="staff.staffName" placeholder="Enter your name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3 col-sm-offset-1" for="email">Email:</label>
						<div class="col-sm-5">
							<input type="email" class="form-control" name="staffEmail"
								placeholder="Enter your email">
						</div>
					</div>
					<!-- <div class="form-group">
						<label class="control-label col-sm-3 col-sm-offset-1" for="email">Phone
							No:</label>
						<div class="col-sm-5">
							<input type="email" class="form-control" id="email"
								placeholder="Enter your Phone number">
						</div>
					</div> -->
					<div class="form-group">
						<label class="control-label col-sm-3 col-sm-offset-1" for="pwd">Password:</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" name="password"
								placeholder="Enter password">
						</div>
					</div>
					<!-- 					<div class="form-group">
						<label class="control-label col-sm-3 col-sm-offset-1" for="pwd">Re-enter
							Password:</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="pwd"
								placeholder="Enter password">
						</div>
					</div> -->
				<div class="form-group">
						<label class="control-label col-sm-3 col-sm-offset-1" >Profession Type:</label>
						<div class="col-sm-5">
							<select class="form-control" name="professionType">
								<option>Doctor</option>
								<option>Nurse</option>
								<option>Driver</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3 col-sm-offset-1"  >User
							Type:</label>
						<div class="col-sm-5">
							<select class="form-control" name="userType" >
								<option>DOMAIN_ADMIN</option>
								<option>DOMAIN_USER</option>
								<option>USER</option>
							</select>
						</div>
					</div>
					<div class="form-group" >
						<label class="control-label col-sm-3 col-sm-offset-1">User
							Access Rights:</label>
						<div class="col-sm-8">
							<div class="radio">
								<label><input type="radio" name="Doctor[][role[roleName]]" value="All"> All</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="Doctor[][role[][roleName]]"
									class="limited_check" value="Limited"> Limited</label>
							</div>
							<div class="limited_lists">
								<div class="checkbox">
									<label><input type="checkbox" name="Doctor[][role[][permissionList[][module]]]" value="Laboratory"> Laboratory</label>
								</div>
								<div class="curd">
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Create"> Create
										<input  type="hidden" name="Doctor[][role[][permissionList[][module]]]" value="Laboratory">
										</label> 
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Update"> Update
										<input type="hidden" name="Doctor[][role[][permissionList[][module]]]" value="Laboratory"></label>
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Read"> Read
										<input type="hidden" name="Doctor[][role[][permissionList[][module]]]" value="Laboratory">
										</label>
										
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Delete"> Delete
										<input type="hidden" name="Doctor[][role[][permissionList[][module]]]" value="Laboratory">
										</label>
										
									</div>
								</div>
								
								<div class="checkbox">
									<label><input type="checkbox" name="Doctor[][role[][permissionList[][module]]]" value="Emr"> Emr</label>
								</div>
								<div class="curd">
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Create"> Create</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Emr">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Update"> Update</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Emr">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Read"> Read</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Emr">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Delete"> Delete</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Emr">
									</div>
								</div>
								
								<div class="checkbox">
									<label><input type="checkbox" name="Doctor[][role[][permissionList[][module]]]" value="Pharamacy"> Pharamacy</label>
								</div>
								<div class="curd">
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Create"> Create</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Pharamacy">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Update"> Update</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Pharamacy">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Read"> Read</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Pharamacy">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Delete"> Delete</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Pharamacy">
									</div>
								</div>
								
								<div class="checkbox">
									<label><input type="checkbox" name="Doctor[][role[][permissionList[][module]]]" value="Diet"> Diet</label>
								</div>
								<div class="curd">
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Create"> Create</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Diet">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Update"> Update</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Diet">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Read"> Read</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Diet">
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="Doctor[][role[][permissionList[][action]]]" value="Delete"> Delete</label>
										<input type="hidden"  name="Doctor[][role[][permissionList[][module]]]" value="Diet">
									</div>
								</div>
								
	
							</div>
						</div>
					</div> 
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-7 text-right">
							<button type="button" id="subbtn" class="btn btn-default">Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>




















<script type="text/javascript">

//
	$(document).ready(function(){
		$(".left_menu > li > a").click(function(){
			$(".left_menu > li ul").not($(this).next("ul")).slideUp(300);
			$(this).next("ul").slideToggle(300);
		});

		$(".Registration .radio").click(function(){
			 if($(".limited_check").is(':checked')) { 
			 	$(".limited_lists").slideDown(300);
			 }
			 else{
			 	$(".limited_lists").slideUp(300);
			 }
		});

		$(".Registration .checkbox input[type='checkbox']").click(function(){
			 if($(this).is(':checked')) { 
			 	$(this).parents(".checkbox").next(".curd").slideToggle(300);
			 }
			 else{
			 	$(this).parents(".checkbox").next(".curd").slideUp(300);
			 }
		});
	});


// checklist
    var allVals = [];
/*     $(function() {
    	
       $('#my-profile .subbtn').click(function() { 
    	   alert("sfs");
           allVals = []
         $('#my-profile :checked').each(function() {
           allVals.push($(this).val());
         });

           alert("Values " + allVals);

       });
     }); */

$(function() {
		$('#subbtn').click(function() {
			var send = $('#my-profile').serializeJSON();
			
			
			console.log(send);
			$.ajaxSetup({
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			});
			$.ajax({
				url: "http://localhost:8080/HospitalManagement-Rest/addStaff",
				type: "POST",
				data: JSON.stringify(send),
				error: function(xhr, error) {
					alert('Error!  Status = ' + xhr.status + ' Message = ' + error);
				},
				success: function(data) {
					console.log("fine");
				}
			});
			
			
			
			return false;
			
			$
		});
	});
</script>
</body>
</html>

































<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script type="text/javascript">
	$.fn.serializeObject = function() {
		var o = {};
		var a = this.serializeArray();
		$.each(a, function() {
			if (o[this.name] !== undefined) {
				if (!o[this.name].push) {
					o[this.name] = [ o[this.name] ];
				}
				o[this.name].push(this.value || '');
			} else {
				o[this.name] = this.value || '';
			}
		});
		return o;
	};

	$(function() {
		$('form').submit(function() {
			$('#result').text(JSON.stringify($('form').serializeObject()));
			return false;
		});
	});
</script>
</head>
<h2>Form</h2>
<body>
<form action="addStaff" method="post">
	Name:<input type="text" name="staffName" maxlength="12" size="12" />
	<br /> Email:<input type="text" name="email" maxlength="36"
		size="12" /> <br /> Gender:<br /> Male:<input type="radio"
		name="gender" value="Male" /><br /> Female:<input type="radio"
		name="gender" value="Female" /><br /> Favorite Food:<br /> Steak:<input
		type="checkbox" name="food" value="Steak" /><br /> Pizza:<input
		type="checkbox" name="food" value="Pizza" /><br /> Chicken:<input
		type="checkbox" name="food" value="Chicken" /><br />
	<textarea wrap="physical" cols="20" name="quote" rows="5">Enter your favorite quote!</textarea>
	<br /> Select a Level of Education:<br /> <select name="education">
		<option value="Jr.High">Jr.High</option>
		<option value="HighSchool">HighSchool</option>
		<option value="College">College</option>
	</select><br /> Select your favorite time of day:<br /> <select size="3"
		name="TofD">
		<option value="Morning">Morning</option>
		<option value="Day">Day</option>
		<option value="Night">Night</option>
	</select>
	<p>
		<input type="submit" />
	</p>
</form>
</body>
<h2>JSON</h2>
<pre id="result">
</pre>
</html>

 --%>


 -->