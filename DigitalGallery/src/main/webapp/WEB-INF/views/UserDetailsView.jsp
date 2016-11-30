<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="AdminHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>User form</title>
</head>
<body>
    <div align="center">
        <sf:form action="InsertcUser" method="post" commandName="userdetails">
            <table border="0">
                <tr>
                    <td colspan="2" align="center">
                    <h1>User Details</h1></td>
               
                <tr>
                    <td><sf:password path="password" class="form-control input-lg" placeholder="Password"  /></td>
                </tr>
                <tr>
                    <td><sf:input path="Username" class="form-control input-lg" placeholder="User Name" 
                        pattern=".{3,15}" required="true" title="minimum length for Username 3" /></td>
                </tr>
                <tr>
                    <td><sf:input type="email" path="emailid" class="form-control input-lg" placeholder="Email"
                    name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></td>
                </tr>
                <tr>
                    <td><sf:input path="Address" class="form-control input-lg" placeholder="Address"  /></td>
                </tr>
                <tr>
                    <td><sf:input path="Mobile" class="form-control input-lg" placeholder="Mobile No." 
                    pattern="^[789]\d{9}$" required="true" title="Enter valid 10 digit mobile number"/><br></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" class="btn btn-success" value="Please Add User" /></td>
                </tr>
            </table>
        </sf:form>
    <br><br><br>
    <%@ include file="Footer.jsp" %>
</div>
</body>
</html>