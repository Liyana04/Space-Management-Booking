<%-- 
    Document   : ViewSession
    Created on : Nov 16, 2017, 12:18:11 PM
    Author     : PCUSER
--%>  
<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.booking"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>View Session</title>
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
<br><br> <center>
    <div class="jumbotron text-center">
        <h1>Space Management Booking System</h1>
    </div>
<div class="container-fluid text-center bg-grey">
<h2 align ="center"> ROOM/LAB </h2>
<h3 align ="center"> STATUS </h3>

<center><TABLE BORDER="1">
        <TR>
	<TH>Start Date</TH>
	<TH>End Date</TH>
        <TH>Start Time</TH>
        <TH>End Time</TH>
        <TH>Purpose</TH>
	<TH>Lecturer</TH>
        <TH>Status</TH>
        </tr>
        <%  
        // retrieve your list from the request, with casting 
        ArrayList<booking> list = (ArrayList<booking>) request.getAttribute("bklist");

        // print the information about every category of the list
        for(booking category : list) {
         %>
        <tr>
            
            <td><%out.println(category.getStartDate());%></td>
            <td><%out.println(category.getEndDate());%></td>
            <td><%out.println(category.getStartTime());%></td>
            <td><%out.println(category.getEndTime());%></td>
            <td><%out.println(category.getPurpose());%></td>
            <td><%out.println(category.getLectBook());%></td>
            <td><%out.println(category.getStatus());%></td>
          
            <td><select>
                    <option value = "reject">Reject</option>
                    <option value = "accept">Accept</option>
                </select>Action</td>
        </tr>
        <%
        }
        %>

    </TABLE></center>
</div>
<br/><br/>
    <a href="/spacemanager/smprofile.jsp" >
    <button type="submit"  class="btn btn-link" onClick= >
	HOME
	</button></a>
    <br/><br/>
<div class="footer"> 
<center><br><p>Copyright@Adios(Universiti Teknologi Malaysia)</p><br></center>
</div>
</center>
</center>
</body>
</html>