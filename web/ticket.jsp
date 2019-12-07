<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Summit Banking :: An Experience of Getting Every Service</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="content">
<div id="back">
<!-- header begins -->
<div id="header"> 
	<div id="logo">
		<h1><a href="#">Summit Banking</a></h1>
		<h2><a href="http://www.metamorphozis.com/" id="metamorph">An Experience of Getting Every Service</a></h2>
	</div>
  <div id="menu">
		<ul>
			 <li><a href="home.html">Home</a></li>
			<li><a href="loan.html">Products</a></li>
			<li><a href="login.html">Queue</a></li>
			<li><a href="admin.html">Official's</a></li>
			<li><a href="About.html">About</a></li>
		</ul>
	</div>
</div>

<!-- header ends -->
<!-- content begins -->
 <div id="main">
	<div id="right">
		<div class="box">
			 <div class="box2">
			<h4><a href="#">Welcome To Our Website</a></h4><br />
		
		  <form method="get" action="ticket.jsp">
                        
                       
  

    <h1>This is Your Coupon No.</h1>
    
    
     <%
                      
              
    Connection con;
    
     try
		
                    {   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                        con=DriverManager.getConnection("jdbc:odbc:Banking","sa","aparnaap");
                        String s="select Id,UserId,UserName from signup";
			Statement stmt=con.createStatement();			
			ResultSet rs=stmt.executeQuery(s);
                        out.println("<html>");
                            out.println("<table border='6' bordercolor='pink'>");
                            out.println("<tr>");
                            out.println("<th>");
                            out.println("Couppon Number");
                            out.println("</th>");
                             out.println("<th>");
                            out.println(" User Id");
                            out.println("</th>");

                            out.println("<th>");
                            out.println(" Name");
                            out.println("</th>");
                            out.println("</tr>");
                            
                             
                            
                            
                        while(rs.next())
                            {
                            String id=rs.getString("id");
                            String userid=rs.getString("UserId"); 
                              String name=rs.getString("UserName"); 
                                                   
                             
                              
                            out.println("<tr>");
                            out.println("<td>");
                            out.println(id);
                            out.println("</td>");
                            out.println("<td>");
                            out.println(userid);
                            out.println("</td>");
                             out.println("<td>");
                            out.println(name);
                            out.println("</td>");
                             
                                                     
                            out.println("</tr>");
                           
                                                      
                        }
                        
                            
                            out.println("</table>");
                            out.println("</html>");
                            
		    }
		catch(Exception e1)
		   
                     {
			
                        out.println(e1.toString());
		
                     }
                      %>
                      
                       </form>
				</div></div>
				 
				 
				
	</div>
	<div id="left">		
			<h3>banking</h3>
			<ul id="arc">
				  <li>Summit Banking publishes all its Latest News and related information in this section.

Please visit this section to stay up-to-date with public announcements and releases made by Summit Bank</li>
				 				  
				  </ul>
			  
			<h3>Latest News</h3>
			<ul>
				<li id="calendar">			
				<div id="calendar1">
					Click Here Latest News 
				</div>
			</li>
		  </ul>
		  <h3>Latest Offer</h3>
			<ul>
				<li><p>Educational and home loan rates has been revised as per RBI direction. <a href="#">More...</a></p></li>
			</ul>
			<br />
	</div>
<!--content ends -->
<!--footer begins -->
	</div>

<div id="footer">
<p>Copyright &copy; 2013. <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">PARTNER</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">SHOPPING</abbr></a></p> 
	<p>Designed by Ashim Sarkar</a>
		</p>
	</div>
</div>
</div>
<!-- footer ends-->
</body>
</html>                  