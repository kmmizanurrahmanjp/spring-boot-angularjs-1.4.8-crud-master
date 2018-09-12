var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    
	_refresh();
	
	$http({
        method : "GET",
        url : "http://localhost:9090/patient"
    }).then(function mySuccess(response) {
        $scope.patients = response.data;
        _resetForm();
    }, function myError(response) {
        $scope.error = response.statusText;
    });
    
    
    $scope.submitPatient = function() {
        var method = "";
        var url = "";
        if ($scope.patient.patientId == -1) {
            method = "POST";
            url = "http://localhost:9090/patient";
        } else {
            method = "PUT";
            url = "http://localhost:9090/patient";
        }
 
        $http({
            method: method,
            url: url,
            data: angular.toJson($scope.patient),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(_requisetSuccess, _requistFail);
    };
    
    $scope.patientDelete = function (patient) {

        $http({
            method: "DELETE",
            url: "http://localhost:9090/patient/" + patient.patientId
        }).then(_requisetSuccess, _requistFail);
    };
    
    $scope.patientUpdate = function(patient) {
        $scope.patient.patientId = patient.patientId;
        $scope.patient.patientName = patient.patientName;
        $scope.patient.patientAddress = patient.patientAddress;
        $scope.patient.patientPhone = patient.patientPhone;
    };
    
    
    function _requisetSuccess(){
    	$http({
            method : "GET",
            url : "http://localhost:9090/patient"
        }).then(function mySuccess(response) {
            $scope.patients = response.data;
        }, function myError(response) {
            $scope.error = response.statusText;
        });
    	$scope.massage = "Operation Success";
    	_resetForm();
    };
    
    function _requistFail() {
		$scope.massage = "Operation Fail";
		_resetForm();
	};
	
	function _resetForm() {
		$scope.patient = {
	    		patientId: -1,
	    		patientName: "",
	    		patientAddress: "",
	    		patientPhone: ""
	     };
	};
	
	function _refresh() {
		$http({
            method : "GET",
            url : "http://localhost:9090/patient"
        }).then(function mySuccess(response) {
            $scope.patients = response.data;
        }, function myError(response) {
            $scope.error = response.statusText;
        });
		_resetForm();
	}

});