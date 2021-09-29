<%-- 
    Document   : rpt_dynamicpartywise_payment
    Created on : Mar 17, 2020, 5:34:14 PM
    Author     : HP
--%>

<%@page import="demo.payment"%>
<%@page import="demo.partymaster"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dynamic Partywise Payment</title>
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
        <%
             SessionFactory factory;
             factory=new Configuration().configure().buildSessionFactory();
             Session session1=factory.openSession();     
        %>
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
                <br>
                 <div class="row">
                            <div class="col-lg-12 col-sm-12" align="center">
                                <h3><b>Dynamic Partywise Payment</b></h3>
                            </div>
                </div>
        <form>
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-2" align="right">Party Name</div>
                <div class="col-lg-3"><select name="t1" class="form-control"><%
            List li=session1.createQuery("from partymaster").list();
            out.print("<option value=0>Select</option>");
            for(int i=0;i<li.size();i++){
                partymaster pm=(partymaster)li.get(i);
               out.print("<option value="+pm.getPartyid()+">"+pm.getPartyname()+"</option>"); 
            }
            %>
                    </select></div>
                    <div class="col-lg-2"> <input type="submit" name="btn" value="check" class="btn btn-info"/></div>
            </div>
        </form>
                    <div class="row">
                        <div class="col-lg-2"></div>
                            <div class="col-lg-8" align="center">
            <%
                if(request.getParameter("btn")!=null){
                    int partyid;
                    partyid=Integer.parseInt(request.getParameter("t1"));
//                    out.print(partyid);
                    if(partyid==0)
                        out.print("select partyname");
                   else{
                        li=session1.createQuery("from payment p where p.partyid="+partyid).list();
                        out.print("<table border=2 align='center' class='table'>");
                        out.print("<tr><th>Payment Id</th><th>Payment Date</th><th>Party Name</th><th>Payment Amount</th></tr>");
                      for(int i=0;i<li.size();i++){
                        payment p=(payment)li.get(i);
                        partymaster pm=(partymaster)session1.get(partymaster.class, p.getPartyid());
                        out.print("<tr>");
                        out.print("<td>"+p.getPayid()+"</td>");
                        out.print("<td>"+p.getPaydt()+"</td>");
                        out.print("<td>"+pm.getPartyname()+"</td>");
                        out.print("<td>"+p.getPayamt()+"</td>");
                        out.print("</tr>");
                        }
            out.print("</table>");
                }
                }
            %>
                            </div>
                    </div>
            <div class="row">
            <div class="col-lg-12" style="height: 150px">
            </div>
        </div>
            
                <div id="sub-footer">
				<div class="container">
                                    <div class="row" style="height: 100px">
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
