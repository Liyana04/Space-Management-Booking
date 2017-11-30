
  
<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.spacemanager"%>
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
         
          <th>Name</th>
          <th>Phone Number</th>
          <th>Email</th>
          <th>Username</th>
      
       </tr>
         <%  
// retrieve your list from the request, with casting 
ArrayList<spacemanager> list = (ArrayList<spacemanager>) request.getAttribute("splist");

// print the information about every category of the list
for(spacemanager category : list) {
         %><tr>
   
    <td><%out.println(category.getName());%>
    <td><%out.println(category.getPhonenumber());%>
    <td><%out.println(category.getEmail());%>    
    <td><%out.println(category.getUsername());%>   
         </tr>
         <%
}
%>

    
    </table>
 
  
 
 </body>
</html>