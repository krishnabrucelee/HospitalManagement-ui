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