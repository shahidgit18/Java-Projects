<%-- 
    Document   : Company_master
    Created on : Feb 1, 2019, 12:44:27 PM
    Author     : a
--%>

<%@page import="java.util.ArrayList"%>
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
					<div class="span3">					
									
					</div>
					<div class="span7">					
						<h4 class="title"><span class="text"><strong>Cart</strong> </span></h4>
                                                
                                                
                                                
                                                <form action="customerlogin.jsp">
                                              <%!
        demo d1=new demo();
        int itemid,itemrate,itemqty,itemamt;
        String itemnm;    
        %>
        <%
         ArrayList itemlist=(ArrayList)session.getAttribute("itemlist");
        if (itemlist== null) 
        {
        itemlist= new ArrayList();
        session.setAttribute("itemlist", itemlist);
         }
     
         
        ArrayList qtylist=(ArrayList)session.getAttribute("qtylist");
        if (qtylist== null) 
        {
        qtylist= new ArrayList();
        session.setAttribute("qtylist", qtylist);
         }
        
        ArrayList ratelist=(ArrayList)session.getAttribute("ratelist");
       if (ratelist== null) 
       {
        ratelist= new ArrayList();
        session.setAttribute("ratelist", ratelist);
       }
         ArrayList gstlist=(ArrayList)session.getAttribute("gstlist");
       if (gstlist== null) 
       {
        gstlist= new ArrayList();
        session.setAttribute("gstlist", gstlist);
       }
    //   out.print(gstlist.get(0));
        out.println("<table border=3 class=table >");
        out.println("<th>ID</th>");
        out.println("<th>Name</th>");
        out.println("<th>Rate</th>");
        out.println("<th>Qty</th>");
        out.println("<th>Amount</th>");
                out.println("<th>GST</th>");
                                out.println("<th>GST Amt</th>");
                out.println("<th>Total Amt</th>");



        out.println("<th>Cancel</th>");
        int amt=0,grand=0;float finaltot=0; float gsttotal=0;
       for(int i=0;i<itemlist.size();i++)
       {
        out.println("<tr>");
        out.println("<td>"+(i+1)+"</td>");
             out.println("<td>"+itemlist.get(i)+"</td>");
            out.println("<td>"+ratelist.get(i)+"</td>");
             out.println("<td>"+qtylist.get(i)+"</td>");
           amt=Integer.parseInt(qtylist.get(i).toString())*Integer.parseInt(ratelist.get(i).toString());
              out.println("<td>"+amt+"</td>");
             // grand=grand+amt;
                           out.println("<td>"+gstlist.get(i)+"</td>");

             float gst=Float.parseFloat(gstlist.get(i).toString());
              
             float gstamt=(amt*gst)/100;
                         out.println("<td>"+gstamt+"</td>");
            float total=amt+gstamt;
              gsttotal=gsttotal+gstamt;
                                     out.println("<td>"+total+"</td>");
           finaltot=finaltot+total;
             out.println("<td><a href='CancelCartItem.jsp?"+i+"'>Cancel</a></td>");
        out.println("</tr>");
      
       }
                out.println("<tr><td></td><td></td><td></td><td> </td><td></td><td>Total </td><td>"+gsttotal+"/-</td><td>"+finaltot+"/-</td><td></td></tr>");
                session.setAttribute("gtotal",finaltot);
                                session.setAttribute("gsttot",gsttotal);

                out.println("<form action=custlogin_design.jsp>");
                
                out.println("<input type=submit value='Pay Now'><br>");
                
             
                out.println("<a href='Search_Items.jsp?"+session.getAttribute("item_id") +"'>Item Search</a></br></td>");
                
                                out.println("<a href='Search_ItemsByCompany.jsp?"+session.getAttribute("item_id") +"'>Item Search By Company</a></td>");

                out.println("</form>");
        %>
                                                            
                        </form>                                    
                                                            
                                                           
                                                
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
