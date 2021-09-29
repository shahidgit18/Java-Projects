<%-- 
    Document   : Distric_design
    Created on : Mar 2, 2020, 12:35:22 PM
    Author     : HP
--%>

<%@page import="demo.district"%>
<%@page import="demo.state"%>
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
        <title>District</title>
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
                var disid,disnm;
                disid=document.getElementById("disid").value;
                disnm=document.getElementById("disnm").value;
                    if(notEmpty(disid,"Id Must Be Given") && isid(disid,"Enter Only Number For District Id"))
                        if(notEmpty(disnm,"Name Must Be Given") && isAlphabet(disnm,"Enter Only Character for District Name"))
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
                                <h2><b>District</b></h2>
                            </div>
                </div>
               
        <form action="District.jsp">
             <%!
                SessionFactory factory=new Configuration().configure().buildSessionFactory();
                Session session1=factory.openSession();
                Transaction tx;
                 String disid,disnm;
                 int max;
                 public int Getnewid(){
                     tx=session1.beginTransaction();
                     List z1=session1.createQuery("select max(distid) from district").list();
                     tx.commit();
                     if(z1.get(0)!=null){
                         max=(Integer.parseInt(z1.get(0).toString())+1);
                          
                     }else{
                     max=1;
                     }
                     return max;
                 }
                %>
                <%
                    if(request.getQueryString()!=null){
                        disid=request.getParameter("disid");
                        disnm=request.getParameter("disnm");
                    }
                    else{
                        disid=String.valueOf(Getnewid());
                        disnm="";
                    }
                %>
            <%
                SessionFactory factory;
                factory=new Configuration().configure().buildSessionFactory();
                Session session1=factory.openSession();
                Transaction tx=session1.beginTransaction();
        %>
        
        <section id="contact-page">
                    <div class="container">
                       
                        <div class="row">
                            <div class="col-lg-3"></div>
                            <div class="col-lg-3 col-sm-12"><h4><b>District Id</b></h4></div>
                            <div class="col-lg-6 col-sm-12"><input type="text" name="disid" readonly="true" class="form-control" style="width: 50%" id="disid" value="<%=disid%>"/></div>
                        </div>
            <div class="row">
                            <div class="col-lg-3"></div>
                            <div class="col-lg-3 col-sm-12"><h4><b>State Name</b></h4></div>
                            <div class="col-lg-6 col-sm-12"><%
                List li=session1.createQuery("from state").list(); 
                out.print("<select name='stateid' class='form-control' style='width:50%'>");
                 for(int i=0;i<li.size();i++){
                     state s=(state)li.get(i);
                     out.print("<option value="+s.getStateid()+">"+s.getStatenm()+"</option>");
                     }
                 out.print("</select>");
                            %></div>
            </div>
            <div class="row">
                            <div class="col-lg-3"></div>
                            <div class="col-lg-3 col-sm-12"><h4><b>District Name</b></h4></div>
                            <div class="col-lg-6 col-sm-12"><input type="text" name="disnm" class="form-control" style="width: 50%" id="disnm" value="<%=disnm%>"/></div>
            </div>
                       <div class="row">

                            <%if(request.getQueryString()!=null)
                                 {
                                     %>
                                <div class="col-lg-2 col-lg-offset-4 col-sm-12 col-xs-12">
                                    <input type="submit" class=" btn btn-warning" name="btn" value="Insert" disabled="true"/>
                                </div>
                                   <div class="col-lg-2 col-sm-12 col-xs-12"> 
                                       <input type="submit"  class=" btn btn-warning" name="btn" value="Update" onclick="return formvalidator()"/>
                                   </div>
                                   <div class="col-lg-2 col-sm-12 col-xs-12">
                                       <input type="submit" class=" btn btn-warning" name="btn"  value="Delete" onclick="return delete1()"/>
                                   </div>
           <% }
            else{
%>
            <div class="col-lg-2 col-lg-offset-4 col-sm-12 col-xs-12">
                <input type="submit" name="btn" class=" btn btn-warning" value="Insert" onclick="return formvalidator()"/>
            </div>
            <div class="col-lg-2 col-sm-12 col-xs-12">
            <input type="submit" name="btn" class=" btn btn-warning" value="Update" disabled="true"/>
            </div>
            <div class="col-lg-2 col-sm-12 col-xs-12">
            <input type="submit" name="btn" class=" btn btn-warning" value="Delete" disabled="true"/>
            </div>
<%
            }
          %>
                            </div>
                            <div class="col-lg-12" align="center">
                                <%
                                    li=session1.createQuery("from district").list();
                                    out.print("<table border=1 class='table' style='width:60%'>");
                                    out.print("<tr><th>Select</th><th>District Id</th><th>State Name</th><th>District Name</th></tr>");
                                    for(int i=0;i<li.size();i++)
                                    {
                                        district d=(district)li.get(i);
                                        state s=(state)session1.get(state.class, d.getStateid());
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("<a href='District_design.jsp?disid="+d.getDistid()+"&statenm="+s.getStatenm()+"&disnm="+d.getDisnm()+"'>Select</a>");
                                        out.print("</td>");
                                        out.print("<td>"+d.getDistid()+"</td>");
                                        out.print("<td>"+s.getStatenm()+"</td>");
                                        out.print("<td>"+d.getDisnm()+"</td>");
                                        out.print("</tr>");
                                    }
                                    out.print("</table>");
                                             
                                %>
                            </div>
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
