ngApp.controller('doctorCtrl', function ($scope, $http, uibDateParser) {
	
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
	

    $http.post('listDoctorById', $scope.searchParams).success(function(data) {
		$scope.consultantList = data.Consultant; 
		console.log($scope.consultantList);
    });
});


ngApp.controller('doctorListCtrl', function($scope, $http, ngDialog) {
	
	//
	
	$scope.doctorList = [];
	
	
	$http.get('listDoctorDetails').then(function(data) {
		$scope.result = data.data;
		$scope.doctorList = $scope.result.Doctor;
		console.log($scope.doctorList);
	});

	$http.get('listConsultantDetails').then(function(data) {
		$scope.result = data.data;
		$scope.consultantList = $scope.result.Consultant;
		console.log($scope.consultantList);
	});
	
	$scope.viewConsultant = function (doctorId) {
		console.log(doctorId);
    	var doctorView = "doctorView"; 
			window.location.href="viewDoctor?id="+doctorId+"&view="+doctorView;
	}
	
});

