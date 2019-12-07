/*
 * login.java
 *
 * Created on June 9, 2013, 1:57 PM
 */

package view;

import java.io.*;
import java.net.*;
import javax.sql.DataSource;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 *
 * @author Ashim
 * @version
 */
public class login extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       String login=request.getParameter("login");
       String pass=request.getParameter("password");
       Connection con=null;
       PreparedStatement ps=null;
       boolean rowfound=false;
       try
       {
          	  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                          con=DriverManager.getConnection("jdbc:odbc:Banking","sa","aparnaap");
			  ps=con.prepareStatement("select * from signup where UserId=? and Password=?");
			  ps.setString(1,login);
			  ps.setString(2,pass);
			  ResultSet rs=ps.executeQuery();
			  rowfound=rs.next();
                          
             if (rowfound==true)
		  
                  
                  {	
			  					 
			  out.println("<HTML>");
			  out.println("<BODY bgcolor=yellow>");
			  out.println("<BR>");			 
			  out.println("<H3>");
			  out.println("<CENTER><B>You are a valid person</B></CENTER>");
			  out.println("<A HREF=ticket.jsp><b>Click here to See Your Cuppon No.</b></A>");
                          out.println("</BODY>");
			  out.println("</HTML>");
                          out.close();
		  }
                           else
		  
                    {
			
			  out.println("<HTML>");
			  out.println("<BODY bgcolor=choclaty>");
			  out.println("<BR><BR>");
			  out.println("<H3>");
			  out.println("<CENTER><B>You are not valid only a valid Customer can access this page.First of all you Should Generate ur Couppon.  </B></CENTER>");
			
                          out.println("</BODY>");
			  out.println("</HTML>");
                          out.close();
			
	       	    }
               
       }
         

                catch(Exception ex)

                     {

                          out.println(ex.getMessage().toString());
                          out.close();
		
       }
       
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
       
       processRequest(request, response); 
		
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
