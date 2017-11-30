<%-- 
    Document   : editSM
    Created on : Nov 16, 2017, 8:07:15 AM
    Author     : Damia
--%>
<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.spacemanager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Space Manager Profile</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="css/bootstrap-theme.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/bootstrap.css">
  <style>
        .jumbotron, .footer{
            background-color: #1b6d85;
            color:#fff;
          
        }
        body {
                padding-left: 10px;
                padding-right: 10px;
                background-color: #ebebeb;
            }
            
        </style>
</head>
<body>
<% 
// retrieve your list from the request, with casting
    ArrayList<spacemanager> list = (ArrayList<spacemanager>) request.getAttribute("spProfile");
for(spacemanager category : list) {
%>
<br><br> <center>
    <div class="jumbotron text-center">
        <h1>Space Management Booking System</h1>
    </div>
<div class="container-fluid text-center bg-grey">
    <h2>Edit Space Manager Information</h2><br>
        <div class="row">
            <div class="col-md-12">
            
            
            
            <form method="post" action="">
                
                    <table align="center">
                        <tr>
                            <td align="left">Phone Number</td>
                            <td><input type="text" name="phone" value="" /><td>:<% out.println(category.getPhonenumber());%></td></td>
                        </tr>

                        <tr>
                            <td align="left">Email</td>
                            <td><input type="text" name="email" value="" /><td>:<% out.println(category.getEmail());%></td></td>
                        </tr>  
                        <%
}
%>
                    </table><br><br>
                <input class="btn btn-success" type="submit" name="submit" value="update" align="center" />

            </form>
    </div>
    </div>
</div>
    <br/><br/>
    <a href="login" >
    <button type="submit"  class="btn btn-link" onClick= >
	HOME
	</button></a>
    <br/><br/>
<div class="footer"> 
<center><br><p>Copyright@Universiti Teknologi Malaysia</p><br></center>
</div>
</center>
</center>

</body>
</html>
