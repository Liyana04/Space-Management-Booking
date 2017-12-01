/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.*;
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
import bean.lecturer;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
/**
 *
 * @author user
 */
public class viewlistbooking extends HttpServlet {

   public viewlistbooking()
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
                           HttpSession session = request.getSession(true);
         String username = (String)session.getAttribute("username");//copy this panggil

         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase?useSSL=false", "root", "1234");
        
            
     
          Statement stmt = conn.createStatement();
          String sql = "Select * from booking";
         ResultSet rs = stmt.executeQuery(sql);
     
   List<booking> list = new ArrayList<booking>();
         while (rs.next()) {
             if(username.equals(rs.getString("username")))
             {
               
            int booking_id = rs.getInt("booking_id");//based on db
            String StartDate = rs.getString("StartDate");
            String EndDate = rs.getString("EndDate");
            String StartTime = rs.getString("StartTime");
            String EndTime = rs.getString("EndTime");
            String Status = rs.getString("Status");
            String booking = rs.getString("booking");
            String purpose = rs.getString("purpose");
            String Username = rs.getString("Username");
            
             booking books= new booking();
             lecturer lect = new lecturer();
             books.setBooking_id(booking_id);
             books.setStartDate(StartDate);
             books.setEndDate(EndDate);
             books.setStartTime(StartTime);
             books.setEndTime(EndTime);
             books.setStatus(Status);
             books.setBook(booking);
             books.setPurpose(purpose);
             lect.setUsername(Username);
             }
         }
        
           
          request.setAttribute("lectlist", list);
            
        
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/admin/lecturerlist.jsp");
            dispatcher.forward(request, response);
      
        }  catch (ClassNotFoundException ex) 
    {
           Logger.getLogger(viewlistLecturer.class.getName()).log(Level.SEVERE, null, ex);
       } catch (SQLException ex) 
       {
           Logger.getLogger(viewlistLecturer.class.getName()).log(Level.SEVERE, null, ex);
       }
    }
    
}
 
    
 
    



