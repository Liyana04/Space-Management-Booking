/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
public class bookingRoom extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet bookingRoom</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet bookingRoom at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

         PreparedStatement stmtt=conn.prepareStatement("insert into booking (StartDate,EndDate,StartTime,EndTime,Status,book,purpose,lectBook) values(?,?,?,?,?,?,?,?)");
        
         
        stmtt.setString(1,request.getParameter("Sdate"));
        stmtt.setString(3,request.getParameter("Stime"));
        stmtt.setString(2,request.getParameter("Edate"));
        stmtt.setString(4,request.getParameter("Etime"));
        stmtt.setString(5,"pending");
        stmtt.setString(7,request.getParameter("purpose"));
        stmtt.setString(6,request.getParameter("book"));
        stmtt.setString(8,"shafri");
        stmtt.executeUpdate(); 
        
         RequestDispatcher dispatcher;
          dispatcher = request.getRequestDispatcher("lecturer/profileLect.jsp");
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
