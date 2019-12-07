<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Summit Banking</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>

			 <h1 class="title">Welcome to Our Website!</h1>
                         <%
                          String Login=request.getParameter("login");
		          String Password=request.getParameter("password");
		          Connection con;
                          boolean rowfound=false;
		
      
           /* Checking wether the login_id and the password are valid*/ 
                 
	
		try
		  
                   {	  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                          con=DriverManager.getConnection("jdbc:odbc:Banking","sa","aparnaap");
			  PreparedStatement s=con.prepareStatement("select * from login where cloginId=? and cPassword=?");
			  s.setString(1,Login);
			  s.setString(2,Password);
			  ResultSet result=s.executeQuery();
			  rowfound=result.next();
		
		 
                if (rowfound==true)
		  
                  
                  {	
			  System.out.println("value"+Login);						 
			  out.println("<HTML>");
			  out.println("<BODY>");
			  out.println("<BR>");			 
			  out.println("<A HREF='admin.html'><b><font color=white> Log out</font></b></A><br>");
			  out.println("<B>You are a valid person</B><br><br><br>");
			  out.println("<A HREF='Product.jsp'><b><font color=white>1) Products</font></b></A><br><br>");
                          out.println("<A HREF='Branches.jsp'><b><font color=white>2) Branches</font></b></A><br><br>");
                          out.println("<A HREF='BankingOfficer.jsp'><b><font color=white>3) Banking Officer</font></b></A><br><br>");
                          out.println("<A HREF='ServiceDesk.jsp'><b><font color=white>4) Service Desk</font></b></A>");
                          out.println("</BODY>");
			  out.println("</HTML>");
                          out.close();
		  }
	
  	         
	        	
                else
		  
                    {
			
			  out.println("<HTML>");
			  out.println("<BODY>");
			  out.println("<H3>");
			  out.println("<CENTER><B>You are not valid only a administrator can access this page </B></CENTER>");
			 
                          out.println("</BODY>");
			  out.println("</HTML>");
                          out.close();
			
	       	    }
               
	
         }

                catch(Exception e)

                     {

                          out.println(e.getMessage().toString());
                          out.close();

                     }
                %>       
		
</body>
</html>

