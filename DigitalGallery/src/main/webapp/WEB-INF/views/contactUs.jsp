<jsp:include page="header2.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Contact us</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 
 <div class="container" >
    <h1>Please give us your <b>FeedBack</b> by e-mail</h1>
          <form class="col-sm-4" method="post" action="sendEmail">
            <div class="form-group">
               <label>E-mail:</label>
                    <input type="text" name="recipient" class="form-control" size="65" />
            </div>
            
             <div class="form-group">
                 <label>Subject:</label>
                    <input type="text" name="subject" class="form-control" size="65" />
             </div>
             
          <div class="form-group">
                 <label>Message:</label>
                       <textarea cols="50" rows="10" name="message" class="form-control"></textarea>
          </div>          
             <button class="btn btn-success" type="submit" value="Send E-mail"> Send E-mail</button>
</form></div>
  <jsp:include page="Footer.jsp"></jsp:include>