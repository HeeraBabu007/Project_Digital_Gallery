<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script src="resources/js/angular.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="AdminHeader.jsp" %>
<script>
			var prod = ${mylist};
			  angular.module('repeatSample', []).controller('repeatController', function($scope)
			   {
			                 $scope.products=prod;
			   
			          $scope.sort = function(keyname)
			          {
			              $scope.sortKey = keyname;   //set the sortKey to the param passed
			              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
			          }
			              
			    });
			</script>
		
<c:if test="${!checkk}">


<div class="container">
<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<sf:form role="form"  action="Insertsupp" commandName="supplier" method="post">
			<h2>Fill Suppliers information <small>kindly update carefully...</small></h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="row">
					<div class="col-xs-12">
					
					
					
					<div class="form-group col-xs-12">
                        <sf:input path="suppliername" class="form-control input-lg" placeholder="supplierName" 
                        tabindex="1"  pattern=".{3,15}" required="true" title="minimum length for supplierNameis 3" ></sf:input>
					</div>
                    <div class="form-group col-xs-12">
                        <sf:input path="supplieraddress" class="form-control input-lg" placeholder="supplierAddress" tabindex="1"  pattern=".{3,15}" required="true" title="minimum length for supplierAddress is 3" ></sf:input>
					</div>
                    <div class="form-group col-xs-12">
                        <sf:input path="suppliermobile" class="form-control input-lg" placeholder="supplierMobile" tabindex="1"  pattern=".{10,11}" required="true" title="minimum length for supplierMobile is 10" ></sf:input>
					</div>
                                     
					<div class="col-xs-12"><input type="submit" value="Get-Supplier" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
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
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<sf:form role="form"  action="plzNowUpdatedsupplier" commandName="supplier" method="post">
			<h2>Please Update all Avilevble Suppliers..<small>It's free and always will be.</small></h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="row">
					<div class="col-xs-12">
					
					
					<div class="form-group col-xs-12">
                        <sf:input path="supplierid" class="form-control input-lg" placeholder="supplierID" tabindex="1"  pattern=".{1,15}" required="true" title="minimum length for supplierIDis 3" ></sf:input>
					</div>
					<div class="form-group col-xs-12">
                        <sf:input path="suppliername" class="form-control input-lg" placeholder="supplierName" tabindex="1"  pattern=".{3,15}" required="true" title="minimum length for supplierNameis 3" ></sf:input>
					</div>
                    <div class="form-group col-xs-12">
                        <sf:input path="supplieraddress" class="form-control input-lg" placeholder="supplierAddress" tabindex="1"  pattern=".{3,15}" required="true" title="minimum length for supplierAddress is 3" ></sf:input>
					</div>
                    <div class="form-group col-xs-12">
                        <sf:input path="suppliermobile" class="form-control input-lg" placeholder="supplierMobile" tabindex="1"  pattern=".{3,15}" required="true" title="minimum length for supplierMobile is 3" ></sf:input>
					</div>
                                     
					<div class="col-xs-12"><input type="submit" value="Update-Supplier" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
					</div>
				</div>


	

			</sf:form>
			</div>
			</div>
			</div>
			</c:if>
			
			
			

<div ng-app="repeatSample" ng-controller="repeatController">
<div class="row">
		<h2 align="center">Search Supplier</h2>

            <div class="input-group col-md-12">
			<input type="text" class="search-query form-control" placeholder="Search" ng-model="searchText"/>
		
			</div>                                       
</div>

<table class="table table-responsive">


    <thead>
      <tr>
        <th>supplierID</th>
        
        <th>supplierName</th>
        <th>supplierAddress</th>
        <th>supplierMobile</th>
   
        </tr>
    </thead>
        
      </tr>
				
		<tr ng-repeat="product in products|filter:searchText">
			
			                
			                <td><a href="#">{{product.supplierid}}</a></td>
			                <td><a href="#">{{product.suppliername}}</a></td>
			                <td><a href="#">{{product.supplieraddress}}</a></td>
                            <td><a href="#">{{product.suppliermobile}}</a></td>
			                <td><a href="Deletesuppli?pid={{product.supplierid}}">Delete</a></td>
			                <td><a href="plzUpdatedsupplier?pid={{product.supplierid}}">Update</a></td>
			               
			               
			
			</tr>
			</table>
			</div>
			</div>
			</div>
			
		

			


<%@ include file="Footer.jsp" %> 		