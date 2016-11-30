<%@ include file="header2.jsp" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<div class="container">
        <sf:form action="InsertcUser1" method="post" commandName="userdetails">
            <table align="center">
                <tr>
                    <td colspan="2" align="center">
                    <h1>User Details</h1></td>
               
               <tr>
                    <td><sf:input path="Username" class="form-control input-lg" placeholder="User Name" 
                        pattern=".{3,15}" required="true" title="minimum length for Username 3" /></td>
                </tr>
               
               <tr>
                    <td><sf:input type="email" path="emailid" class="form-control input-lg" placeholder="Email"
                    name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></td>
                </tr>
               
                <tr>
                    <td><sf:password path="password" class="form-control input-lg" placeholder="Password"  /></td>
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
    </div>
    <br><br><br>
    <%@ include file="Footer.jsp" %>