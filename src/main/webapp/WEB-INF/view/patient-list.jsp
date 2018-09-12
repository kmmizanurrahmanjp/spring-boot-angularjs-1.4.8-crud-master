<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/jquery.min.js"></script>
 <script src="../../webjars/angular/1.6.9/angular.min.js"></script>
 <script src="../../webjars/angular-route/1.6.9/angular-route.min.js"></script>
 <script src="js/users-angular.js"></script>
</head>
<body ng-app="myApp" ng-load="">
<br><br>
<div class="container-fluid" ng-controller="myCtrl">
	<div class="row">
		<div class="col col-sm-5">
			<h2>Patient Form</h2>
			  <form ng-submit="submitPatient()">
			    <div class="form-group" ng-hide="true">
			      <label for="id">ID</label>
			      <input type="text" class="form-control" placeholder="Enter id" ng-model="patient.patientId" readonly="readonly" required>
			    </div>
			    <div class="form-group">
			      <label for="name">Name</label>
			      <input type="text" class="form-control" placeholder="Enter name" ng-model="patient.patientName" required>
			    </div>
			    <div class="form-group">
			      <label for="address">Address</label>
			      <input type="text" class="form-control" placeholder="Enter address" ng-model="patient.patientAddress" required>
			    </div>
			    <div class="form-group">
			      <label for="phone">Phone</label>
			      <input type="text" class="form-control" placeholder="Enter phone" ng-model="patient.patientPhone" required>
			    </div>
			    <button type="submit" class="btn btn-primary" >SAVE</button>
			  </form>
		</div>
		<div class="col col-sm-7">
			<h2>Patient Info</h2>
			<table class="table table-hover">
				<tr>
					<td>Patient ID</td>
					<td>Patient Name</td>
					<td>Patient Address</td>
					<td>Patient Phone</td>
					<td colspan="2" style="text-align: center;">Action</td>
				</tr>
				<tr ng-repeat="patient in patients.data">
					<td>{{patient.patientId}}</td>
					<td>{{patient.patientName}}</td>
					<td>{{patient.patientAddress}}</td>
					<td>{{patient.patientPhone}}</td>
					<td><button class="btn btn-default" type="button" ng-click="patientUpdate(patient)">Update</button></td>
					<td><button class="btn btn-danger" type="button" ng-click="patientDelete(patient)">Delete</button></td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>