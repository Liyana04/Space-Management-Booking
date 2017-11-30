/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.lecturer;
import bean.spacemanager;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class adduser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet adduser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adduser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
             HttpSession session = request.getSession(true);
            session.setAttribute("position",request.getParameter("position"));//copy this declare
           
             RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/admin/adduser.jsp");
 
        dispatcher.forward(request, response);
        }
        
    }

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
        
        response.setContentType("text/html;charset=UTF-8");
        try (
               
                PrintWriter out=response.getWriter();){
    
                Class.forName("com.mysql.jdbc.Driver"); 
               

         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase?useSSL=false", "root", "1234");

         PreparedStatement stmtt=conn.prepareStatement("insert into user values(?,?,?)");
         HttpSession session = request.getSession(true);
         String position = (String)session.getAttribute("position");//copy this panggil
 
        stmtt.setString(1,position);
        out.println(position);
        stmtt.setString(2,request.getParameter("username"));
        stmtt.setString(3,request.getParameter("password"));
        stmtt.executeUpdate(); 
       out.println(position);
        
        if(position.equals("lecturer"))
        {
            
         PreparedStatement stmt=conn.prepareStatement("insert into lecturer values(?,?,?,?,?,?)");
         int staffno=Integer.parseInt(request.getParameter("staffno"));
         int phonenumber=Integer.parseInt(request.getParameter("phonenumber"));
         out.println(phonenumber);
         stmt.setInt(1,staffno);
         stmt.setString(2,request.getParameter("nama"));
         stmt.setInt(3,phonenumber);
         stmt.setString(4,request.getParameter("email"));
         stmt.setString(5,request.getParameter("username"));
         stmt.setString(6,request.getParameter("icnumber"));
         stmt.executeUpdate(); 
         RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/admin/adminHomePage.jsp");
 
        dispatcher.forward(request, response);
     
        }
        else
        {
        PreparedStatement stmt=conn.prepareStatement("insert into spacemanager values(?,?,?,?)");
        int phonenumber=Integer.parseInt(request.getParameter("phonenumber"));
         stmt.setString(1,request.getParameter("nama"));
         stmt.setInt(2,phonenumber);
         stmt.setString(3,request.getParameter("email"));
         stmt.setString(4,request.getParameter("username"));
         stmt.executeUpdate(); 
         RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/admin/adminHomePage.jsp");
 
        dispatcher.forward(request, response);
       
        }
        
         
          

 
      } catch(Exception ex) {
         ex.printStackTrace();
      }
      

            
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

   
}