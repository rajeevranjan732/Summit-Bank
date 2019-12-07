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
			<h4><a href="#">Currency Converter</a></h4><br />
		            <% 
	String currency=request.getParameter("curr1");
	String currencyconverted=request.getParameter("curr2");
	String amount=request.getParameter("tamount");
	float i=Float.parseFloat(amount);
	double result=0.0;
	if(currencyconverted.equals("dollar"))
	{ 	result=i/58;
%>


<font face="Monotype Corsiva" size=3><b>Thanks for using our online service!!!</b></font></p>

<% 	out.println("<b><u>");
	out.println("<font size=4 color='red'>");
	out.println(amount+" "+"Rupees");
	out.println("</font>");
	out.println("</u></b>");
	out.println("<b>is equal to</b>");
	out.println("<b></u>");
	out.println("<font size=4 color='red'>");
	out.println(result+" Dollars");
	out.println("</font>");
	out.println("</u></b>");
	out.println("<br>");
%>
<%
	}
	else
	{
		if(currencyconverted.equals("rupees"))
		{
			result=i*58;
%>

<font face="Monotype Corsiva" size=3><b>Thanks for using our online service!!!</b></font></p>
<% 	
	out.println("<b><u>");
	out.println("<font size=4 color=black>");
	out.println(amount+" "+"Dollars");
	out.println("</font>");
	out.println("</u></b>");
	out.println(" <b>is equal to</b> ");
	out.println("<b><u>");
	out.println("<font size=4 color=black>");
	out.println(result+" Rupees.");
	out.println("</font>");
	out.println("</u></b>");
	out.println("<br>");
		}
		else
		{	out.println("Error");
		}
	}
%>  
		
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