<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <link href="resources/font/font-awesome.min.css" rel="stylesheet">
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
<link href="resources/font/font-awesome.min.css" rel="stylesheet">
</head>
<script src="resources/images/angular.min.js"></script>
<style>

.social:hover {
     -webkit-transform: scale(1.1);
     -moz-transform: scale(1.1);
     -o-transform: scale(1.1);
 }
 .social {
     -webkit-transform: scale(0.8);
     /* Browser Variations: */
     
     -moz-transform: scale(0.8);
     -o-transform: scale(0.8);
     -webkit-transition-duration: 0.5s;
     -moz-transition-duration: 0.5s;
     -o-transition-duration: 0.5s;
 }

/*
    Multicoloured Hover Variations
*/
 
 #social-fb:hover {
     color: #3B5998;
 }
 #social-tw:hover {
     color: #4099FF;
 }
 #social-gp:hover {
     color: #d34836;
 }
 #social-em:hover {
     color: #f39c12;
 }

</style>
 <center>
 <%
    Integer hitsCount =(Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 )
    {
       /* First visit */
       out.println("Welcome to Digital Gallery");
       hitsCount = 1;
    }
    else
    {
       /* return visit */
    		  
       out.println("Welcome to Digital Gallery once again!");
       hitsCount += 1;
      
    }
    application.setAttribute("hitCounter", hitsCount);
%>
</center>
<center><b>Total number of visits: <%= hitsCount%></b></center>

<div class="container">
        <div class="text-center center-block pull-right">
            <p class="txt-railway"><p><strong>Easy online Access</strong>
            <br />
                <a href="https://www.facebook.com"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.com"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://plus.google.com"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	            <a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
		</div>
</div>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<div class="container">
  <div class="footer clearfix">
       <div class="col-xs-6 footer-para">
            <b>&copy; CopyRight:All Rights Reserved Designed by Digital Gallery</b>
        </div>
  </div>
</div>