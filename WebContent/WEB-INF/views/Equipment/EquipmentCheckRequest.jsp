<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule"  ng-cloak>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EquipmentCheck</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-1.11.1.js"></script>
<script type="text/javascript"
	src="http://multidatespickr.sourceforge.net/js/jquery-ui-1.11.1.js"></script>
<%@ include file="../Common/includeScript.jsp" %>
  <script src="resources/js/Equipment/equipmentController.js" ></script> 

</head>
<body ng-controller="equipmentCtrl">
  <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
 
    <div class="clear">
        <div class="right_block">
         <h1 class="heading">EquipmentCheck</h1>

          <div class="container">
             <div class="row">
                <form>
                  <div class="form-group col-md-2" >
                       <label>Device Id:</label>
                       <select ng-model="devices"  ng-options="device for (device,equipments)  in listEquipment" class="form-control col-md-2" >               
                       </select>  
                       <br>                       
                  </div>
                  <div class="form-group col-md-2" >
                       <label>Equipment Id:</label>
                       <select ng-model="equipmentcheck.equipmentId" integer ng-options="equipment.equipmentId as equipment.equipmentName for equipment  in devices" class="form-control col-md-2" ng-change="save()">               
                       </select>  
                       <br>                       
                  </div> 

                  <div class="form-group col-md-2" >
            <label>Check AssignedTO:</label>
             <select ng-model="equipmentcheck.staffId" integer class="form-control">
                <option ng-repeat="staff in liststaffdata" value="{{staff.staffId}}">{{staff.staffId}}</option>
             </select>  
              <br>            
           
          </div>

          <div class = "form-group">
      <div class = "col-sm-offset-2 col-sm-10">
         <button type = "submit" class = "btn btn-primary" ng-click="addEquipmentCheck(equipmentcheck)">Add Equipment</button>
      </div>
   </div>
                </form>
             </div>
             </div>
        </div>
        </div>
        
        <div>
      <footer>
        <div class="container-fluid text-center">
            <p>2016 Copy rights</p>
        </div>
    </footer>
    </div>
</body>
</html>