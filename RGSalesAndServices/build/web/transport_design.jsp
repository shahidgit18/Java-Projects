<%-- 
    Document   : transport_design
    Created on : Mar 2, 2020, 1:28:05 PM
    Author     : HP
--%>

<%@page import="demo.transport"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transport Design</title>
            <link href="Sailor/css/overwrite.css" rel="stylesheet" type="text/css"/>

           <link href="Sailor/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
           <link href="Sailor/Documentation/assets/js/google-code-prettify/prettify.css" rel="stylesheet" type="text/css"/>
           <link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="Sailor/plugins/flexslider/flexslider.css" rel="stylesheet" media="screen" />
<link href="Sailor/css/cubeportfolio.min.css" rel="stylesheet" />
<link href="Sailor/css/style.css" rel="stylesheet" />
<link id="t-colors" href="Sailor/skins/default.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />  
        <script>
            function formvalidator(){
                var transid,transnm,transaddr,transphno;
                transid=document.getElementById("transid").value;
                transnm=document.getElementById("transnm").value;
                transaddr=document.getElementById("transaddr").value;
                transphno=document.getElementById("transphno").value;
                if(notEmpty(transid,"Transport Id Must be Given") && isid(transid,"Enter only Number for Transport Id"))
                    if(notEmpty(transnm,"Name Must be Given") && isAlphabet(transnm,"Enter only Character for Name"))
                        if(notEmpty(transaddr,"Address Must Be Given") && isAlphabet(transaddr,"Enter only Character for Address"))
                            if(notEmpty(transphno,"Phone Number Must Be Given") && validphonenumber(transphno,"Invalid Phone Numbe"))
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
            function isAlphabet(element,helpmessage){
                var alphaExp=/^[a-zA-Z- -]+$/;
                if(element.match(alphaExp)){
                    return true;
                }
                alert(helpmessage);
                return false;
            }
             function  validphonenumber(element,helpmessage){
            var mobileExp= /^[789]\d{9}$/;
            if(element.match(mobileExp))
            {
                return true;
            }
            alert(helpmessage);
            return false;
        }
        </script>
    </head>
    <body>        
        
        <%!
            String transid,transnm,transaddr,transphno;
            int max;
             SessionFactory factory=new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx;
            %>
          <%!
                public int Getnewid(){
            tx=session1.beginTransaction();
            List z1=session1.createQuery("select max(transid) from transport").list();
            tx.commit();
                   if(z1.get(0)!=null){
                            max=(Integer.parseInt(z1.get(0).toString())+1);  
                        }
                        else{
                            max=1;
                        }
                        return max;
            } 
                
        %>
        <%
            if(request.getQueryString()!=null){
                transid=request.getParameter("transid");
                transnm=request.getParameter("transnm");
                transaddr=request.getParameter("transaddr");
                transphno=request.getParameter("transphno");
                }
            else{
                transid=String.valueOf(Getnewid());
                transnm="";
                transaddr="";
                transphno="";
            }
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
		<!-- end header -->
                <br>
                <div class="row">
                            <div class="col-lg-12 col-sm-12" align="center">
                                <h3><b>Transport </b></h3>
                            </div>
                </div>
        <form action="transport.jsp">
            <section id="contact-page">
                    <div class="container">
                        <div class="row">
                                <div class="col-lg-3"></div>
                                <div class="col-lg-3 col-sm-12"><h4><b>Transport Id</b></h4></div>
                                <div class="col-lg-6 col-sm-12"><input type="text" name="transid" class="form-control" readonly="true" id="transid" style="width: 50%" value="<%=transid%>"/></div>
                        </div>
            <div class="row">
                                <div class="col-lg-3"></div>
                                <div class="col-lg-3 col-sm-12"><h4><b> Name</b></h4></div>
                                <div class="col-lg-6 col-sm-12"><input type="text" name="transnm" class="form-control" placeholder="Enter Name" id="transnm" style="width: 50%"  value="<%=transnm%>"/></div>
            </div>
            <div class="row">
                                <div class="col-lg-3"></div>
                                <div class="col-lg-3 col-sm-12"><h4><b>Address</b></h4></div>
                                <div class="col-lg-6 col-sm-12"><textarea name="transaddr" class="form-control" placeholder="Enter Address" id="transaddr" style="width: 50%"><%=transaddr%></textarea></div>
            </div>
            <div class="row">
                                <div class="col-lg-3"></div>
                                <div class="col-lg-3 col-sm-12"><h4><b>Phone Number</b></h4></div>
                                <div class="col-lg-6 col-sm-12"><input type="text" name="transphno" class="form-control" placeholder="Enter Phone Number" id="transphno" style="width: 50%" value="<%=transphno%>"/></div>
            </div>
                       <div class="row">

                            <%if(request.getQueryString()!=null)
                                 {
                                     %>
                                <div  class="col-lg-2 col-lg-offset-3 col-sm-12 col-xs-12">
                                    <input type="submit" class=" btn btn-warning" name="btn" value="Insert" disabled="true"/>
                                </div>
                                   <div class="col-lg-2 col-sm-12 col-xs-12"> 
                                       <input type="submit"  class=" btn btn-warning" name="btn" value="Update"/>
                                   </div>
                                   <div class="col-lg-2 col-sm-12 col-xs-12">
                                       <input type="submit" class=" btn btn-warning" name="btn"  value="Delete" onclick="return delete1()"/>
                                   </div>
           <% }
            else{
%>
            <div  class="col-lg-2 col-lg-offset-4 col-sm-12 col-xs-12">
                <input type="submit" name="btn" class=" btn btn-warning" value="Insert" onclick="return formvalidator()"/>
            </div>
            <div  class="col-lg-2 col-sm-12 col-xs-12">
            <input type="submit" name="btn" class=" btn btn-warning" value="Update" disabled="true"/>
            </div>
            <div class="col-lg-2 col-sm-12 col-xs-12">
            <input type="submit" name="btn" class=" btn btn-warning" value="Delete" disabled="true"/>
            </div>
             
        <%
            }
        %></div>
        <div class="col-lg-12" align="center">
        <%
            List li=session1.createQuery("from transport").list();
            out.print("<table border=1 class='table'>");
            out.print("<tr><th>Select</th><th>Transport Id</th><th>Name</th><th>Address</th><th>Phone Number</th></tr>");
            for(int i=0;i<li.size();i++){
                transport t=(transport)li.get(i);
                out.print("<tr>");
                out.print("<td>");
                out.print("<a href='transport_design.jsp?transid="+t.getTransid()+"&transnm="+t.getTransnm()+"&transaddr="+t.getTransaddr()+"&transphno="+t.getTransphno()+"'>Select</a>");
                out.print("</td>");
                out.print("<td>"+t.getTransid()+"</td>");
                out.print("<td>"+t.getTransnm()+"</td>");
                out.print("<td>"+t.getTransaddr()+"</td>");
                out.print("<td>"+t.getTransphno()+"</td>");
                out.print("</tr>");
            }
            out.print("</table>");
        %></div>
                    </div>
            </section>
        </form>
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
        <a href="Sailor/plugins/flexslider/flexslider.config.js"></a>
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
