<%-- 
    Document   : Payment_design
    Created on : Mar 3, 2020, 11:20:00 AM
    Author     : HP
--%>

<%@page import="demo.partymaster"%>
<%@page import="demo.payment"%>
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
        <title>Payment Design</title>
                      <link href="Sailor/Documentation/assets/css/documenter_style.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg3.css" rel="stylesheet" type="text/css"/>
        <script src="Sailor/Documentation/assets/js/script.js" type="text/javascript"></script>
        <script src="Sailor/Documentation/assets/js/jquery.scrollTo.js" type="text/javascript"></script>
        <script src="Sailor/contactform/contactform.js" type="text/javascript"></script>
        <script src="Sailor/Documentation/assets/js/jquery.easing.js" type="text/javascript"></script>
        <link href="Sailor/css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/css/flexslider.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/css/overwrite.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/css/theme.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/css/custom-fonts.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/css/cubeportfolio.min.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/js/google-code-prettify/prettify.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <a href="Sailor/plugins/flexslider/flexslider.config.js"></a>
        <link href="Sailor/plugins/flexslider/flexslider.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/blue.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/green.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/lime.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/yellow.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/sand.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/red.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/rose.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/pink.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/kissme.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/skins/default.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/plugins/revslider/rs-settings.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/plugins/revslider/extralayers.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg4.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/Documentation/assets/js/google-code-prettify/prettify.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg9.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg8.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg7.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg6.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg5.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg2.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg1.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg10.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/cubeportfolio.min.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" /> 
        <script>
            function formvalidator(){
               var payid,paydt,payamt;
            payid=document.getElementById("payid").value;
            paydt=document.getElementById("paydt").value;
            payamt=document.getElementById("payamt").value;
                if(notEmpty(payid,"Id Must be Given") && isid(payid,"Please enter only number for partyid"))
                    if(notEmpty(paydt,"Date Must be Given") && datevalidator(paydt,"Incorrect date"))
                        if(notEmpty(payamt,"Amount Must be Given") && numeric(payamt,"Amount is Incorrect"))
                {
                    alert(successfull);
                    return true;
                }
                return false;
            }
            function notEmpty(element,helpmessage){
                if(element.length==0){
                    alert(helpmessage);
                    return false;
                }
                return true;
            }
             function isid(element,helpmessage){
                var idexp=/^[0-9]+$/;
                if(element.match(idexp)){
                    return true;
                }
                alert(helpmessage);
                return false;
            }
            function numeric(element,helpmessage){
               var numExp=/^[0-9]+$/;
                if(element.match(numExp)){
                    return true;
                }
                alert(helpmessage);
                return false;
            }
             function datevalidator(element,helpmessage){
            var dateexp = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/;
            if(element.match(dateexp)){
                 alert(helpmessage);
                return false;
            }           
            return true;
        }
           function delete1(){
            var x=confirm("You Want to delete");
            return x;
        }
        </script>
    </head>
    <body>
         <div id="wrapper">
		<!-- start header -->
		<header>

			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                                                 <a class="navbar-brand" href="index.html"><img src="images/logo_campaign.png" alt=""
                                                     width="199" height="80" /></a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.html">Home</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Features <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="typography.html">Typography</a></li>
									<li><a href="components.html">Components</a></li>
									<li><a href="pricing-box.html">Pricing box</a></li>
									<li class="dropdown-submenu">
										<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">Pages</a>
										<ul class="dropdown-menu">
											<li><a href="fullwidth.html">Full width</a></li>
											<li><a href="right-sidebar.html">Right sidebar</a></li>
											<li><a href="left-sidebar.html">Left sidebar</a></li>
											<li><a href="comingsoon.html">Coming soon</a></li>
											<li><a href="search-result.html">Search result</a></li>
											<li><a href="404.html">404</a></li>
											<li><a href="register.html">Register</a></li>
											<li><a href="login.html">Login</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="portfolio.html">Portfolio</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Blog <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="blog-rightsidebar.html">Blog right sidebar</a></li>
									<li><a href="blog-leftsidebar.html">Blog left sidebar</a></li>
									<li><a href="post-rightsidebar.html">Post right sidebar</a></li>
									<li><a href="post-leftsidebar.html">Post left sidebar</a></li>
								</ul>
							</li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- end header -->
                <br>
                <div class="row">
                            <div class="col-lg-12 col-sm-12" align="center">
                                <h3><b>Payment</b></h3>
                            </div>
                </div>
        <%!
        String payid,paydt,partyid,payamt;      
         %>
        <%
         SessionFactory factory = new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx=session1.beginTransaction();
        %>
        <%
        if(request.getQueryString()!=null){
            payid=request.getParameter("payid");
            paydt=request.getParameter("paydt");
            partyid=request.getParameter("partyid");
            payamt=request.getParameter("payamt");
            }
        else{
            payid="";
            paydt="";
            partyid="";
            payamt="";
        }
        %>
        <form action="payment_code.jsp">
             <section id="contact-page">
                <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-sm-12"> <h4><b>Payment Id</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><input type="text" name="payid" class="form-control" placeholder="Enter Payment Id" style="width: 70%" id="payid" value="<%=payid%>"/></div>
                            <div class="col-lg-2 col-sm-12"> <h4><b>Date</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><input type="date" name="paydt" class="form-control" style="width: 70%"  id="paydt" value="<%=paydt%>"/></div>
                        </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Party Name</b></h4></div>
                <div class="col-lg-4 col-sm-12"><%
                List li=session1.createQuery("from partymaster").list();
                out.print("<select name='partyid' class='form-control' style='width: 70%' >");
                for(int i=0;i<li.size();i++){
                    partymaster p=(partymaster)li.get(i);
                    out.print("<option value="+p.getPartyid()+">"+p.getPartyname()+"</option>");
                }
                out.print("</select>");
                %></div>
                <div class="col-lg-2 col-sm-12"> <h4><b> Payment Amount</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="payamt" class="form-control" style="width: 70%" placeholder="Enter Amount" id="payamt" value="<%=payamt%>"/></div>
            </div>
                                      <div class="row">

                            <%if(request.getQueryString()!=null)
                                 {
                                     %>
                                <div align="center" class="col-lg-4 col-sm-12 col-xs-12" >
                                    <input type="submit" class=" btn btn-warning" name="btn" value="Insert" disabled="true"/>
                                </div>
                                   <div align="center" class="col-lg-4 col-sm-12 col-xs-12"> 
                                       <input type="submit"  class=" btn btn-warning" name="btn" value="Update" onclick="return formvalidator()"/>
                                   </div>
                                   <div align="center" class="col-lg-4 col-sm-12 col-xs-12">
                                       <input type="submit" class=" btn btn-warning" name="btn"  value="Delete" onclick="return delete1()"/>
                                   </div>
           <% }
            else{
%>
            <div align="center" class="col-lg-4 col-sm-12 col-xs-12">
                <input type="submit" name="btn" class=" btn btn-warning" value="Insert" onclick="return formvalidator()" />
            </div>
            <div align="center" class="col-lg-4 col-sm-12 col-xs-12">
            <input type="submit" name="btn" class=" btn btn-warning" value="Update" disabled="true"/>
            </div>
            <div align="center" class="col-lg-4 col-sm-12 col-xs-12">
            <input type="submit" name="btn" class=" btn btn-warning" value="Delete" disabled="true"/>
            </div>
<%
            }
          %>
                            </div>
                </div>
        
        <%
            li=session1.createQuery("from payment").list();
            out.print("<table border=1 class='table'>");
            out.print("<tr><th>Select</th><th>Payment Id</th><th>Payment Date</th><th>Party Id</th><th>Payment Amount</th></tr>");
            for(int i=0;i<li.size();i++){
                payment p=(payment)li.get(i);
                partymaster pm=(partymaster)session1.get(partymaster.class, p.getPartyid());
                out.print("<tr>");
                out.print("<td>");
                out.print("<a href='Payment_design.jsp?payid="+p.getPayid()+"&paydt="+p.getPaydt()+"&partyid="+pm.getPartyname()+"&payamt="+p.getPayamt()+"'>Select</a>");
                out.print("</td>");
                out.print("<td>"+p.getPayid()+"</td>");
                out.print("<td>"+p.getPaydt()+"</td>");
                out.print("<td>"+pm.getPartyname()+"</td>");
                out.print("<td>"+p.getPayamt()+"</td>");
                out.print("</tr>");
            }
            out.print("</table>");
        %>
             </section>
        </form>
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
        <script src="Sailor/js/jquery.min.js"></script>
	<script src="Sailor/js/modernizr.custom.js"></script>
	<script src="Sailor/js/jquery.easing.1.3.js"></script>
	<script src="Sailor/js/bootstrap.min.js"></script>
	<script src="Sailor/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script src="Sailor/plugins/flexslider/flexslider.config.js"></script>
	<script src="Sailor/js/jquery.appear.js"></script>
	<script src="Sailor/js/stellar.js"></script>
	<script src="Sailor/js/classie.js"></script>
	<script src="Sailor/js/uisearch.js"></script>
	<script src="Sailor/js/jquery.cubeportfolio.min.js"></script>
	<script src="Sailor/js/google-code-prettify/prettify.js"></script>
	<script src="Sailor/js/animate.js"></script>
        <script src="Sailor/js/custom.js"></script>

    </body>
</html>
