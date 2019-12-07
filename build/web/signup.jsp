<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <h1>Thank you for using our Services</h1>
    
    
    <%
             
	               String obj=request.getParameter("action");  
	               System.out.println("Value: "+obj);
	               String username=request.getParameter("username");
                       String pass=request.getParameter("password");
                       String name=request.getParameter("name");
                       String email=request.getParameter("email");
                       String date=request.getParameter("date");
                       String phone=request.getParameter("phone");
                       Connection con;
	               int rows=0;
                       
                       try
		
                  {     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                        con=DriverManager.getConnection("jdbc:odbc:Banking","sa","aparnaap");
		        PreparedStatement stat=con.prepareStatement("insert into signup(UserId,Password,UserName,Email,Date,Phone) values(?,?,?,?,?,?)");
			stat.setString(1,username);
			stat.setString(2,pass);
                        stat.setString(3,name);
                        stat.setString(4,email);
                        stat.setString(5,date);
                        stat.setString(6,phone);
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
		        out.println("<head><title>Sun tech Bank</title></head>");
		        out.println("<body bgcolor=Cyan>");
		        out.println("Couppon is not generated");		 
		        out.println("<BR>");
		        out.println("</body></html>");
                        out.close();
		 
                  }
		 
                  else
		    
                    {
		 	System.out.println("values have been inserted in the table successfully");		       		
		        out.println("<html>");
		        out.println("<head><title>Sun tech Bank welcomes you</title></head>");
		        out.println("<body bgcolor=Orange>");
		        out.println("you have sucessfully generated your Couppon.To See it Please SignIn with your UserName & Password");		 
		        out.println("<BR>");
                        
		        out.println("</body></html>");
                        out.close();
                    }
    %>
   
    
    </body>
</html>
