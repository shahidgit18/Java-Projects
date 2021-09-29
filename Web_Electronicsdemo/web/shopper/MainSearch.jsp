<%-- 
    Document   : Company_master
    Created on : Feb 1, 2019, 12:44:27 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="Library.demo"%>
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
					<div class="span1">					
									
					</div>
					<div class="span10">					
						<h4 class="title"><span class="text"><strong>Search</strong> Items</span></h4>
                                                
                                                <h1><a href="Search_Items.jsp">Search Items</a> </h1>
                                                            
                                                <h1><a href="Search_ItemsByCompany.jsp">Search Items By Brand</a> </h1>
                                                           
                                                
                                        </div>
                                </div>
                                 <div class="row">
                                     <div class="span3"></div>					
				<div class="span5">
                                    
                                </div>
                                 </div>
                                
					</div>				
				
			</section>			
			
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
