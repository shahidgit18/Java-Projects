<%-- 
    Document   : Part_masterdesign
    Created on : Mar 2, 2020, 11:26:52 AM
    Author     : HP
--%>

<%@page import="demo.city"%>
<%@page import="demo.district"%>
<%@page import="demo.state"%>
<%@page import="demo.partymaster"%>
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
        <title>Party Master</title>
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
               // alert('hello');
                var partyid,stateid,distid,cityid,partytype,partyname,partyaddress,partygstno,partytelno1,partytelno2,partyemail,partycontactp,partycontactno;
                partyid=document.getElementById("partyid").value;
                partytype=document.getElementById("partytype").value;
               partyname=document.getElementById("partyname").value;
                partyaddress=document.getElementById("partyaddress").value;                     
                partygstno=document.getElementById("partygstno").value;
                partytelno1=document.getElementById("partytelno1").value;
                partytelno2=document.getElementById("partytelno2").value;
                partyemail=document.getElementById("partyemail").value;
                partycontactp=document.getElementById("partycontactp").value;
                partycontactno=document.getElementById("partycontactno").value;
                if(notEmpty(partyid,"Id must be given") && isid(partyid,"Please enter only number for partyid"))
                 if(notEmpty(partytype,"Party Type Must be given") && isAlphabet(partytype,"Please Enter only number and characters for partytype"))
                  if(notEmpty(partyname,"Party Name Must be given") && isAlphabet(partyname,"Please Enter only Characters for partytype"))
                        if(notEmpty(partyaddress,"Party Address Must be given") && isAlphanumeric(partyaddress,"Enter only Number and Characters for Address"))
                            if(notEmpty(partygstno,"Party GST Number Must be given") && gst(partygstno,"Enter Valid Gst"))
                                if(notEmpty(partytelno1,"Party Telephone Number1 Must be given") && telephone(partytelno1,"Enter correct Number for telephone1"))
                                     if(notEmpty(partyemail,"Email Must be given") && emailValidator(partyemail,"Incorrect Email"))
                                            if(notEmpty(partycontactp,"Contact Person Must Be Given") && isAlphabet(partycontactp,"Enter only Character for Contact Person"))
                                                if(notEmpty(partycontactno,"Contact Number Must be Given") && validphonenumber(partycontactno,"Enter valid mobile Number"))
                                        
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
           /* function isname(element,helpmessage) {
                var nameexp=/^[a-zA-Z- -,---.S]+$/;
                if(element.match(nameexp)){
                    return true;
                }
                alert(helpmessage);
                    return false;
                
       }*/
       
             function isAlphanumeric(element,helpmessage){
                var alphanumexp=/^[a-zA-Z0-9 -,-''-,-/-]+$/;
                    if(element.match(alphanumexp)){
                        return true;
                    }
                    alert(helpmessage);
                    return false;
            }
           /* function numeric(element,helpmessage){
               var numExp=/^[0-9]+$/;
                if(element.match(numExp)){
                    return true;
                }
                alert(helpmessage);
                return false;
            }*/
            function isAlphabet(element,helpmessage){
                var alphaExp=/^[a-zA-Z- -]+$/;
                if(element.match(alphaExp)){
                    return true;
                }
                alert(helpmessage);
                return false;
            }
             function float(element,helpmessage){
            var numericExpression= /^[0-9.]+$/;
            if(element.match(numericExpression))
            {
                return true;
            }
            alert(helpmessage);
            return false;
        }
        function telephone(element,helmessage){
            var teleExp= /^[0-9]\d{2,4}-\d{6,8}$/;
            if(element.match(teleExp)){
                return true;
            }
            alert(helmessage);
            return false;
        }
        function  validphonenumber(element,helpmessage){
            var mobileExp= /^[789]\d{9}$/
            if(element.match(mobileExp))
            {
                return true;
            }
            alert(helpmessage);
            return false;
        }
        function gst(element,helmessage){
            var gstExp=/^([0]{1}[1-9]{1}|[1-2]{1}[0-9]{1}|[3]{1}[0-7]{1})([a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}[1-9a-zA-Z]{1}[zZ]{1}[0-9a-zA-Z]{1})+$/;
            if(element.match(gstExp)){
                return true;
            }
            alert(helmessage);
            return false;
        }
        function emailValidator(element,helpmessage){
            var emailExp= /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
            if(element.match(emailExp))
            {
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

        <%! String  partyid,stateid,distid,cityid,partytype,partyname,partyaddress,partygstno,partytelno1,partytelno2,partyemail,partycontactp,partycontactno;
        %>
        <%
            if(request.getQueryString()!=null)
            {
            partyid=request.getParameter("partyid");
            partytype=request.getParameter("partytype");
            partyname=request.getParameter("partynm");
            partyaddress=request.getParameter("partyaddress");
            stateid=request.getParameter("stateid");
            distid=request.getParameter("disid");
            cityid=request.getParameter("cityid");
            partygstno=request.getParameter("partygstno");
            partytelno1=request.getParameter("partytelno1");
            partytelno2=request.getParameter("partytelno2");
            partyemail=request.getParameter("partyemail");
            partycontactp=request.getParameter("partycontactp");
            partycontactno=request.getParameter("partycontactno");
            }
            else{
                partyid="";
                partytype="";
                partyname="";
                partyaddress="";
                stateid="";
                distid="";
                cityid="";
                partygstno="";
                partytelno1="";
                partytelno2="";
                partytelno2="";
                partyemail="";
                partycontactp="";
                partycontactno="";
            }
        %>
        <%
               SessionFactory factory;
               factory= new Configuration().configure().buildSessionFactory();
               Session session1=factory.openSession();
               Transaction tx=session1.beginTransaction();
            %>


        <form action="Party_master.jsp">
            <section id="contact-page">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-sm-12"> <h4><b>Party Id</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><input type="text" name="partyid" id="partyid" placeholder="Enter Party Id" class="form-control" style="width: 70%" value="<%=partyid%>"/></div>
                            <div class="col-lg-2 col-sm-12"> <h4><b>Type</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><input type="text" name="partytype" id="partytype" class="form-control" placeholder="Enter Party Type" style="width: 70%" value="<%=partytype%>"/></div>
                         
                        </div>                       
                        
            <div class="row">
                            <div class="col-lg-2 col-sm-12"> <h4><b>Name</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><input type="text" class="form-control" style="width: 70%" id="partyname" name="partynm" placeholder="Enter Party Name" value="<%=partyname%>"/></div>
                            <div class="col-lg-2 col-sm-12"> <h4><b>Address</b></h4></div>
<!--                            <input type="text" class="form-control" style="width: 70%" name="partyaddr" />-->
<div class="col-lg-4 col-sm-12"><textarea name="partyaddr" class="form-control" value="<%=partyaddress%>"  id="partyaddress" placeholder="Enter Address" style="width: 70%"> <%= partyaddress%></textarea></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>State ID</b></h4></div>
                           <div class="col-lg-4 col-sm-12"><%
            List li=session1.createQuery("from state").list();
            out.print("<select name='stateid' class='form-control' style='width:70%'>");
                 for(int i=0;i<li.size();i++){
                     state s=(state)li.get(i);
                     out.print("<option value="+s.getStateid()+">"+s.getStatenm()+"</option>");
                     }
                 out.print("</select>");
                 %></div>
                 <div class="col-lg-2 col-sm-12"> <h4><b>District Name</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><%
            li=session1.createQuery("from district").list();
            out.print("<select name='disid' class='form-control' style='width:70%'>");
                 for(int i=0;i<li.size();i++){
                     district d=(district)li.get(i);
                     out.print("<option value="+d.getDistid()+">"+d.getDisnm()+"</option>");
                     }
                 out.print("</select>");
                 %></div>
              </div>
<!--            <input type="text" name="cityid" value="<%=cityid%>"/><br>-->
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>City Name</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><%
            li=session1.createQuery("from city").list();
            out.print("<select name='cityid' class='form-control' style='width:70%'>");
                 for(int i=0;i<li.size();i++){
                     city c=(city)li.get(i);
                     out.print("<option value="+c.getCityid()+">"+c.getCitynm()+"</option>");
                     }
                 out.print("</select>");
                 %></div>            
            <div class="col-lg-2 col-sm-12"> <h4><b>GST Number</b></h4></div>
            <div class="col-lg-4 col-sm-12"><input type="text" name="partygstno" class="form-control" id="partygstno" style="width: 70%" placeholder="Enter Gst Number"  value="<%=partygstno%>"/></div>
             </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Tele-Number1</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="partytelno1" class="form-control" id="partytelno1" style="width: 70%" placeholder="Enter Telephone Number1"  value="<%=partytelno1%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Tele-Number2</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="partytelno2" class="form-control" id="partytelno2" placeholder="Enter Telephone Number2" style="width: 70%"  value="<%=partytelno2%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Email</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="partyemail" class="form-control" style="width: 70%" id="partyemail" placeholder="Enter Email"  value="<%=partyemail%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Contact Person</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="partycontactp" class="form-control" style="width: 70%" id="partycontactp" placeholder="Enter Contact Person Name"  value="<%=partycontactp%>"/></div>
           </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Contact Number</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="partycontactno" class="form-control" style="width: 70%" id="partycontactno" placeholder="Enter Contact Number" value="<%=partycontactno%>"/></div>
            </div>
            <div class="row">

                            <%if(request.getQueryString()!=null)
                                 {
                                     %>
                                <div align="center" class="col-lg-4 col-sm-12 col-xs-12" >
                                    <input type="submit" class=" btn btn-warning" name="btn" value="Insert" disabled="true"/>
                                </div>
                                   <div align="center" class="col-lg-4 col-sm-12 col-xs-12"> 
                                       <input type="submit"  class=" btn btn-warning" name="btn" value="Update"/>
                                   </div>
                                   <div align="center" class="col-lg-4 col-sm-12 col-xs-12">
                                       <input type="submit" class=" btn btn-warning" name="btn"  value="Delete" onclick="return formvalidator()"/>
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
            </div><%
               
               li=session1.createQuery("from partymaster").list();
               out.print("<table border=1  style='width=70%'>");
               out.print("<tr><th>Select</th><th>Party Id</th><th>Party Type</th><th>Party Name</th><th>Party Address</th><th>State Id</th><th>District Id</th><th>City Id</th><th>Party GstNo</th><th>Party Telephone Number1</th><th>Party Telephone Number2</th><th>Party Email</th><th>Party Contact Person</th><th>Party Contact Number</th></tr>");
               for(int i=0;i<li.size();i++){
                   partymaster p=(partymaster)li.get(i);
                  out.print("<tr>");
                  out.print("<td>");
                  out.print("<a href='Party_masterdesign.jsp?partyid="+p.getPartyid()+"&partytype="+p.getPartytype()+"&partynm="+p.getPartyname()+"&partyaddress="+p.getPartyaddress()+"&stateid="+p.getStateid()+"&disid="+p.getDistid()+"&cityid="+p.getCityid()+"&partygstno="+p.getPartygstno()+"&partytelno1="+p.getPartytelno1()+"&partytelno2="+p.getPartytelno2()+"&partyemail="+p.getPartyemail()+"&partycontactp="+p.getPartycontactp()+"&partycontactno="+p.getPartycontactno()+"'>Select</a>");
                  out.print("</td>");
                  out.print("<td>"+p.getPartyid()+"</td>");
                  out.print("<td>"+p.getPartytype()+"</td>");
                  out.print("<td>"+p.getPartyname()+"</td>");
                  out.print("<td>"+p.getPartyaddress()+"</td>");
                  out.print("<td>"+p.getStateid()+"</td>");
                  out.print("<td>"+p.getDistid()+"</td>");
                  out.print("<td>"+p.getCityid()+"</td>");
                  out.print("<td>"+p.getPartygstno()+"</td>");
                  out.print("<td>"+p.getPartytelno1()+"</td>");
                  out.print("<td>"+p.getPartytelno2()+"</td>");
                  out.print("<td>"+p.getPartyemail()+"</td>");
                  out.print("<td>"+p.getPartycontactp()+"</td>");
                  out.print("<td>"+p.getPartycontactno()+"</td>");                  
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
