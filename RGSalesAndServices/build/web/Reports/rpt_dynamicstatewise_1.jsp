<%-- 
    Document   : rpt_dynamicstatewise
    Created on : Mar 12, 2020, 2:33:14 PM
    Author     : HP
--%>
<%@page import="demo.city"%>
<%@page import="demo.partymaster"%>
<%@page import="demo.district"%>
<%@page import="demo.state"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dynamic State wise</title>
         <link href="../Sailor/Documentation/assets/css/documenter_style.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg3.css" rel="stylesheet" type="text/css"/>
        <script src="../Sailor/Documentation/assets/js/script.js" type="text/javascript"></script>
        <script src="../Sailor/Documentation/assets/js/jquery.scrollTo.js" type="text/javascript"></script>
        <script src="../Sailor/contactform/contactform.js" type="text/javascript"></script>
        <script src="../Sailor/Documentation/assets/js/jquery.easing.js" type="text/javascript"></script>
        <link href="../Sailor/css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/css/flexslider.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/css/overwrite.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/css/theme.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/css/custom-fonts.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/css/cubeportfolio.min.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/js/google-code-prettify/prettify.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/plugins/flexslider/flexslider.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/blue.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/green.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/lime.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/yellow.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/sand.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/red.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/rose.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/pink.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/kissme.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/skins/default.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/plugins/revslider/rs-settings.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/plugins/revslider/extralayers.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg4.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/Documentation/assets/js/google-code-prettify/prettify.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg9.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg8.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg7.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg6.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg5.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg2.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg1.css" rel="stylesheet" type="text/css"/>
        <link href="../Sailor/bodybg/bg10.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" />
        <link href="../css/cubeportfolio.min.css" rel="stylesheet" />
        <link href="../css/style.css" rel="stylesheet" />         
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
		<!-- end header -->
                <br>
                 <div class="row">
                            <div class="col-lg-12 col-sm-12" align="center">
                                <h3><b>Dynamic Statewise Party</b></h3>
                            </div>
                </div>

        
            <section id="contact-page">
                
                <div class="container">
                    <form>
                    <div class="row">
                    <div class="col-lg-2"></div>
             <%
             SessionFactory factory;
             factory=new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();     
             %>
             <div class="col-lg-2">State Name</div>
             <div class="col-lg-3"><select name="t1" class="form-control"><%
                 List li=session1.createQuery("from state").list();
                 out.print("<option value=0>Select</option>");
                 for(int i=0;i<li.size();i++){
                     state s=(state)li.get(i);
                     out.print("<option value="+s.getStateid()+">"+s.getStatenm()+"</option>");
                 }
            %>
                 </select></div>
             <div class="col-lg-1">
             <input type="submit" name="btn" value="Check" class="btn btn-warning">
             </div>
                </div>
                    </form>
             <div class="row">
                 <div class="col-lg-12">
               <%
             if(request.getParameter("btn")!=null){
                int stateid;
                stateid=Integer.parseInt(request.getParameter("t1"));
                if(stateid==0)
                    out.print("Please select state");
                else
                {
//                out.print(stateid);
                li=session1.createQuery("from partymaster p where p.stateid="+stateid).list();
                out.print("<table border=1 align='center' class='table'>");
                out.print("<tr><b><th>Party Id</th><th>Party Type</th><th>Party Name</th><th>Party Address</th><th>State Name</th><th>District</th><th>City</th><th>Gst Number</th><th>Telephone Number1</th><th>Telephone Number2</th><th>Email</th><th>Contact Person</th><th>Contact Number</th></b></tr>");
                for(int i=0;i<li.size();i++){
                    partymaster p=(partymaster)li.get(i);
                    state s=(state)session1.get(state.class, p.getStateid());
                    district d=(district)session1.get(district.class, p.getDistid());
                    city c=(city)session1.get(city.class, p.getCityid());
                    out.print("<tr>");
                    out.print("<td>"+p.getPartyid()+"</td>");
                    out.print("<td>"+p.getPartytype()+"</td>");
                    out.print("<td>"+p.getPartyname()+"</td>");
                    out.print("<td>"+p.getPartyaddress()+"</td>");
                    out.print("<td>"+s.getStatenm()+"</td>");
                    out.print("<td>"+d.getDisnm()+"</td>");
                    out.print("<td>"+c.getCitynm()+"</td>");
                    out.print("<td>"+p.getPartygstno()+"</td>");
                    out.print("<td>"+p.getPartytelno1()+"</td>");
                    out.print("<td>"+p.getPartytelno2()+"</td>");
                    out.print("<td>"+p.getPartyemail()+"</td>");
                    out.print("<td>"+p.getPartycontactp()+"</td>");
                    out.print("<td>"+p.getPartycontactno()+"</td>");
                    out.print("</tr>");
                }
                out.print("</table>");
                }
             }
             %>
             </div>
                </div>
                </div>
            </section>
        
                         <footer>
                <div id="sub-footer">
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
    </body>
</html>