 <%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.io.*" %> 
<%@ page language="java" import="javax.sql.*" %>

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
		<%
        String obj=request.getParameter("action");  
        System.out.println("Value: "+obj);
        
	String s1=request.getParameter("accType");
	String s2=request.getParameter("accHolderName");
	String s3=request.getParameter("passwd");
	String s4=request.getParameter("conpasswd");
	String s5=request.getParameter("city");
	String s6=request.getParameter("phone");
	String s7=request.getParameter("income");
	String s8=request.getParameter("initialDeposit");
        Connection con;
	 int rows=0;
         try
                 {
                 
	   
                        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		        con = DriverManager.getConnection("jdbc:odbc:Banking","sa","aparnaap");
	                PreparedStatement stat=con.prepareStatement("insert into Account values(?,?,?,?,?,?,?,?)");
		        stat.setString(1,s1);
		        stat.setString(2,s2);
		        stat.setString(3,s3);
		        stat.setString(4,s4);
		        stat.setString(5,s5);
		        stat.setString(6,s6);
		        stat.setString(7,s7);
		        stat.setString(8,s8);
		        rows=stat.executeUpdate();
                   
       
                     if(rows==0)
		 
                        {
		 	System.out.println("Error inserting data in the  table");                      		
		        out.println("<html>");
		        out.println("<head><title>Group Fund Bank welcomes you</title></head>");
		        out.println("<body bgcolor=Cyan>");
		        out.println("values are not inserted in the table");		 
		        out.println("<BR>");
		        out.println("</body></html>");
                        out.close();
		 
                        }
		 
                  else
		    
                       {
		 		       		
		        out.println("<html>");
		        out.println("<head><title>Group Fund Bank welcomes you</title></head>");
		        out.println("<body bgcolor=Orange>");
		        out.println("values have been inserted sucessfully");		 
		        out.println("<BR>");
		        out.println("</body></html>");
                        out.close();
                      }
           }
       
               catch(Exception e1)
		
                    {
			
                      out.println(e1.getMessage().toString());
                    } 
     
%>

<br><br><br>

<table align="left">
<tr><td><center><font face="Monotype corsiva" size=6 color=yellow><i><u>Congratulations</u></i>  </font> <font size=5 color="blue"> <b>!!!</b></font></center><br><br></td></tr>

<tr><td><center><font face="Monotype corsiva" size=5 color="red"><i><u>Your account has been successfully created</u></i>  </font> <font size=5 color="yellow"> <b>!!!</b></font></center></td></tr>

<tr><td><center><font face="Monotype corsiva" size=5 color="brown"><i><u>your account number is</u></i> </font><font face="Monotype Corsiva" size=6 color="blue"></font> </font> <font size=5 color="red">  <u><b>!!!</b></u></font></center></td></tr>
<tr><td><br><br><br><center><a href="userpage.html">Go to Customer's Page</a></center></td></tr>
</table>



<table align="left">

<tr><td>

<center><font face=Monotype Corsiva size=6 color=yellow><u><I><b>OOPs</b></i></u></font><font face="Monotype Corsive" size=6 color="red">!!!</font></center>

</td></tr>

<tr><td><br><br>

<center><font face=Monotype Corsiva size=5 color=blue><I><b><% out.println("<u>"+s2+"</u>");%></b></i></font><font face="Monotype Corsive" size=5 color="yellow">!!!</font></center>

</td></tr>

<tr><td>

<center><font face=Monotype Corsiva size=4 color=brown><u><I><b>Sorry for the Inconveinience.</b></i></u></font><font face="Monotype Corsive" size=4 color="red">!!!</font></center>

</td></tr>

<tr><td>

<center><font face=Monotype Corsiva size=4 color=crimson><u><I><b>Error Occured while creation your Account.</b></i></u></font><font face="Monotype Corsive" size=4 color="blue">!!!</font></center>

</td></tr>

<tr><td><br><br>

<center><a href="CreateAccount.html">Back</a>

</td></tr>

</table>		

		
				</div></div>
				 
				 
				
	</div>
	<div id="left">		
					<h3>Banking</h3>
			<ul id="arc">
<li>Summit Banking  publishes all its Latest News and related information in this section.

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