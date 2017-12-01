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
import bean.spacemanager;
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
public class viewSM extends HttpServlet {

   public viewSM()
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
                  

         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase?useSSL=false", "root", "123");
        
         PreparedStatement stmt=conn.prepareStatement("Select * from spacemanager WHERE name=?");
          HttpSession session = request.getSession(true);
         String lname = (String)session.getAttribute("name");  
     
         stmt.setString(1,lname);
         ResultSet rs = stmt.executeQuery();
     
   
         

             String name = rs.getString("name");
             int phonenumber =Integer.parseInt( rs.getString("phonenumber"));
             String email=rs.getString("email");
             String username=rs.getString("username");

             
             spacemanager sp= new spacemanager();
          
           
             sp.setName(name);
             sp.setUsername(username);
             sp.setEmail(email);
             sp.setPhonenumber(phonenumber);

         
        
           
            
        
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/spacemanager/smprofile.jsp");
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
 
    
 
    



