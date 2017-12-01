/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.room;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nur liyana
 */
public class viewListResources extends HttpServlet {

    public viewListResources()
   {
       super();
   }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        try (
               
                PrintWriter out=response.getWriter();){
                Class.forName("com.mysql.jdbc.Driver"); 
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase?useSSL=false", "root", "1234");
        
            
     
          Statement stmt = conn.createStatement();
          String sq2 = "Select * from room";
         ResultSet rs = stmt.executeQuery(sq2);
     
   List<room> lists = new ArrayList<room>();
         while (rs.next()) {
             int room_id=Integer.parseInt(rs.getString("room_id"));
             String room_type = rs.getString("room_type");
             String room_name=rs.getString("room_name");
             String capacity=rs.getString("capacity");
             String facilities=rs.getString("facilities");
             
             room R= new room();
             R.setRoom_id(room_id);
             R.setRoom_type(room_type);
             R.setRoom_name(room_name);
             R.setCapacity(capacity);
             R.setFacilities(facilities);
             lists.add(R);
         }
        
           
          request.setAttribute("listResources", lists);
            
        
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/admin/ViewListResources.jsp");
            dispatcher.forward(request, response);
      
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(viewListResources.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(viewListResources.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
    
    
    
}
