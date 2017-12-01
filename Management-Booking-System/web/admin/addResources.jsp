<%-- 
    Document   : addResources
    Created on : Dec 1, 2017, 3:43:42 AM
    Author     : nur liyana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Resources Page</title>
    </head>
    <body>
       
               <form method="post" action="addResources">
              <table border="2" width="4" cellspacing="2">
                      <tr>
                          <td>Room ID:</td>
                          <td><input type="text" name="room_id" value="" /></td>
                      </tr>
                      <tr>
                          <td>ROOM TYPE</td>
                          <td><input type="text" name="room_type" value="" /></td>
                      </tr>
                      <tr>
                          <td>ROOM NAME</td>
                          <td><input type="text" name="room_name" value="" /></td>
                      </tr>
                     <tr>
                          <td>CAPACITY</td>
                          <td><input type="text" name="capacity" value="" /></td>
                      </tr>
                      <tr>
                          <td>FACILITIES</td>
                          <td><input type="text" name="facilities" value="" /></td>
                      </tr>
              </table>
                 <input type="submit" value="SUBMIT" />
        </form>
    </body>
</html>

