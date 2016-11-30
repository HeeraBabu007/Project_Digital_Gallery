<%@ include file="WEB-INF\views\header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>My Digital Gallery...</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<h3><b><center>Welcome,To Digital Gallery !!!</center></b></h3>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/30.jpg" alt="Chania" width="1259" height="10">
      </div>
      <div class="item">
        <img src="resources/images/31.jpg" alt="Chania" width="1300" height="400">
      </div>
      <div class="item">
        <img src="resources/images/32.jpg" alt="Flower" width="1300" height="100">
      </div>

      <div class="item">
        <img src="resources/images/33.jpg" alt="Flower" width="1300" height="100">
      </div>
      
      <div class="item">
        <img src="resources/images/34.jpg" alt="Flower" width="1259" height="100">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div>
<div class="container">
 <h4><b>Look It...Its Awesome</b></h4>
  
  <div class="row">
    <div class="col-md-4">
      <a href="resources/images/2.jpg" class="thumbnail">
        <p>Hurrry....buy online tiket Here</p>
        <img src="resources/images/32.jpg" alt="Pulpit Rock" style="width:200px;height:200px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="resources/images/36.jpg" class="thumbnail">
        <p>Upcoming Movies</p>
        <img src="resources/images/33.jpg" alt="Moustiers Sainte Marie" style="width:200px;height:200px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="resources/images/24.jpg" class="thumbnail">
      <p>Old is Gold</p>
      <img src="resources/images/34.jpg" alt="Cinque Terre" style="width:200px;height:200px"/>
      </a>
    </div>
  </div>
</div>
</div>
</body>
</html>
<%@ include file="WEB-INF\views\Footer.jsp" %>