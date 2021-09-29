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
                                         <div class="control-group">
									<label class="control-label">Select Company:</label>
									<div class="controls">
                                                                            <form>
                                                                        <select name="txtcid" class="input-xlarge">
                                                                                <option>Select</option>
                                                                                <%
                                                                                    ResultSet rs=null;
                                                                                    demo d =new demo();
                                                                                    int id;String nm;
                                                               rs=d.ShowGrid("select * from company_master");
                                                               while(rs.next())
                                                               {
                                                                   id=rs.getInt(1);
                                                                   nm=rs.getString(2);
                                                               %>
                                                               <option value="<%=id%>"><%=nm%></option>>
                                                               <%           }


                                                               %></select>
                                                               <input type="submit" value="Show" name="btn"/> 
									</form>
                                                                        </div>
       
                                                
                                                 <%
                                                     if(request.getParameter("btn")!=null)
                                                     {
                                                         String compid=request.getParameter("txtcid");
                                                         
demo d1=new demo();
try
    {
     rs=d1.ShowGrid("Select * from item_master where comp_id="+compid);
    int count=0,i,j;
    while(rs.next())
    {
        count++;
    }

         rs=d1.ShowGrid("Select * from item_master where comp_id="+compid);

      out.println("<html><body><font color=black Size=6 align=center>Item information</font><table class=table border=2 align=center><br>");
     out.println("<a href=Show_Cart.jsp>Show cart</a><br>");

       
       out.println("<tr height=40>");
       for(i=0;i<count;i++)
            {

       for(j=0;j<4;j++)
           {


            if(rs.next())
           {
                 out.println("<td align=center>");
                 int id1=rs.getInt(1);
                  String item_nm=rs.getString(2);
                    int rate=rs.getInt(4);
                   String item_photo=rs.getString(8);


               out.println("<a href=Item_details.jsp?"+id1+"><img   src=Upload/"+item_photo+" height=200 width=200></img></a><br>");
                    out.println("<font color=black size=2><B>Name: "+item_nm+"</B></font><br>");
                out.println("<font color=black size=2><b>Rate:"+rate+"/-</B></font><br>");
                out.println("</td>");
                             }
                }
             out.println("</tr>");
                 }
                out.println("</table></body></html>");
                                     }
   catch(Exception e)
   {
     out.println(e);  
   }
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
