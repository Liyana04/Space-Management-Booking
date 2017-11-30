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
public class viewlistLecturer extends HttpServlet {

   public viewlistLecturer()
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
          String sql = "Select * from lecturer";
         ResultSet rs = stmt.executeQuery(sql);
     
   List<lecturer> list = new ArrayList<lecturer>();
         while (rs.next()) {
             int staffno=Integer.parseInt(rs.getString("staffNo"));
             String name = rs.getString("name");
             int phonenumber =Integer.parseInt( rs.getString("phonenumber"));
             String email=rs.getString("email");
             String username=rs.getString("username");
             String icnumber=rs.getString("IcNumber");
             
             lecturer lect= new lecturer();
             lect.setIcnumber(icnumber);
             lect.setStaffNo(staffno);
             lect.setName(name);
             lect.setUsername(username);
             lect.setEmail(email);
             list.add(lect);
         }
        
           
          request.setAttribute("lectlist", list);
            
        
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/admin/viewLecturer.jsp");
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
 
    
 
    



