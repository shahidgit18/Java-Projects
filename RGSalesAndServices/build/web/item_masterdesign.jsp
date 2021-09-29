<%-- 
    Document   : item_masterdesign
    Created on : Feb 29, 2020, 8:11:47 PM
    Author     : HP
--%>

<%@page import="demo.itemmaster"%>
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
        <title>Item Master</title>
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
                var itemid,catid,itemstock,itemnm,itemstockproof,mercurycontent,surgeprotection,voltagerange,thd,certification,
                colorrenderingindex,lamplife,colortemp,lighteffect,startuptime,warmuptime,switchingcycle,itemheight,itemwidth,
                netweight,itemcolor,itemwarrantyperiod,itemrate ;
                    itemid=document.getElementById("itemid").value;
                    itemnm=document.getElementById("itemnm").value;
                    itemstockproof=document.getElementById("itemstockproof").value;
                    mercurycontent=document.getElementById("mercurycontent").value;
                    surgeprotection=document.getElementById("surgeprotection").value;
                    voltagerange=document.getElementById("voltagerange").value;
                    thd=document.getElementById("thd").value;
                    certification=document.getElementById("certification").value;
                    colorrenderingindex=document.getElementById("colorrenderingindex").value;
                    lamplife=document.getElementById("lamplife").value;
                    colortemp=document.getElementById("colortemp").value;
                    lighteffect=document.getElementById("lighteffect").value;
                    startuptime=document.getElementById("startuptime").value;
                    warmuptime=document.getElementById("warmuptime").value;
                    switchingcycle=document.getElementById("switchingcycle").value;
                    itemheight=document.getElementById("itemheight").value;
                    itemwidth=document.getElementById("itemwidth").value;
                    netweight=document.getElementById("netweight").value;
                    itemcolor=document.getElementById("itemcolor").value;
                    itemwarrantyperiod=document.getElementById("itemwarrantyperiod").value;
                    itemrate=document.getElementById("itemrate").value;
                    itemstock=document.getElementById("itemstock").value;
                    if(notEmpty(itemid,"Id Must be given") && isid(itemid,"Enter only Number for Item id"))
                        if(notEmpty(itemnm,"Name Must be Given") && isAlphabet(itemnm,"Enter only character for Item Name"))
                            if(notEmpty(itemstockproof,"Stock Proof Must be Given"))
                                if(notEmpty(mercurycontent,"Mercury Content Must be Given"))
                                    if(notEmpty(surgeprotection,"Surge Protection Must be Given"))
                                        if(notEmpty(voltagerange,"Voltage Range Must be Given"))
                                            if(notEmpty(thd,"Thd Must Be Given"))
                                                if(notEmpty(certification,"Certification Must Be Given"))
                                                    if(notEmpty(colorrenderingindex,"Color Rendering Index Must Be Given"))
                                                        if(notEmpty(lamplife,"Lamp Life Must Be Given"))
                                                            if(notEmpty(colortemp,"Color Temprature Must Be Given"))
                                                                if(notEmpty(lighteffect,"Light Effect Must Be given"))
                                                                    if(notEmpty(startuptime,"Startup time Must Be given"))
                                                                        if(notEmpty(warmuptime,"Warm Up time Must Be given"))
                                                                            if(notEmpty(switchingcycle,"Switching Cycle Must Be given"))
                                                                                 if(notEmpty(itemheight,"Item Height Must Be Given"))
                                                                                    if(notEmpty(itemwidth,"Item Width Must Be given"))
                                                                                        if(notEmpty(netweight,"Net Weight Mus Be Given"))
                                                                                            if(notEmpty(itemcolor,"Item color Must Be given"))
                                                                                                if(notEmpty(itemwarrantyperiod,"Item Warranty Must Be Given"))
                                                                                                    if(notEmpty(itemrate,"Item Rate Mus Be Given") && float(itemrate,"Enter correct value"))
                                                                                                        if(notEmpty(itemstock,"Item stock Must Be Given") && numeric(itemstock,"Enter correct value"))
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
                var alphaExp=/^[a-zA-Z]+$/;
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
            function isid(element,helpmessage){
                var idexp=/^[0-9]+$/;
                if(element.match(idexp)){
                    return true;
                }
                alert(helpmessage);
                return false;
            }
               function isAlphanumeric(element,helpmessage){
                var alphanumexp=/^[a-zA-Z0-9- -,-%-,-.-]+$/;
                    if(element.match(alphanumexp)){
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
        <%!
        String itemid,catid,itemstock,itemnm,itemstockproof,mercurycontent,surgeprotection,voltagerange,thd,certification,
        colorrenderingindex,lamplife,colortemp,lighteffect,startuptime,warmuptime,switchingcycle,itemheight,itemwidth,
        netweight,itemcolor,itemwarrantyperiod,itemrate ;
        %>
        <%
        if(request.getQueryString()!=null){
            itemid=request.getParameter("itemid");
            itemnm=request.getParameter("itemnm");
            itemstock=request.getParameter("itemstockproof");
            mercurycontent=request.getParameter("mercurycontent");
            surgeprotection=request.getParameter("surgeprotection");
            voltagerange=request.getParameter("voltagerange");
            thd=request.getParameter("thd");
            certification=request.getParameter("certification");
            colorrenderingindex=request.getParameter("colorrenderingindex");
            lamplife=request.getParameter("lamplife");
            colortemp=request.getParameter("colortemp");
            lighteffect=request.getParameter("lighteffect");
            startuptime=request.getParameter("startuptime");
            warmuptime=request.getParameter("warmuptime");
            switchingcycle=request.getParameter("switchingcycle");
            itemheight=request.getParameter("itemheight");
            itemwidth=request.getParameter("itemwidth");
            netweight=request.getParameter("netweight");
            itemcolor=request.getParameter("itemcolor");
            itemrate=request.getParameter("itemrate");
            itemwarrantyperiod=request.getParameter("itemwarrantyperiod");
            itemstock=request.getParameter("itemstock");
        }
        else{
            itemid=String.valueOf(Getnewid());
            itemnm="";
            itemstock="";
            mercurycontent="";
            surgeprotection="";
            voltagerange="";
            thd="";
            certification="";
            colorrenderingindex="";
            lamplife="";
            colortemp="";
            lighteffect="";
            startuptime="";
            warmuptime="";
            switchingcycle="";
            itemheight="";
            itemwidth="";
            netweight="";
            itemcolor="";
            itemrate="";
            itemwarrantyperiod="";
            itemstock="";
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
                                <h3><b>Item Master</b></h3>
                            </div>
                </div>
        <form action="item_master.jsp">
            <%!
            int max;
            SessionFactory factory=new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx;
            public int Getnewid(){
                tx=session1.beginTransaction();
                List z1=session1.createQuery("select max(itemid)from itemmaster").list();
                tx.commit();
                if(z1.get(0)!=null){
                    max=(Integer.parseInt(z1.get(0).toString())+1);
                    }else{
                    max=1;
                }
                return max;
            }
            %>
            <section id="contact-page">
                <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-sm-12"> <h4><b>Item Id</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><input type="text" class="form-control" readonly="true" style="width: 50%" id="itemid"  name="itemid" value="<%=itemid%>"/></div>
                            <div class="col-lg-2 col-sm-12"> <h4><b>Category Name</b></h4></div>
                            <div class="col-lg-4 col-sm-12"><%SessionFactory factory;
                factory=new Configuration().configure().buildSessionFactory();
                Session session1=factory.openSession();
                Transaction tx=session1.beginTransaction();
                int catid;
                List li=session1.createQuery("from itemcategory").list();
                out.print("<select name='catid' class='form-control' style='width: 50%'>");
                for(int i=0;i<li.size();i++){
                    itemcategory ic=(itemcategory)li.get(i);
                    out.print("<option value="+ic.getCatid()+">"+ic.getCatnm()+"</option>");
                }
                out.print("</select>");
                            %></div></div>  
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Item name</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="itemnm" id="itemnm" class="form-control" style="width: 50%" value="<%=itemnm%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Item Shock Proof</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="itemstockproof" id="itemstockproof" class="form-control" style="width: 50%" value="<%=itemstock%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Mercury Content</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="mercurycontent" id="mercurycontent" class="form-control" style="width: 50%" value="<%=mercurycontent%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Surge Protection</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="surgeprotection" id="surgeprotection" class="form-control" style="width: 50%" value="<%=surgeprotection%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Voltage Range</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="voltagerange" id="voltagerange" class="form-control" style="width: 50%" value="<%=voltagerange%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Total Harmonic Distortion</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="thd" class="form-control" id="thd" style="width: 50%" value="<%=thd%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Certification</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="certification" id="certification" class="form-control" style="width: 50%" value="<%=certification%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Color Rendering Index</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="colorrenderingindex" id="colorrenderingindex" class="form-control" style="width: 50%" value="<%=colorrenderingindex%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>lamp life</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" class="form-control" style="width: 50%" id="lamplife" name="lamplife" value="<%=lamplife%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Color temp</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" class="form-control" style="width: 50%" name="colortemp" id="colortemp" value="<%=colortemp%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Light Effect</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" class="form-control" style="width: 50%" name="lighteffect" id="lighteffect" value="<%=lighteffect%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Start Up Time</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" class="form-control" style="width: 50%" name="startuptime" id="startuptime" value="<%=startuptime%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Warm Up Time</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="warmuptime" class="form-control" style="width: 50%" id="warmuptime" value="<%=warmuptime%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Switching Cycle</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="switchingcycle" class="form-control" style="width: 50%" id="switchingcycle" value="<%=switchingcycle%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Item Height</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="itemheight" class="form-control" style="width: 50%" id="itemheight" value="<%=itemheight%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>item width</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="itemwidth" class="form-control" style="width: 50%" id="itemwidth" value="<%=itemwidth%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>net weight</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="netweight" class="form-control" style="width: 50%" id="netweight" value="<%=netweight%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Item color</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="itemcolor" class="form-control" style="width: 50%" id="itemcolor" value="<%=itemcolor%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Item rate</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="itemrate" class="form-control" style="width: 50%" id="itemrate" value="<%=itemrate%>"/></div>
                <div class="col-lg-2 col-sm-12"> <h4><b>Item warranty period</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="itemwarrantyperiod" class="form-control" style="width: 50%" id="itemwarrantyperiod" value="<%=itemwarrantyperiod%>"/></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12"> <h4><b>Item stock</b></h4></div>
                <div class="col-lg-4 col-sm-12"><input type="text" name="itemstock" class="form-control" style="width: 50%" id="itemstock"  value="<%=itemstock%>"/></div>
            </div>
                                        <div class="row">

                            <%if(request.getQueryString()!=null)
                                 {
                                     %>
                                <div  class="col-lg-2 col-lg-offset-4 col-sm-12 col-xs-12" >
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
                </div> 
                         
                <%
            
            li=session1.createQuery("from itemmaster").list();
            out.print("<table class='table' width='70%' border=1>");
            out.print("<tr><th>Select</th><th>Item Id</th><th>Category Name</th><th>Item Name</th><th>Item Shockproof</th><th>Mercury Content</th><th>Surge Protection</th><th>thd</th><th>Certification</th><th>Color temp</th><th>Light Effect</th><th>Startup Light</th><th>Warm up Light</th><th>Item Height</th><th>Item width</th><th>Net Weight</th><th>Item color</th><th>Item Rate</th><th>Item Warranty Period</th><th>Item Stock</th></tr>");
            for(int i=0;i<li.size();i++){
            itemmaster im=(itemmaster)li.get(i);
            itemcategory ic=(itemcategory)session1.get(itemcategory.class,im.getCatid());
            out.print("<tr>");
            out.print("<td>");
            out.print("<a href='item_masterdesign.jsp?itemid="+im.getItemid()+"&categoryid="+ic.getCatid()+"&itemnm="+im.getItemnm()+"&itemstockproof="+im.getItemstockproof()+"&mercurycontent="+im.getMercurycontent()+"&surgeprotection="+im.getSurgeprotection()+"&voltagerange="+im.getVoltagerange()+"&thd="+im.getThd()+"&certification="+im.getCertification()+"&colorrenderingindex="+im.getColorrenderingindex()+"&lamplife="+im.getLamplife()+"&colortemp="+im.getColortemp()+"&lighteffect="+im.getLighteffect()+"&startuptime="+im.getStartuptime()+"&warmuptime="+im.getWarmuptime()+"&switchingcycle="+im.getSwitchingcycle()+"&itemheight="+im.getItemheight()+"&itemwidth="+im.getItemwidth()+"&netweight="+im.getNetweight()+"&itemcolor="+im.getItemcolor()+"&itemrate="+im.getItemrate()+"&itemwarrantyperiod="+im.getItemwarrantyperiod()+"&itemstock="+im.getItemstock()+"'>Select</a>");
            out.print("</td>");
            out.print("<td align='center'>"+im.getItemid()+"</td>");
            out.print("<td>"+ic.getCatnm()+"</td>");
            out.print("<td>"+im.getItemnm()+"</td>");
            out.print("<td>"+im.getItemstockproof()+"</td>");
            out.print("<td>"+im.getMercurycontent()+"</td>");
            out.print("<td>"+im.getSurgeprotection()+"</td>");
            
            out.print("<td>"+im.getThd()+"</td>");
            out.print("<td>"+im.getCertification()+"</td>");
            out.print("<td>"+im.getColortemp()+"</td>");
            out.print("<td>"+im.getLighteffect()+"</td>");
            out.print("<td>"+im.getStartuptime()+"</td>");
            out.print("<td>"+im.getWarmuptime()+"</td>");
           
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
