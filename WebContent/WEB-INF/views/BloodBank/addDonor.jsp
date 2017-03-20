<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ngModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Donor</title>
<%@ include file="../Common/includeScript.jsp" %>
    <script src="resources/js/BloodBank/bloodBankController.js" ></script>
</head>
<body ng-controller="bloodCtrl">
    <%@ include file="../Common/menubar.jsp" %>
    <%@ include file="../Common/sidebar.jsp" %>
    <div class="clear">
        <div class="right_block">

            <h1 class="heading">Donor Registration</h1>
            <form class="centered_form" name="addDonorForm" data-ng-submit="saveDonor(addDonorForm, donor)">
               <div class="row">
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Donor Name:</label>
				    <input type="text" name="" data-ng-model="donor.donorName" class="form-control" placeholder="Enter Donor Name">
				  </div>
               </div>

			  <div class="row">

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Age:</label>
				    <input type="text" name="" data-ng-model="donor.donorAge" class="form-control" placeholder="Enter Age">
				  </div>
			  </div>

			  <div class="row">
			  		<div class="form-group col-md-4">
				    <label>Gender:</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="donor.donorGender" name="gender" value="Female">Female</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="donor.donorGender" name="gender" value="Male">Male</label>
				  </div>

				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Email ID:</label>
				    <input type="email" class="form-control" data-ng-model="donor.donorEmailId" placeholder="Enter Email ID">
				  </div>
			  </div>
			  
			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Mobile/Phone No:</label>
				    <input type="text" name="" class="form-control" data-ng-model="donor.donorPhoneNumber" placeholder="Enter Mobile/Phone number">
				  </div>
				  
				  <div class="form-group col-md-4 col-md-offset-1">
				    <label>Blood Group:</label>
				    <input type="text" name="" class="form-control" data-ng-model="donor.donorBloodGroup" placeholder="Blood Group">
				  </div>	
			  </div>

			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>donor disease:</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="donor.jaundice" name="disease" value="jaundice">jaundice</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="donor.bloodTest" name="disease" value="bloodTest">Blood Test</label>
				   <label class="radio-inline"><input type="radio" data-ng-model="donor.chestCardiac" name="disease" value="chestCardiac">Chest Cardiac</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="donor.bladingDisorder" name="disease" value="bladingDisorder">Blading Disorder</label>
				   <label class="radio-inline"><input type="radio" data-ng-model="donor.faintingSpells" name="disease" value="faintingSpells">Fainting Spells</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="donor.bloodTransfusion" name="disease" value="bloodTransfusion">Blood ransfusion</label>
				  <label class="radio-inline"><input type="radio" data-ng-model="donor.hyperTensionDiabates" name="disease" value="hyperTensionDiabates">Hyper Tension Diabates</label>
				    <label class="radio-inline"><input type="radio" data-ng-model="donor.taringMedicines" name="disease" value="taringMedicines">Taring Medicines</label>
				  </div>
			  </div>

			  <div class="row">
			  	<div class="form-group col-md-4">
				    <label>Address:</label>
				    <textarea class="form-control" rows="5" data-ng-model="donor.donorAddress" placeholder="Enter Your Address"></textarea>
				  </div>
				  
				  <div class="form-group col-md-4">
				    <label>Date of register:</label>
						<p class="input-group">
                       <input type="text" uib-datepicker-popup="dd-MM-yyyy" class="form-control"  
                       ng-model="donor.dateOfRegister" is-open="isOpen" />
                         <span class="input-group-btn">
                            <button type="button" class="btn btn-default" ng-click="isOpen=!isOpen">
                            <i class="fa fa-calendar"></i></button>
                         </span>
                     </p>  
				  </div>
				  
				 <div class="form-group col-md-4">
				    <label>Donor Signature:</label>
				    <textarea class="form-control" rows="5" data-ng-model="donor.donorSignature" placeholder="Donor Signature"></textarea>
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
</body>
</html>