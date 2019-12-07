/*
 * Branch.java
 *
 * Created on June 13, 2009, 3:31 AM
 */

package view;

import java.io.*;
import java.net.*;
import java.sql.*;
import javax.sql.DataSource;
import javax.servlet.*;
import javax.servlet.http.*;



/**
 *
 * @author Ashim
 * @version
 */
public class Branch extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        /* TODO output your page here
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet Branch</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Servlet Branch at " + request.getContextPath () + "</h1>");
        out.println("</body>");
        out.println("</html>");
         */
        out.close();
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
    
        String obj=request.getParameter("action"); 
           
	              String Code=request.getParameter("bcode");
                      String Name=request.getParameter("bname");
                      String Details=request.getParameter("blocation");
                      Connection con;
	              int rows=0;

	if(obj.equals("Add"))
	    
              {
                           
           
		
               try
		
                  {     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                        con=DriverManager.getConnection("jdbc:odbc:Banking","sa","aparnaap");
		        PreparedStatement stat=con.prepareStatement("insert into Branches values(?,?,?)");
			stat.setString(1,Code);
			stat.setString(2,Name);
                        stat.setString(3,Details);
			rows=stat.executeUpdate();
                      
		  }
		
             catch(Exception e1)
		
                    {
			
                        System.out.println(e1.toString());
		
                    }
	  	 if(rows==0)
		 
                  {
		 	System.out.println("Error inserting data in the  table");                      		
		        out.println("<html>");
		        out.println("<head><title>Sumit Bank welcomes you</title></head>");
		        out.println("<body bgcolor=Cyan>");
		        out.println("values are not inserted in the table");		 
		        out.println("<BR>");
		        out.println("</body></html>");
                        out.close();
		 
                  }
		 
                  else
		    
                    {
		 	System.out.println("values have been inserted in the table successfully");		       		
		        out.println("<html>");
		        out.println("<head><title>Sumit Bank welcomes you</title></head>");
		        out.println("<body bgcolor=Orange>");
		        out.println("values have been inserted sucessfully");		 
		        out.println("<BR>");
		        out.println("</body></html>");
                        out.close();
                    }

         }
	
           if(obj.equals("Modify"))
	
            {
		        System.out.println("update");
		try
		
                   {    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                        con=DriverManager.getConnection("jdbc:odbc:Banking","sa","aparnaap");
			PreparedStatement stat=con.prepareStatement("update Branches set  BranchName=?,Location=? where BranchCode=?");
		        stat.setString(1,Name);
			stat.setString(2,Details);
                        stat.setString(3,Code);
			rows=stat.executeUpdate();
		
                   }
		
             catch(Exception e2)
		
                 {
			
                        System.out.println(e2.toString());
		
                 }
	 	 
             if(rows==0)
		 
                   {
		 	System.out.println("values are not updated in the table");                       		
		        out.println("<html>");
		        out.println("<head><title>Sumit Bank welcomes you</title></head>");
		        out.println("<body bgcolor=cyan>");
		        out.println("values are not updated in the table");		  
		        out.println("<BR>");
		        out.println("</body></html>");
                        out.close();
		 
                   }
		 else
		 {
		 	System.out.println(" values have been updated in the table successfully");		        
		        out.println("<html>");
		        out.println("<head><title>Sumit Bank welcomes you</title></head>");
		        out.println("<body bgcolor=Coral>");
		        out.println("values have been updated sucessfully");		  
		        out.println("<BR>");
		        out.println("</body></html>");
                        out.close();
                
                }

      }              
	
	if(obj.equals("Delete"))
	
                 {	
                        System.out.println("Delete");
		
                   try
		    {   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                        con=DriverManager.getConnection("jdbc:odbc:Banking","sa","aparnaap");
			PreparedStatement stat=con.prepareStatement("delete from branches where BranchCode=?");
			stat.setString(1,Code);
			rows=stat.executeUpdate();
		    }
		catch(Exception e3)
		
                   {
			System.out.println(e3);
		
                   }
	    	 if(rows==0)
		
                     {
		 	System.out.println("data in the table are not deleted");                        		
		        out.println("<html>");
		        out.println("<head><title>Sumit Bank welcomes you</title></head>");
		        out.println("<body bgcolor=Orange>");
		        out.println("values are not deleted from the table");		 
		        out.println("<BR>");
		        out.println("</body></html>");
                        out.close();
		
                     }
		 else
		 
                   {
		 	System.out.println(" values have been deleted successfully");		       		
		        out.println("<html>");
		        out.println("<head><title>Sumit Bank welcomes you</title></head>");
		        out.println("<body bgcolor=lightgreen>");
		        out.println("values have been deleted sucessfully");		 
		        out.println("<BR>");
		        out.println("</body></html>");
                        out.close();
                   }
    }
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
