<%-- 
    Document   : Company_master
    Created on : Feb 1, 2019, 12:44:27 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="Library.demo" import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="en">
	<head>
            
		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
                                                    <li><a href="Home.jsp">Home</a></li>
                                                    <li><a href="adminlogin.jsp">Admin</a></li>
							<li><a href="MainSearch.jsp">Search</a></li>					
							<li><a href="register.html">Contact Us</a></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<h1>Classic Electornic</h1>
			
				</div>
			</section>			
						
			<section class="main-content">				
				<div class="row">
					<div class="span5">					
						 		
					</div>
					<div class="span7">					
						<h4 class="title"><span class="text"><strong>Payment</strong> </span></h4>
						
                                                <%
                                                demo d=new demo();
                                                int maxid=d.GetNewID("Payment","pay_id");
                                                
                                                %>
                                                <%
                                                    java.util.Date d1 = new java.util.Date();
                                                    SimpleDateFormat dt=new SimpleDateFormat("yyyy/MM/dd");
                                                    String dt1=dt.format(d1);
                                                    %>
                                                <form action="paymentcode.jsp" method="post" class="form-stacked">
							<fieldset>
								<div class="control-group">
									<label class="control-label">ID</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Payment ID" readonly="true" class="input-xlarge" value="<%=maxid%>" name="txtid">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Date:</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Payment Date" class="input-xlarge" readonly="true" value="<%=dt1%>" name="txtdate">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Customer Name:</label>
									<div class="controls">
                                                                            <input type="text" value="<%=  session.getAttribute("cnm")%>" readonly="true" placeholder="Enter Order Id" class="input-xlarge" name="txtorderid">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Amount:</label>
									<div class="controls">
                                                                            <%
                                                                            
                                                                            float amt=Float.parseFloat(session.getAttribute("gtotal").toString())-Float.parseFloat( session.getAttribute("gsttot").toString());
                                                                           // out.print(amt);
                                                                            %>
                                                                            <input type="text" placeholder="Enter Amount" value="<%=amt%>"  readonly="true" class="input-xlarge" name="txtamt">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">GST:</label>
									<div class="controls">
										<input type="text" placeholder="Enter Gst" value="<%=session.getAttribute("gsttot")%>" readonly="true" class="input-xlarge" name="txtgst">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Payment Grand:</label>
									<div class="controls">
										<input type="text" placeholder="Enter Payment Grand" value="<%=session.getAttribute("gtotal")%>" readonly="true" class="input-xlarge" name="txtgrand">
									</div>
								</div>
																		                            
								
								<hr>
								<div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" value="Insert" name="btn">
                                                             </div>
							</fieldset>
						</form>
                                                
                                                     
					</div>				
				</div>
			</section>			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.html">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contac Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
							<li><a href="./register.html">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><a href="#">My Account</a></li>
							<li><a href="#">Order History</a></li>
							<li><a href="#">Wish List</a></li>
							<li><a href="#">Newsletter</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
						<br/>
						<span class="social_icons">
							<a class="facebook" href="#">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 bootstrappage template  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.html";
				})
			});
		</script>		
    </body>
</html>