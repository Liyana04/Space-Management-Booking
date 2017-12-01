/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.room;
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
 * @author nur liyana
 */
public class addResources extends HttpServlet {

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
            out.println("<title>Servlet addResources</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addResources at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/admin/addResources.jsp");
 
        dispatcher.forward(request, response);
        }
    }
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (
               
                PrintWriter out=response.getWriter();){
    
                Class.forName("com.mysql.jdbc.Driver"); 
               

         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase?useSSL=false", "root", "1234");

          
         PreparedStatement stmt=conn.prepareStatement("insert into room values(?,?,?,?,?)");
         int room_id=Integer.parseInt(request.getParameter("room_id"));
         stmt.setInt(1,room_id);
         stmt.setString(2,request.getParameter("room_type"));
         stmt.setString(3,request.getParameter("room_name"));
         stmt.setString(4,request.getParameter("capacity"));
         stmt.setString(5,request.getParameter("facilities"));
         
         stmt.executeUpdate(); 
         RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/admin/adminHomePage.jsp");
 
        dispatcher.forward(request, response);
     
 
      } catch(Exception ex) {
         ex.printStackTrace();
      }
      

            
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
