<%-- 
    Document   : viewListResources
    Created on : Dec 1, 2017, 2:49:35 AM
    Author     : nur liyana
--%>

<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.room"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Resources List</title>
 </head>
 <body>
    <h3>List of Resources</h3>

 
    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>Room ID</th>
          <th>Room Type</th>
          <th>Room Name</th>
          <th>Capacity</th>
          <th>Facilities</th>
       </tr>
         <%  
// retrieve your list from the request, with casting 
ArrayList<room> list = (ArrayList<room>) request.getAttribute("listResources");

// print the information about every category of the list
for(room category : list) {
         %><tr>
    <td><% out.println(category.getRoom_id());%>
    <td><%out.println(category.getRoom_type());%>
    <td><%out.println(category.getRoom_name());%>
    <td><%out.println(category.getCapacity());%>    
    <td><%out.println(category.getFacilities());%> 
         </tr>
         <%
}
%>

    
    </table>
 
  
 
 </body>
</html>
