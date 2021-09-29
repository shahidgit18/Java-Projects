<%-- 
    Document   : list_itemmaster
    Created on : Mar 18, 2020, 1:01:35 PM
    Author     : HP
--%>

<%@page import="demo.itemcategory"%>
<%@page import="demo.itemmaster"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Item List</title>
        <link href="../Sailor/css/overwrite.css" rel="stylesheet" type="text/css"/>

        <link href="../Sailor/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/Documentation/assets/js/google-code-prettify/prettify.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" />
        <link href="../Sailor/plugins/flexslider/flexslider.css" rel="stylesheet" media="screen" />
        <link href="../Sailor/css/cubeportfolio.min.css" rel="stylesheet" />
        <link href="../Sailor/css/style.css" rel="stylesheet" />
        <link id="t-colors" href="../Sailor/skins/default.css" rel="stylesheet" />
        <link href="../Sailor/css/style.css" rel="stylesheet" />  
        
    </head>
    <body>
        <div id="wrapper">
		<!-- start header -->
	<header>
		<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
			                   <a class="navbar-brand" href="Home.html"><h1 style="font-family: cursive;color: red">R G Sales And Services</h1></a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
                                                    <li class="active" ><a href="Home.html" style="font-family: cursive;font-size: large;">Home</a></li>
							
                                                    <li><a href="admindashboard.jsp" style="font-family: cursive;font-size: large;">DashBoard</a></li>
							<li><a href="contact.html" style="font-family: cursive;font-size: large;">Contact</a></li>
						</ul>
					</div>  
				</div>
			</div>
		</header>
                 <div class="row">
                    <div class="col-lg-12 col-sm-12" align="center"><h1><b>List Report Item Master</b></h1></div>
                </div>
               
                         <%
            SessionFactory factory;
            factory = new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx=session1.beginTransaction();
            List li=session1.createQuery("from itemmaster").list();
            out.print("<table class='table' border=2>");
            out.print("<tr><th>Item Id</th><th>Category Name</th><th>Item Name</th><th>Item Stock</th><th>Mercury Content</th><th>Surge Protection</th><th>Voltage Range</th><th>thd</th><th>Certification</th><th>Color Rendering Index</th><th>lamp life</th><th>Color temp</th><th>Light Effect</th><th>Startup Light</th><th>Warm up Light</th><th>Switching Cycle</th><th>Item Height</th><th>Item width</th><th>Net Weight</th><th>Item color</th><th>Item Rate</th><th>Item Warranty Period</th><th>Item Stock</th></tr>");
            for(int i=0;i<li.size();i++){
            itemmaster im=(itemmaster)li.get(i);
            itemcategory ic=(itemcategory)session1.get(itemcategory.class,im.getCatid());
            out.print("<tr>");
            out.print("<td align='center'>"+im.getItemid()+"</td>");
            out.print("<td>"+ic.getCatnm()+"</td>");
            out.print("<td>"+im.getItemnm()+"</td>");
            out.print("<td>"+im.getItemstockproof()+"</td>");
            out.print("<td>"+im.getMercurycontent()+"</td>");
            out.print("<td>"+im.getSurgeprotection()+"</td>");
            out.print("<td>"+im.getVoltagerange()+"</td>");
            out.print("<td>"+im.getThd()+"</td>");
            out.print("<td>"+im.getCertification()+"</td>");
            out.print("<td>"+im.getColorrenderingindex()+"</td>");
            out.print("<td>"+im.getLamplife()+"</td>");
            out.print("<td>"+im.getColortemp()+"</td>");
            out.print("<td>"+im.getLighteffect()+"</td>");
            out.print("<td>"+im.getStartuptime()+"</td>");
            out.print("<td>"+im.getWarmuptime()+"</td>");
            out.print("<td>"+im.getSwitchingcycle()+"</td>");
            out.print("<td>"+im.getItemheight()+"</td>");
            out.print("<td>"+im.getItemwidth()+"</td>");
            out.print("<td>"+im.getNetweight()+"</td>");
            out.print("<td>"+im.getItemcolor()+"</td>");
            out.print("<td>"+im.getItemrate()+"</td>");
            out.print("<td>"+im.getItemwarrantyperiod()+"</td>");
            out.print("<td>"+im.getItemstock()+"</td>");

            out.print("</tr>");
            
}
out.print("</table>");

            %>
               <footer>

				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="copyright">
								<p>&copy; Sailor Theme - All Right Reserved</p>
								<div class="credits">
									Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<ul class="social-network">
								<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			
		</footer>
                       
	 </div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

	<!-- Placed at the end of the document so the pages load faster -->
        <script src="../Sailor/js/jquery.min.js"></script>
	<script src="../Sailor/js/modernizr.custom.js"></script>
	<script src="../Sailor/js/jquery.easing.1.3.js"></script>
	<script src="../Sailor/js/bootstrap.min.js"></script>
	<script src="../Sailor/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script src="../Sailor/plugins/flexslider/flexslider.config.js"></script>
	<script src="../Sailor/js/jquery.appear.js"></script>
	<script src="../Sailor/js/stellar.js"></script>
	<script src="../Sailor/js/classie.js"></script>
	<script src="../Sailor/js/uisearch.js"></script>
	<script src="../Sailor/js/jquery.cubeportfolio.min.js"></script>
	<script src="../Sailor/js/google-code-prettify/prettify.js"></script>
	<script src="../Sailor/js/animate.js"></script>
        <script src="../Sailor/js/custom.js"></script>
        <script src="../Sailor/js/animate.js" type="text/javascript"></script>
        <script src="../Sailor/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Sailor/js/modernizr.custom.js" type="text/javascript"></script>
        <script src="../Sailor/js/classie.js" type="text/javascript"></script>
        <script src="../Sailor/js/uisearch.js" type="text/javascript"></script>
    </body>
</html>
