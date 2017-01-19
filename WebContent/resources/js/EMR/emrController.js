ngApp.controller('emrCtrl', function($scope, $http, $httpParamSerializer) {
	
	
	$scope.reportType = [{name : "Patient Treatment"}, {name : "Patient Examination"}, {name : "Patient History"}, {name : "Patient Diagnosis"}]
	$scope.reportTypeList = [];
	$scope.list = [];
	$scope.search = [];
    console.log("ff", location.search);
    $scope.searchParams = queryStringToJSON(location.search);

    function queryStringToJSON(queryString) {

        if (queryString.indexOf('?') > -1) {
            queryString = queryString.split('?')[1];
        }
        var pairs = queryString.split('&');
        var result = {};
        pairs.forEach(function(pair) {
            pair = pair.split('=');
            pair[0] = pair[0].replace(/\+/g, '%20');
            pair[1] = pair[1].replace(/\+/g, '%20');
            result[pair[0]] = decodeURIComponent(pair[1] || '');
        });
        return result;
    }
	

    $http.post('viewPatientById', $scope.searchParams).success(function(data) {
		$scope.patientList = data.Patient; 
		
		if (data.Patient != null) {
			$scope.patientList = data.Patient;
		}
		if (data.EMedicalReport != null) {
			$scope.patient = data.EMedicalReport[0].patient;
			$scope.emr = data.EMedicalReport;
		    angular.forEach($scope.emr, function(reportType){
		    	if(reportType.patientTreatment.length > 0) {
		    		$scope.reportTypeList.push(reportType.patientTreatment[0]);
		    	}
		    	if(reportType.patientExamination.length > 0) {
		    		$scope.reportTypeList.push(reportType.patientExamination[0]);
		    	}
		    	if(reportType.patientHistory.length > 0) {
		    		$scope.reportTypeList.push(reportType.patientHistory[0]);
		    	}
		    	if(reportType.patientDiagnosis.length > 0) {
		    		$scope.reportTypeList.push(reportType.patientDiagnosis[0]);
		    	}
		    	
			    });
	    	console.log("hi", $scope.reportTypeList);
//			$scope.patientTreatment = $scope.emr.patientTreatment;
//			$scope.patientDiagnosis = $scope.emr.patientDiagnosis;
//			$scope.patientExamination = $scope.emr.patientExamination;
//			$scope.patientHistory = $scope.emr.patientHistory;
//			
//			var reportObj = {};
//			reportObj.treatment = "Patient Treatment";
//			reportObj.diagnosis = "Patient Diagnosis";
//			reportObj.examination = "Patient Examination";
//			reportObj.history = "Patient History";
//			
//			$scope.reportTypeList.push($scope.patientTreatment);
//			$scope.reportTypeList.push($scope.patientExamination);
//			$scope.reportTypeList.push($scope.patientHistory);
//			$scope.reportTypeList.push($scope.patientDiagnosis);
//			$scope.reportTypeList.push($scope.reportType);
		}
		$scope.userList = data.user;
		$scope.DoctorList = data.Doctor;
		$scope.NurseList = data.Nurse;
		console.log("heei", $scope.DoctorList);
		console.log("nurse", $scope.NurseList);
		console.log("hi", $scope.userList);
		console.log($scope.patientList);
		console.log($scope.patient);
		
	    $scope.saveEmrReport = function(emr) {
	    	
	    	console.log(emr);
	    	
	    	var obj = {};
			if (data.Patient != null) {
				obj.patient_id = $scope.patientList[0].patientId;
			}
			if (data.EMedicalReport != null) {
				obj.patient_id  = $scope.patient.patientId;
				obj.eMedicalReportId = data.EMedicalReport[0].emrId;
			}
			if ($scope.DoctorList != null) {
				obj.doctor_id = $scope.DoctorList[0].doctorId;
			}
			if ($scope.NurseList != null) {
				obj.nurse_id = $scope.NurseList[0].nurseId;
			}
			
	    	if (emr.medicalReport == 'Patient Treatment') {
	    		
	    		$scope.patientTreatment = [];
	    		var dd = {};
	    		dd.reportType = emr.medicalReport;
    			dd.description = emr.description;
    			dd.reportDate = new Date();
    			dd.reportedBy = $scope.userList[0].userName;
    			dd.reportByProfessionType = $scope.userList[0].professionType;
	    		$scope.patientTreatment.push(dd);
	    		
	    		obj.patientTreatment = $scope.patientTreatment;
	    		
	    	}
	    	if (emr.medicalReport == 'Patient Examination') {
	    		
	    		$scope.patientExamination = [];
	    		var dd = {};
	    		dd.reportType = emr.medicalReport;
    			dd.description = emr.description;
    			dd.reportDate = new Date();
    			dd.reportedBy = $scope.userList[0].userName;
    			dd.reportByProfessionType = $scope.userList[0].professionType;
	    		$scope.patientExamination.push(dd);
	    		
	    		obj.patientExamination = $scope.patientExamination;
	    	}
	    	if (emr.medicalReport == 'Patient History') {
	    		
	    		$scope.patientHistory = [];
	    		var dd = {};
	    		dd.reportType = emr.medicalReport;
    			dd.description = emr.description;
    			dd.reportDate = new Date();
    			dd.reportedBy = $scope.userList[0].userName;
    			dd.reportByProfessionType = $scope.userList[0].professionType;
	    		$scope.patientHistory.push(dd);
	    		
	    		obj.patientHistory =$scope.patientHistory;
	    	}
	    	if (emr.medicalReport == 'Patient Diagnosis') {
	    		
	    		$scope.patientDiagnosis = [];
	    		var dd = {};
	    		dd.reportType = emr.medicalReport;
    			dd.description = emr.description;
    			dd.reportDate = new Date();
    			dd.reportedBy = $scope.userList[0].userName;
    			dd.reportByProfessionType = $scope.userList[0].professionType;
	    		$scope.patientDiagnosis.push(dd);
	    		
	    		obj.patientDiagnosis = $scope.patientDiagnosis;
	    	}
	    	
	    	
	    	console.log(obj);
	    	
	    	$http.post('createEmr', obj).success(function(data) {
	    		console.log(data);
	    	});
	    }
    });
    
    $scope.emrReport = function(patientId) {
    	var emrView = "addView"; 
    	window.location.href="addEmr?id="+patientId+"&view="+emrView;
    }
    
});