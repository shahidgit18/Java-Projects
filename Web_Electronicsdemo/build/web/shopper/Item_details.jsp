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
                                                
                                                
                                               <%!
         
       demo d1=new demo();
        
        %>
        <form name="frm" action="AddToCart.jsp">
          <%
                  String item_id=request.getQueryString();
                  session.setAttribute("itemid", item_id);
                 
              try
            {
                  demo d1=new demo();
        	ResultSet rs=null;
   
	rs=d1.ShowGrid("select * from Item_master where item_id="+item_id);

                 
              
            out.println("<table border=1>");
            while(rs.next())
                   {
                            
                         String itemnm=rs.getString(2);                   
                         int item_rate=rs.getInt(4);
                         String srate=String.valueOf(item_rate);
                         String item_description=rs.getString(5);
                         int gst=rs.getInt(6);
                         int item_stk=rs.getInt(7);

                         String item_photo=rs.getString(8);           

                         session.setAttribute("item",itemnm);
                         session.setAttribute("rate",srate);
                        session.setAttribute("gst",String.valueOf(gst));
                           
                         out.println("<tr height=40>"); 
                         out.println("<td  align=center>");
                         out.println("<img src=Upload/"+item_photo+" height=400 width=400></img>");
                         out.println("</td>");
                       
                         out.println("<td align=center>");
                         out.println("<table border=1 class=table align=center width=300>");
                                     

                         out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Item name:");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+itemnm+"</font>");
                         out.println("</td>");
                         out.println("</tr>");
                         
                         
                         out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Description");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+item_description+"</font>");
                         out.println("</td>");
                         out.println("</tr>");
                        
                             out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>GST");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+gst+"</font>");
                         out.println("</td>");
                         out.println("</tr>");
                         
                         out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Rate");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+item_rate+"</font>");
                         out.println("</td>");
                         out.println("</tr>"); 
                         
                         out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Stock Left");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+item_stk+"</font>");
                         out.println("</td>");
                         out.println("</tr>");
                         if(item_stk>0)
                         {        
                         out.println("<tr height=50>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Select Quantity");
                         out.println("</td>");
                         out.println("<td align=center>");
                         
                         out.println("<select name=cmb_nm>");
	     for(int i=1;i<=item_stk;i++)
		{
                         out.println("<option>"+i+"</option>");
		}
                         out.println("</select></br>");
                         out.println("<input type='submit' value='Add to Cart' name='btn_nm'/>");
    
                         out.println("</td>");
                         
                         out.println("</tr>");
                         }
                         else
                         {out.println("<tr height=50>"); 
                         out.println("<td colspan=2 align=center><font color=red> Stock not available</font></td></tr>");
                         }
                                                
                        out.println("</table>");
                        out.println("<a href=Show_Cart.jsp><U>Show cart</U></a><br>");
                         
     
                        out.println("</tr>");
                          
                          
                   }
             
                       // out.println("</table>");
                      
                
            }
         
                        
           catch(Exception e)
           {
             out.println(e);  
           }
          
         %>

                                                            
                                                            
                                                            
                                                           
                                                
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
