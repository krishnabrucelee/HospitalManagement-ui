ngApp.controller('labCtrl',function($scope,$http,$timeout,uibDateParser,ngDialog){
		
	
	$scope.listTestRequest= function () {
		ngDialog.open({
			template: 'secondDialog',
			controller: 'labCtrl',
			className: 'ngdialog-theme-default ngdialog-theme-custom',
			 width: 800
		});
	};
	
		
	$scope.showMasterLabTest = function(){
		$http.get("listMasterLabTest").success(function(data){
			$scope.listmasterlabtests = data.LabMasterTestName;		
			console.log("DB listMasterLabTest");
			console.log($scope.masterlabtests);
		});
	}
	$scope.showMasterLabTest();
	
	$scope.showRadiologyTest = function(){
		$http.get("listRadiologyTest").success(function(data){
			$scope.listRadiologyTests = data.RadiologyTest;		
			console.log("DB radiology tests");
			console.log($scope.listRadiologyTests);
		});
	}
	$scope.showRadiologyTest();
	
	$scope.showDoctors =function(){
		
		$http.get("listDoctorDetails").success(function(data){			
			$scope.listdoctorsdata = data.Doctor;	
			
			console.log($scope.doctorsdata);
	});
	}		
	$scope.showDoctors();
	
	
	$scope.showPatients =function(){
	
		$http.get("listPatientDetails").success(function(data){	
			
			$scope.listpatientdata = data.Patient;	
			
			console.log($scope.patientdata);
			
	});
	}		
	$scope.showPatients();
	
	$scope.showDepartments =function(){
		
		$http.get("listDepartmentDetails").success(function(data){			
			$scope.listdepartments = data.Department;				
		
	});
	}		
	$scope.showDepartments();
	
	
   
   
	//1.MasterLab Test
	$scope.labmastersubcategeries =[];
	$scope.addList=function(){		
		console.log("Inside dynamic click");
		var dataObjects ={};
		$scope.labmastersubcategeries.push(dataObjects);
     }
	
	$scope.addLabMastert={};
	$scope.addMaterLabTest=function(labmaster){
		$scope.labmaster.labmastersubcategeries = $scope.labmastersubcategeries; 
		console.log($scope.labmaster);
		
 	$http.post("saveMasterLabTest",$scope.labmaster).success(function(data){
 		
 	});
 }
	
	$scope.addRadiology = function(radiologyy){
		console.log("Radiology data");
		console.log($scope.radiologyy);
		$http.post("saveRadiology",$scope.radiologyy).success(function(data){
			
		});
	}
	
	//2.MasterLab Report
	$scope.mastertestReportSubcategories=[];
	$scope.addReportList=function(){
		var reportDataObject={};
		$scope.mastertestReportSubcategories.push(reportDataObject);
	}
    		
	$scope.addMaterLabTestReports=function(labmasterreport){
		$scope.labmasterreport.mastertestReportSubcategories=$scope.mastertestReportSubcategories;
		console.log("Report button click");
		console.log($scope.labmasterreport);
		$http.post("saveMasterLabReport",$scope.labmasterreport).success(function(data){
			
		});
	}
	
	//3.Prepare labrequest
	$scope.addPatientLabRequest = function(){
		var materLabSubcategoryId = [];
		
		
		var len = $scope.listmasterlabtests.length;
		for(var i=0;i<len;i++)
		{
			var lab = $scope.listmasterlabtests[i];
			if(lab.__ivhTreeviewIndeterminate || lab.isSelected)
			{
				var sublen = lab.labmastersubcategeries.length;
				for(var j=0;j<sublen;j++)
				{
					sub = lab.labmastersubcategeries[j];
					if(sub.isSelected)
					{
						materLabSubcategoryId.push(sub.materLabSubcategoryId);
					}
				}
			}
		};
		
		
		$scope.labrequest.materLabSubcategoryId = materLabSubcategoryId;
		
		var radiologyTestList = [];
		
		var radiologylen = $scope.listRadiologyTests.length;
		for(var i=0;i<radiologylen;i++){
			var radiology = $scope.listRadiologyTests[i];
			if(radiology.isSelected){
					radiologyTestList.push(radiology.radiologyTestId);				
	       }
		};
		console.log(radiologyTestList);
		
		if(radiologyTestList.length > 0)
		{
			$scope.labrequest.radiologyTestList = radiologyTestList;
		}
		
        console.log("Patient lab test");
		console.log($scope.labrequest);

		$http.post("savePatientLabRequest",$scope.labrequest).success(function(data){
 		
 		});
	}


});

ngApp.controller('showLabRequestCtrl',function($scope,$http,ngDialog){

	$scope.patientLabrequest=function(){
			$http.get("listPatientLabRequest").success(function(data){
				$scope.listLabRequest = data.LabPatientRequestTest;
				
			});
	};

	$scope.patientLabrequest();


	 $scope.showStaffss =function(){		
		$http.get("listStaff").success(function(data){			
			$scope.staffdata = data.Staff;	
			console.log("Staff details");
			console.log($scope.staffdata);
	});
	}		
	$scope.showStaffss();
	
	  $scope.patientRadiologyRequest=function(){
		 
		$http.get("listPatientRadiologyTest").success(function(data){
			$scope.listPatientRadiologyRequest = data.PatientRadiologyRequest;
			
		});
     };
     $scope.patientRadiologyRequest();
     
	
	$scope.updateReport= function (testDetails,labrequest) {
		$scope.update={};
		$scope.update.materLabSubcategoryId = testDetails.testDetails.materLabSubcategoryId;
		$scope.update.patientLabTestStatus = testDetails.patientLabTestStatus;
		$scope.update.labrequest = labrequest;
		$scope.update.testDetails = testDetails;

		ngDialog.open({
			template: 'updateReport',
			className: 'ngdialog-theme-default ngdialog-theme-custom',
			width: 800,
			scope:$scope
		});
	};
	
	$scope.updateRadiologyReport= function (testDetails,radiologyrequest) {
		$scope.update={};
		$scope.update.radiologyTestId = testDetails.testDetails.radiologyTestId;
		$scope.update.patientRadiologyTestStatus = testDetails.radiologyTestStatusId;
		$scope.update.radiologyrequest = radiologyrequest;
		$scope.update.testDetails = testDetails;

		ngDialog.open({
			template: 'updateRadiologyReport',
			className: 'ngdialog-theme-default ngdialog-theme-custom',
			width: 800,
			scope:$scope
		});
	};

	$scope.updateData= function(){
		console.log("Inside lab update");
		var allLabTests = $scope.update.labrequest.patientLabTestStatus;
			
		var len = allLabTests.length;

		var isAllTestCompleted= true;

		// Default True
		$scope.update.isUpdateLabPatientRequest = false;
		
		for(var i=0;i<len;i++)
		{
			/**
			This check is for except current object remaining object isTestCompeleted is true
			allLabTests[i].testDetails.materLabSubcategoryId != $scope.update.materLabSubcategoryId
			*/
			if(allLabTests[i].testDetails.materLabSubcategoryId != $scope.update.materLabSubcategoryId && allLabTests[i].isTestCompleted == false)
			{
				isAllTestCompleted = false;
				break;
			}
		}

		if(isAllTestCompleted)
		{
			// All Tests are completed.So set isAllTestCompleted flag true;
			$scope.update.isUpdateLabPatientRequest = true;
			$scope.update.patientLabRequestId = $scope.update.labrequest.patientLabRequestId;

		}
		delete $scope.update.labrequest;
		delete $scope.update.materLabSubcategoryId;
		delete $scope.update.testDetails;
		
		$scope.update.updateTable = "lab";

		$http.post("updatePatientRequestLabTest",$scope.update).success(function(data){
 			if(data.status)
 			{ 				
 				ngDialog.close();
 				$scope.patientLabrequest();
 			}
 			else
 			{
 				console.log("Error Happend");
 				ngDialog.close();
 			}	
 		});

		
	};
	
	//updateRadiologyReport
	$scope.radiologyDataUpdate = function(){
		console.log("Update radiology report");
		var allRadiologyTests = $scope.update.radiologyrequest.patientRadiologyTestStatus;
		var lenn = allRadiologyTests.length;

		var isAllTestCompleted= true;
		
		$scope.update.isUpdateRadiologyPatientRequest = false;
		
		for(var i=0;i<lenn;i++){
			if(allRadiologyTests[i].testDetails.radiologyTestId != $scope.update.radiologyTestId && allRadiologyTests[i].isTestCompleted == false)
			{
				isAllTestCompleted = false;
				break;
			}
		}
		
		if(isAllTestCompleted)
		{
			// All Tests are completed.So set isAllTestCompleted flag true;
			$scope.update.isUpdateRadiologyPatientRequest = true;
			$scope.update.patientRadiologyRequestId = $scope.update.radiologyrequest.patientRadiologyRequestId;

		}
		delete $scope.update.radiologyrequest;
		delete $scope.update.radiologyTestId;
		delete $scope.update.testDetails;
		
		$scope.update.updateTable = "radiology";

		$http.post("updatePatientRequestLabTest",$scope.update).success(function(data){
			
			console.log($scope.update);
 			if(data.status)
 			{ 				
 				ngDialog.close();
 				$scope.patientRadiologyRequest();
 			}
 			else
 			{
 				console.log("Error Happend");
 				ngDialog.close();
 			}	
 		});
		
	};
	
	$scope.ViewReport = function(labRequest){

		$scope.selectedListLabRequest = labRequest;

		ngDialog.open({
			template: 'viewReport',
			className: 'ngdialog-theme-default ngdialog-theme-custom',
			width: 800,
			scope:$scope
		});
	}


	$scope.ViewRadiologyReport = function(radiologyrequest){
		console.log("SHOW Radiology Report");		
		$scope.selectedListRadiologyRequest = radiologyrequest;

		ngDialog.open({
			template: 'viewRadiologyReport',
			className: 'ngdialog-theme-default ngdialog-theme-custom',
			width: 800,
			scope:$scope
		});
	}

});