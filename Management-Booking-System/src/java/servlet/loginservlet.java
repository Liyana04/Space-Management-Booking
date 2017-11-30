package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import bean.user;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
@WebServlet(urlPatterns = { "/login" })
public class loginservlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (
               
                PrintWriter out=response.getWriter();){
         
                Class.forName("com.mysql.jdbc.Driver"); 
               

         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase?useSSL=false", "root", "1234");

         PreparedStatement stmt=conn.prepareStatement("select * from user where username=? and password=?");  
         String username=request.getParameter("username");
         String password=request.getParameter("password");
         stmt.setString(1,username);
         stmt.setString(2,request.getParameter("password"));
               HttpSession session = request.getSession(true);
            session.setAttribute("username",request.getParameter("username"));//copy this declare
           

 
         ResultSet rset = stmt.executeQuery();
         out.println("the login is: ");
 
while(rset.next())
{
    out.println("success");
    user userlogin=new user(rset.getString("position"),rset.getString("username"),rset.getString("password"));
    String position=userlogin.getPosition();
    if(position.equals("lecturer"))
            {
                RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/lecturer/profileLect.jsp");
            dispatcher.forward(request, response);
            }
    else
    {
        if(position.equals("spacemanager"))
        {
         RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/sapcemanager/SpaceManagerHomePage.jsp");
        dispatcher.forward(request, response);
        }
        else
        {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/admin/adminHomePage.jsp");
        dispatcher.forward(request, response);
        }
    }

}
  

 
      } catch(Exception ex) {
         ex.printStackTrace();
      }
      
      // Step 5: Close the resources - Done automatically by try-with-resources
   }



    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
