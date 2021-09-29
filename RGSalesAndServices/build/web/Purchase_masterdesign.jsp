<%-- 
    Document   : Purchase_masterdesign
    Created on : Mar 2, 2020, 12:07:53 PM
    Author     : HP
--%>

<%@page import="demo.transport"%>
<%@page import="demo.partymaster"%>
<%@page import="demo.purchasemaster"%>
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
        <title>Purchase Master</title>
<!--        <link href="Sailor/Documentation/assets/css/documenter_style.css" rel="stylesheet" type="text/css"/>-->
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
             var  purid,purdt,purgrandtot;
             purid=document.getElementById("purid").value;
             purdt=document.getElementById("purdt").value;
             purgrandtot=document.getElementById("purgrandtot").value;
             if(notEmpty(purid,"Purchase Id Must be Given") && isid(purid,"Please enter only number for partyid"))
                if(notEmpty(purdt,"Purchase Date Must be Given") && datevalidator(purdt,"Invalid date"))
                    if(notEmpty(purgrandtot,"Grand Total Must be Given") && float(purgrandtot,"Please enter only number for Grand Total"))
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
            function float(element,helpmessage){
            var numericExpression= /^[0-9.]+$/;
            if(element.match(numericExpression))
            {
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
            function numeric(element,helpmessage){
               var numExp=/^[0-9.]+$/;
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
                            <div class="col-lg-12 col-sm-12" align="center">
                                <h3><b>Purchase Master</b></h3>
                            </div>
                </div>
       
        <form action="Purchase_master.jsp"> 
             <%!
        String purid,purdt,partyid,tranid,purgrandtot;
         %>
         <%
         if(request.getQueryString()!=null){
             purid=request.getParameter("purid");
             purdt=request.getParameter("purdt");
             partyid=request.getParameter("partyid");
             tranid=request.getParameter("tranid");
             purgrandtot=request.getParameter("purgrandtot");
         }else{
             purid=String.valueOf(Getnewid());
             purdt="";
             partyid="";
             tranid="";
             purgrandtot="";
         }
         %>
         <%
             SessionFactory factory;
            factory = new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx=session1.beginTransaction();
            %>
            <%!
            int max;
            SessionFactory factory=new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx;
            public int Getnewid(){
                tx=session1.beginTransaction();
                 List z1=session1.createQuery("select max(purid)from purchasemaster").list();
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
             <section id="contact-page">
                <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-sm-12"> <h4><b>Purchase Id</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><input type="text" readonly="true" class="form-control" name="purid" placeholder="Enter Purchase Id" id="purid" value="<%=purid%>" style="width: 70%"/></div>
                            <div class="col-lg-2 col-sm-12"><h4><b>date</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><input type="date" class="form-control" name="purdt" id="purdt"  value="<%=purdt%>" style="width: 70%"/></div>
                        </div>
            
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Party Name</b></h4></div>
                <div class="col-lg-4 col-sm-12"><%
            List li=session1.createQuery("from partymaster").list();
            out.print("<select name='partyid' class='form-control' style='width: 70%'>");
                 for(int i=0;i<li.size();i++){
                     partymaster p=(partymaster)li.get(i);
                     out.print("<option value="+p.getPartyid()+">"+p.getPartyname()+"</option>");
                     }
                 out.print("</select>");
                 %></div>
                 <div class="col-lg-2 col-sm-12"><h4><b>Transport Name</b></h4></div>
            <div class="col-lg-4 col-sm-12"><%
            li=session1.createQuery("from  transport").list();
            out.print("<select name='tranid' class='form-control' style='width: 70%'>");
                 for(int i=0;i<li.size();i++){
                     transport t=(transport)li.get(i);
                     out.print("<option value="+t.getTransid()+">"+t.getTransnm()+"</option>");
                     }
                 out.print("</select>");
            %></div>
            </div>
             <div class="row">
                 <div class="col-lg-2 col-sm-12"> <h4><b>Grand total</b></h4></div>
                 <div class="col-lg-4 col-sm-12"><input type="text" name="purgrandtot" class="form-control" id="purgrandtot" placeholder="Enter Grand Total" style="width: 70%" value="<%=purgrandtot%>"/></div>
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
                
        
                            <div class="row"> 
                                <div class="col-lg-12">
                            <%
                                li=session1.createQuery("from purchasemaster").list();
                               out.print("<table border=2 class='table'>");
                               out.print("<tr><th>Select</th><th>Purchase Id</th><th>Purchase Date</th><th>Party Id</th><th>Transport Id</th><th>Purchase Grand Total</th></tr>");
                               for(int i=0;i<li.size();i++){
                                   purchasemaster pm=(purchasemaster)li.get(i);
                                   partymaster p=(partymaster)session1.get(partymaster.class, pm.getPartyid());
                                   transport t=(transport)session1.get(transport.class, pm.getTranid());
                                   out.print("<tr>");
                                   out.print("<td>");
                                   out.print("<a href='Purchase_masterdesign.jsp?purid="+pm.getPurid()+"&purdt="+pm.getPurdate()+"&partyid="+p.getPartyname()+"&tranid="+t.getTransnm()+"&purgrandtot="+pm.getPurgrandtot()+"'>Select</a>");
                                   out.print("</td>");
                                   out.print("<td>"+pm.getPurid()+"</td>");
                                   out.print("<td>"+pm.getPurdate()+"</td>");
                                   out.print("<td>"+p.getPartyname()+"</td>");
                                   out.print("<td>"+t.getTransnm()+"</td>");
                                   out.print("<td>"+pm.getPurgrandtot()+"</td>");
                                   out.print("</tr>");
                               }
                               out.print("</table>");
                               %>
                            </div>
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
                </div>
    </body>
</html>
