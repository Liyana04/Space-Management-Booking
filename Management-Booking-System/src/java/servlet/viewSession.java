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
import bean.booking;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
/**
 *
 * @author user
 */
@WebServlet(urlPatterns = { "/view" })
public class viewSession extends HttpServlet {

   public viewSession()
   {
       super();
   }
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        PreparedStatement ps;
        ResultSet rs;
        try (
               
                PrintWriter out=response.getWriter();){
 
                Class.forName("com.mysql.jdbc.Driver"); 
                  

         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase?useSSL=false", "root", "123");
   
          ps = conn.prepareStatement ("Select * from booking NATURALJOIN lecturer");
 
          rs = ps.executeQuery();
     
   List<booking> list = new ArrayList<booking>();
         while (rs.next()) {

             String startDate = rs.getString("StartDate");
             String endDate = rs.getString("EndDate");
             String status=rs.getString("status");
             String book=rs.getString("book");
             String purpose = rs.getString("purpose");
             String name = rs.getString("name");

             pw.println("<table><tr>");
             pw.println("<th>StartDate</th>");
             pw.println("<th>EndDate</th>");
             pw.println("<th>Status</th>");
             pw.println("<th>Room/Lab</th>");
             pw.println("<th>Lecturer's Name</th>");
             pw.println("</tr>");
             
             
             pw.println("<tr>");
             pw.println("<td>"+startDate+"</td>");
             pw.println("<td>"+endDate+"</td>");
             pw.println("<td>"+status+"</td>");
             pw.println("<td>"+book+"</td>");
             pw.println("<td>"+name+"</td>");
             pw.println("</tr></table>");
           

             
         }
        
           
          request.setAttribute("bklist", list);
            
        
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/spacemanager/ViewSession.jsp");
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