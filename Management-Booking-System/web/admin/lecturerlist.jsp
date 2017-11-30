
  
<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.lecturer"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Product List</title>
 </head>
 <body>

 
    <h3>list lecturer</h3>

 
    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>Staff No</th>
          <th>Name</th>
          <th>Phone Number</th>
          <th>Email</th>
          <th>Username</th>
          <th>IC number</th>
       </tr>
         <%  
// retrieve your list from the request, with casting 
ArrayList<lecturer> list = (ArrayList<lecturer>) request.getAttribute("lectlist");

// print the information about every category of the list
for(lecturer category : list) {
         %><tr>
    <td><% out.println(category.getStaffNo());%>
    <td><%out.println(category.getName());%>
    <td><%out.println(category.getPhoneNumber());%>
    <td><%out.println(category.getEmail());%>    
    <td><%out.println(category.getUsername());%>   
    <td><%out.println(category.getIcnumber());%>  
         </tr>
         <%
}
%>

    
    </table>
 
  
 
 </body>
</html>