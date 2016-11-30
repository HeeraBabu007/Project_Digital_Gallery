<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>  
<html lang="en">  
<head>  
  <title>Bootstrap header included</title>  
  <meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1">  
   <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/bootstrap-theme.min.css" rel="stylesheet">
     <link href="resources/css/bootstrap.css" rel="stylesheet">
     <link href="resources/font/font-awesome.min.css" rel="stylesheet">
     <script src="resources/js/bootstrap.min.js"></script>
     <script src="resources/js/bootstrap.js"></script>
     <script src="resources/js/npm.js"></script>
     <script src="resources/js/jquery.min.js"></script>  
     <script src="resources/js/bootstrap.min.js"></script>
     <link href="resources/font/font-awesome.min.css" rel="stylesheet">  
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
     <script src="resources/images/angular.min.js"></script>
    <title>Digital Gallery</title>

    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

    <div class="container">
      <div class ="row">
       <c:if test="${sessionScope.UserLoggedIn }">
             <li>Welcome ${Userid}</li>
       </c:if>
<div class ="col-xs-2 header-logo">
     <a href="index.jsp"><img src="resources/images/logo.jpg"class="img-responsive" alt="Cinque Terre" width="100" height="50"/>
     </a>
</div>
<div class="col-xs-1 pull-right">
          
                        <a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a>
                        <a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a>		
</div>
	

<div class="pull-right">			
      <a href="GoToCart1"><img src="resources/images/cart11.png" height="60px" width="60px"></img></a>
      <c:if test="${not empty count}"> <center>0</center></c:if>
</div>        
</div>
      
      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">Digital Gallery</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="index.jsp">Home</a></li>
              <li><a href="AboutUs">About</a></li>
              <li><a href="ContactUs">Contact</a></li>
           </ul>
            <ul class="nav navbar-nav navbar-right">
                  <li><a href="DisplayProduct1">Shop Product</a></li>
              	<c:if test="${not sessionScope.UserLoggedIn}">
     				<li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>SignIn</a></li>
      				<li><a href="usershow1"><span class="glyphicon glyphicon-log-out"></span> Sign Up</a></li>
     		    </c:if>
      				<c:if test="${sessionScope.UserLoggedIn}">  
       				<li><a href="perform_logout">Log Out </a></li>
       			</c:if>
    		</ul>  
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>



    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>