<%-- 
    Document   : purchase_detaildesign
    Created on : Mar 2, 2020, 8:08:51 PM
    Author     : HP
--%>

<%@page import="demo.partymaster"%>
<%@page import="demo.purchasemaster"%>
<%@page import="demo.itemmaster"%>
<%@page import="demo.purchasedetails"%>
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
        <title>Purchase Details</title>
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
                var purdetailid,itemrate,itemqty,itemamt,itemtax;
                purdetailid=document.getElementById("purdetailid").value;
                itemrate=document.getElementById("itemrate").value;
                itemqty=document.getElementById("itemqty").value;
                itemamt=document.getElementById("itemamt").value;
                itemtax=document.getElementById("itemtax").value;
                if(notEmpty(purdetailid,"Purchase detail Id Must be given") && isid(purdetailid,"Please enter only number for Purchase Detail Id"))
                    if(notEmpty(itemrate,"Item Rate Must be given") && numeric(itemrate,"Please enter only Number for Item rate"))
                        if(notEmpty(itemqty,"Item Quntity Must Be Given") && numeric(itemqty,"Please enter only Number for Item rate"))
                            if(notEmpty(itemamt,"Item Amount Must be Given") && numeric(itemamt,"Please enter only Number for Item Amount"))
                               if(notEmpty(itemtax,"Item tax Must be given") && numeric(itemtax,"Please enter only Number for Item Tax"))
                   {
                     alert(successfull);
                     return true;  
                    }
                   return false;            
            }
            function notEmpty(element,helpmessage){
                if(element.length==0){
                    alert(helpmessage)
                    return false;
                }
                return true;
            }
            function numeric(element,helpmessage){
               var numExp=/^[0-9.]+$/;
                if(element.match(numExp)){
                    return true;
                }
                alert(helpmessage);
                return false;
            }
             function isid(element,helpmessage){
                var idexp=/^[0-9]+$/;
                if(element.match(idexp)){
                    return true;
                }
                alert(helpmessage);
                return false;
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
                                <h3><b>Party Master</b></h3>
                            </div>
                </div>
                      <form action="purdetail.jsp">
            
            <%!
            String purdetailid,purid,itemid,itemrate,itemqty,itemamt,itemtax;
            %>
            <%
            if(request.getQueryString()!=null){
                purdetailid=request.getParameter("purdetailid");
                purid=request.getParameter("purid");
                itemid=request.getParameter("itemid");
                itemrate=request.getParameter("itemrate");
                itemqty=request.getParameter("itemqty");
                itemamt=request.getParameter("itemamt");
                itemtax=request.getParameter("itemtax");
            }
            else{
                purdetailid="";
                purid="";
                itemid="";
                itemrate="";
                itemqty="";
                itemamt="";
                itemtax="";
            }
            %>
            <section id="contact-page">
                <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-sm-12"> <h4><b>Purchase Detail Id</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><input type="text" name="purdetailid" class="form-control" placeholder="Enter Purchase Detail Id" id="purdetailid" style="width: 70%" value="<%=purdetailid%>"/></div>
            <div class="col-lg-2 col-sm-12"> <h4><b>Purchase Id</b></h4></div>
            <div class="col-lg-4 col-sm-12"><%
            SessionFactory factory;
            factory=new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx=session1.beginTransaction();
           
            Integer purid1;
            String partynm;
           
            List<Object[]> list1=session1.createQuery("select p.purid,pm.partyname from purchasemaster p, partymaster pm where pm.partyid=p.partyid").list();
            out.print("<select name='purid' class='form-control' style='width: 70%'>");
           for (Object[] aRow : list1) {
                 purid1=(Integer)aRow[0];
                 partynm=aRow[1].toString();
                  out.print("<option value="+purid1+">"+partynm+"</option>");
            }
            out.print("</select>");
            
               
            %></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2 col-sm-12"> <h4><b>Name</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><%
          List  li=session1.createQuery("from itemmaster").list();
            out.print("<select name='itemid' class='form-control' style='width: 70%'>");
                 for(int i=0;i<li.size();i++){
                    itemmaster im =(itemmaster)li.get(i);
                     out.print("<option value="+im.getItemid()+">"+im.getItemnm()+"</option>");
                     }
                 out.print("</select>");
                 %></div>
                 <div class="col-lg-2 col-sm-12"> <h4><b> Rate</b></h4></div>
                 <div class="col-lg-4 col-sm-12"><input type="text" name="itemrate" id="itemrate" class="form-control" style="width: 70%" placeholder="Enter Rate" value="<%=itemrate%>"/></b></h4></div>
                        </div>    
             <div class="row">
                 <div class="col-lg-2 col-sm-12"> <h4><b>Quntity</b></h4></div>
                 <div class="col-lg-4 col-sm-12"><input type="text" name="itemqty" id="itemqty" class="form-control" style="width: 70%" placeholder="Enter Quntity" value="<%=itemqty%>"/></div>
                 <div class="col-lg-2 col-sm-12"> <h4><b>Amount</b></h4></div>
                 <div class="col-lg-4 col-sm-12"><input type="text" name="itemamt" id="itemamt" class="form-control" style="width: 70%" placeholder="Enter Amount" value="<%=itemamt%>"/></div>
             </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Tax</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="itemtax" id="itemtax" class="form-control" style="width: 70%" placeholder="Enter Tax" value="<%=itemtax%>"/></div>
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
                <input type="submit" name="btn" class=" btn btn-warning" value="Insert" onclick="return formvalidator()"/>
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
                <%
            li=session1.createQuery("from purchasedetails").list();
                        out.print("<table border=2 class='table'" );
            out.print("<tr><th>Select</th><th>Purchase Detail Id</th><th>Purchase Id</th><th>Item Name</th><th>Rate</th><th>Quntity</th><th>Amount</th><th>Tax</th></tr>");
            for(int i=0;i<li.size();i++){
                purchasedetails pd=(purchasedetails)li.get(i);
                purchasemaster pm=(purchasemaster)session1.get(purchasemaster.class, pd.getPurid());
                itemmaster im=(itemmaster)session1.get(itemmaster.class, pd.getItemid());
                out.print("<tr>");
                out.print("<td>");
                out.print("<a href='purchase_detaildesign.jsp?purdetailid="+pd.getPurdetailid()+"&purid="+pm.getPurid()+"&itemid="+im.getItemnm()+"&itemrate="+pd.getItemrate()+"&itemqty="+pd.getItemqty()+"&itemamt="+pd.getItemamt()+"&itemamt="+pd.getItemamt()+"&itemtax="+pd.getItemtax()+"'>Select</a>");
                out.print("</td>");
                out.print("<td>"+pd.getPurdetailid()+"</td>");
                out.print("<td>"+pm.getPurid()+"</td>");
                out.print("<td>"+im.getItemnm()+"</td>");
                out.print("<td>"+pd.getItemrate()+"</td>");
                out.print("<td>"+pd.getItemqty()+"</td>");
                out.print("<td>"+pd.getItemamt()+"</td>");
                out.print("<td>"+pd.getItemtax()+"</td>");
                out.print("</tr>");
            }
            out.print("</table>");
            %>
            </div>
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
