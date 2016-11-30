<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="resources/images/angular.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="AdminHeader.jsp"%>
<script>
	var prod = ${mylist};
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
<c:if test="${!checkk}">

<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<sf:form role="form" action="Insertcategory" commandName="category">
				<h2>
					Category Registration form for Administrator <small>Fill information carefully...</small>
				</h2>
				<hr class="colorgraph">
				<div class="row">
					<div class="row">
						<div class="col-xs-12">
							<div class="form-group col-xs-12">
								<sf:input path="categoryName" class="form-control input-lg"
									placeholder="categoryName" tabindex="1" pattern=".{3,15}"
									required="true" title="minimum length for categoryName is 5"></sf:input>
							</div>
							<div class="form-group col-xs-12">
								<sf:input path="categoryDiscription"
									class="form-control input-lg" placeholder="categoryDiscription"
									tabindex="1" pattern=".{5,15}" required="true"
									title="minimum length for categoryDiscription is 5"></sf:input>
							</div>
							<div class="form-group col-xs-12">
								<input type="submit" value="Get-Gategory"
									class="btn btn-primary btn-block btn-lg" tabindex="7">
							</div>
						</div>
					</div>
				</div>
			</sf:form>
		</div>
	</div>
</div>	
</c:if>

<c:if test="${checkk}">

	<div class="container">
		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		
				<sf:form role="form" action="plzNowUpdatedcategory"	commandName="category">
					<h2>
						Please Update the Categortes...<small>It's free and always
							will be.</small>
					</h2>
					<hr class="colorgraph">
					<div class="row">
						<div class="row">
							<div class="col-xs-12">


								<div class="form-group col-xs-12">

									<sf:input path="categoryId" class="form-control input-lg"
										placeholder="categoryId" tabindex="1"
										pattern=".{1,15}" required="true"
										title="minimum length for categoryDiscription is 5"></sf:input>
								</div>

								<div class="form-group col-xs-12">
									<sf:input path="categoryName" class="form-control input-lg"
										placeholder="categoryName" tabindex="1" pattern=".{3,15}"
										required="true" title="minimum length for categoryName is 5"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input path="categoryDiscription"
										class="form-control input-lg"
										placeholder="categoryDiscription" tabindex="1"
										pattern=".{3,15}" required="true"
										title="minimum length for categoryDiscription is 3"></sf:input>
								</div>

								<div class="col-xs-12">
									<input type="submit" value="Update-Gategory"
										class="btn btn-primary btn-block btn-lg" tabindex="7">
								</div>
							</div>
                           </div>
						</div>
				</sf:form>

			</div>
		</div>
</div>
</c:if>

<div ng-app="repeatSample" ng-controller="repeatController">
			<div class="row">

				<div class="input-group col-md-12">	<h2 align="center">Search Category</h2>
					<input type="text" class="search-query form-control" placeholder="Search" ng-model="searchText"/>
				</div>
			</div>

			<table class="table table-responsive">


				<thead>
					<tr>
						<th>categoryId</th>

						<th>categoryName</th>
						<th>categoryDiscription</th>
					</tr>
				</thead>
				<tr ng-repeat="product in products|filter:searchText">
					<td><a href="#">{{product.categoryid}}</a></td>
					<td><a href="#">{{product.categoryName}}</a></td>
					<td><a href="#">{{product.categoryDiscription}}</a></td>
					<td><a href="Deletecategory?pid={{product.categoryid}}">Delete</a></td>
					<td><a href="plzUpdatedcategory?pid={{product.categoryid}}">Update</a></td>
				</tr>
			</table>
		</div>
		</div>
<%@ include file="Footer.jsp"%>