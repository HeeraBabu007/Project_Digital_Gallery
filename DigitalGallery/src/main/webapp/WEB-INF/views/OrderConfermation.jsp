<%@ include file="header.jsp"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="resources/js/angular.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
	var prod3 = ${cart};
	angular.module('repeatSample', []).controller('repeatController',['$scope', function($scope)
			 {
		
				$scope.products = prod3;
				$scope.value=1;

				 $scope.change=function(value)
                 {
                	 $scope.products.qty=Number($scope.value);
                 };
				

    }]);
</script>
<div class="container">
<sf:form class="form-horizontal" method="post" action="" commandName="addcart" enctype="multipart/form-data">

<div ng-app="repeatSample" ng-controller="repeatController">
<table class="table table-bordered table-hover table-striped">
<tr><tr>
			
                        <th>Image</th>
                        <th>productname</th>
						<th>Quantity</th> 
						<th>prize</th>
						<th>total</th>
	</tr>
				<tr class="success" ng-repeat="prod in products">
				<td><img src="./resources/images/{{prod.productid}}.jpg" height="50px" width="50px"></td>
                    <td>{{prod.productname}}</td> 	<td>{{prod.qty}}</td>
					<td>{{prod.prize}}</td>
	                <td>{{prod.qty*prod.prize}}</td>
                    <td><a href="Removecart?pid={{prod.productid}}">Remove</a></td>
                    <td>Grand Total:${sessionScope.grandtotal}</td>
                     </tr>
                     <tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>Grand Total:${sessionScope.grandtotal}</td>
				</tr>
</table></div>
<center><a href="AddToCartgoback">Edit</a></center>
<br>
<br>
<br>

<b>	Customer Information</b>
<div class="row"><div class="col-xs-6 col-sm-6 col-md-6"> 
	<div class="form-group">
		<table class="table table-responsive">
			<tr>
			<thead>
						<th>emailid</th>
						<th>Mobile</th>
						<th>Address</th>
					</tr>
			</thead>
					   <td>${email}</td>
					   <td>${mobile}</td>
					   <td>${useraddr}</td>
		    </table>
	</div>
</div> 
</sf:form>
<div class="col-md-10 ">
<div class="pull-right">
<h1><a href="OrderConfirmed">Confirm your Order</a></h1></div>
</div>