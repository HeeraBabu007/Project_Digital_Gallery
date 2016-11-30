<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="resources/js/angular.min.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<script>
	var prod = ${mylist3};
	angular.module('repeatSample', []).controller('repeatController',
			function($scope) {
				$scope.products = prod;

				$scope.sort = function(keyname) {
					$scope.sortKey = keyname; //set the sortKey to the param passed
					$scope.reverse = !$scope.reverse; //if true make it false and vice versa
				}

			});
</script>
<div class="container">
<div ng-app="repeatSample" ng-controller="repeatController">
			<div class="row">

				<div class="input-group col-md-12">
					<h2 align="center">Search And see Products</h2>

					<input type="text" class="search-query form-control"
						placeholder="please Search all products" ng-model="searchText" />

				</div>
			</div>
<table class="table table-responsive">
<thead>
					<tr>
						<th>product id</th>

						<th>product name</th>
						<th>prize</th>
						<th>stock</th>
						
						<th>Description</th>
						<th>Image</th>
					</tr>
				</thead>
					<tr ng-repeat="product in products|filter:searchText">
				    <td><a href="showallimages?pid={{product.productid}}">{{product.productid}}</a></td>
					<td><a href="showallimages?pid={{product.productid}}">{{product.productname}}</a></td>
					<td><a href="showallimages?pid={{product.productid}}">{{product.prize}}</a></td>
					<td><a href="showallimages?pid={{product.productid}}">{{product.stock}}</a></td>
					<td><a href="showallimages?pid={{product.productid}}">{{product.discrption}}</a></td>
					
					<td><a href="showallimages?pid={{product.productid}}">
					<img src="./resources/images/{{product.productid}}.jpg" height="50px" 
                     width="50px"/></a></td>
					

</tr>
</table>
</div>
</div>
</div>
<br><br><br><br><br><br><br><br>


<%@ include file="Footer.jsp"%>
