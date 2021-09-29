<%-- 
    Document   : itemcategorydesign
    Created on : Feb 29, 2020, 12:59:56 PM
    Author     : HP
--%>

<%@page import="demo.itemcategory"%>
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
        <title>Item Category Design</title>
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
                var catid,catnm;
                catid=document.getElementById("catid").value;
                catnm=document.getElementById("catnm").value;
                if(notEmpty(catid,"Enter Category Id")&& numeric(catid,"Enter only Number for Category Id"))
                 if(notEmpty(catnm,"Enter Category Name") && isAlphabet(catnm,"Enter only Character for Category Name"))
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
            function numeric(element,helpmessage){
                var numExp=/^[0-9]+$/;
                if(element.match(numExp)){
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

                <br>
                <div class="row">
                    <div class="col-lg-12 col-sm-12" align="center"><h1><b>Item Category</b></h1></div>
                </div>
                
                <form action="itemcategory.jsp">
                    <%!
                     int max;
                     SessionFactory factory=new Configuration().configure().buildSessionFactory();
                     Session session1=factory.openSession();
                     Transaction tx;
                    public int Getnewid()
                    {
                        tx=session1.beginTransaction();
                        List z1=session1.createQuery("select max(catid)from itemcategory").list();
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
                                        <%!
                                String catid,catnm;
                            %>
                            <%
                            if(request.getQueryString()!=null){
                                catid = request.getParameter("catid");
                                catnm = request.getParameter("catnm");

                                }
                            else{
                                catid=String.valueOf(Getnewid());
                                catnm="";
                            }
                            %>
                    <section id="contact-page">
                    <div class="container">
                        <div class="row">
                                <div class="col-lg-3"></div>
                                <div class="col-lg-3 col-sm-12" ><h4><b>Category Id</b></h4></div>
                                <div class="col-lg-6 col-sm-12"><input type="text" readonly="true" name="catid" class="form-control input-append" style="width: 50%" value="<%=catid%>" id="catid"/></div>
                        </div>
                            
                            <div class="row">
                                <div class="col-lg-3"></div>
                                <div class="col-lg-3 col-sm-12" ><h4><b>Name</b></h4></div>
                                <div class="col-lg-6 col-sm-12"><input type="text" placeholder="Category Name" class="form-control input-append"  name="catnm" style="width: 50%" value="<%=catnm%>" id="catnm" />
                                </div>
                            </div>
                           <div class="row">

                            <%if(request.getQueryString()!=null)
                                 {
                                     %>
                                <div align="center" class="col-lg-2 col-lg-offset-3  col-sm-12 col-xs-12" >
                                    <input type="submit" class=" btn btn-warning" name="btn" value="Insert" disabled="true"/>
                                </div>
                                   <div align="center" class="col-lg-2 col-sm-12 col-xs-12"> 
                                       <input type="submit"  class=" btn btn-warning" name="btn" value="Update" onclick="return formvalidator()"/>
                                   </div>
                                   <div align="center" class="col-lg-2 col-sm-12 col-xs-12">
                                       <input type="submit" class=" btn btn-warning" name="btn"  value="Delete" onclick="return delete1()"/>
                                   </div>
           <% }
            else{
%>
            <div align="center" class="col-lg-2 col-lg-offset-3  col-sm-12 col-xs-12">
                <input type="submit" name="btn" class=" btn btn-warning" value="Insert" onclick="return formvalidator()"/>
            </div>
            <div align="center" class="col-lg-2 col-sm-12 col-xs-12">
            <input type="submit" name="btn" class=" btn btn-warning" value="Update" disabled="true"/>
            </div>
            <div align="center" class="col-lg-2 col-sm-12 col-xs-12">
            <input type="submit" name="btn" class=" btn btn-warning" value="Delete" disabled="true"/>
            </div>
        <%
            }
%></div>
                </div>
                    </section>
         </form>
          <%
            SessionFactory factory;
            factory = new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx=session1.beginTransaction();
            List li=session1.createQuery("from itemcategory").list();
            out.print("<table border=1 class='table' style='width:40%' align='center'" );
            out.print("<tr><th>Select</th><th>Category Id</th><th>Name</th></tr>");
            for(int i=0;i<li.size();i++){
                itemcategory ic=(itemcategory)li.get(i);
                out.print("<tr>");
                out.print("<td>");
                out.print("<a href='itemcategorydesign.jsp?catid="+ic.getCatid()+"&catnm="+ic.getCatnm()+"'>Select</a>");
                out.print("</td>");
                out.print("<td>"+ic.getCatid()+"</td>");
                out.print("<td>"+ic.getCatnm()+"</td>");
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
        <script src="Sailor/js/animate.js" type="text/javascript"></script>
        <script src="Sailor/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="Sailor/js/modernizr.custom.js" type="text/javascript"></script>
        <script src="Sailor/js/classie.js" type="text/javascript"></script>
        <script src="Sailor/js/uisearch.js" type="text/javascript"></script>
    </body>
</html>
