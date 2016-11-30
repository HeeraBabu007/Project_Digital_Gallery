<%@ include file="header.jsp" %>
<div class="container">
 	<form class="col-sm-4" action="perform_login" method="post">
		<h1>Login Form</h1>
				<div class="form-group">
					<input type="text" class="form-control input-lg" placeholder="Username" required id="username" name="username" 
						pattern=".{1,10}" title="minimum length for username is 5"/>
				</div>
				<div>
					<input type="password" class="form-control input-lg" placeholder="Password" required id="password" name="password" 
					title="Enter Valid credentials"/>
				</div>
				<br>
				<div class="form-group">
				    <button type="submit" value="Log in" class="btn btn-success" class="btn btn-default">login</button>
				
					<a href="http://localhost:8080/DigitalGallery/ContactUs"><button class="btn btn-warning">Lost your password?</button></a> 
					<a href="usershow"><button class="btn btn-primary">Register</button></a>
				</div>
				
	</form>
</div>
			<br><br>
<%@ include file="Footer.jsp" %>