<%-- 
    Document   : adminmenu
    Created on : Feb 25, 2019, 2:53:29 PM
    Author     : ADMIN
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
        <h2>Admin Dashboard</h2>
        <div class="row">
           
					<div class="span3">
        <h3>Manage</h3>
        <a href="Company_master.jsp"> <font size="4"><b>Company Master</b></font> </a> <br/>
        <a href="Item_Master.jsp"> <font size="4"><b>Item Master</b></font> </a> <br/>
                                      
                                       
        </div>
                                       
					<div class="span3">
                                            
          <h3>List Report</h3>
          <a href="Reports/rpt_comp_list.jsp"> <font size="4"><b>Company Report</b></font>  </a> <br/>
          <a href="Reports/rpt_cust_list.jsp"> <font size="4"><b>Customer Report</b></font>  </a> <br/>
          <a href="Reports/rpt_item_list.jsp"> <font size="4"><b>Item Report</b></font>  </a> <br/>
          <a href="Reports/rpt_orderdetail_list.jsp"> <font size="4"><b>Order Detail Report</b></font>  </a> <br/>
          <a href="Reports/rpt_ordermaster_list.jsp"> <font size="4"><b>Order Master Report</b></font>  </a> <br/>
          <a href="Reports/rpt_payment_list.jsp"> <font size="4"><b>Payment Report</b></font>  </a> <br/>
                                        </div>                 
           
					<div class="span3">
                                            
          
          <h3> Dynamic Report</h3>
          <a href="Reports/dyn_comp_list.jsp"> <font size="4"><b>Company Wise Item Report</b></font>  </a> <br/>
          <a href="Reports/dyn_item_list.jsp"> <font size="4"><b>Item wise order detail Report</b></font>  </a> <br/>
          <a href="Reports/dyn_order_list.jsp"> <font size="4"><b>Customer Wise Order Report</b></font>  </a> <br/>
          <a href="Reports/dyn_payment_list.jsp"> <font size="4"><b>Customer Wise Payment Report</b></font>  </a> <br/>
                                        </div>                   
        
        
            					<div class="span3">
            <h3> Datewise Report</h3>
          
         <a href="Reports/datewise_ordermaster.jsp"> <font size="4"><b>Order Report</b></font>  </a> <br/>
         <a href="Reports/datewise_payment.jsp"> <font size="4"><b>Payment Report</b></font>  </a> <br/>
                                                </div>
                </div>
        
                </div>
        
        
          </div>
        </div>
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
