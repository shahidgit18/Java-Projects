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
        <!--        <link href="Sailor/bodybg/bg10.css" rel="stylesheet" type="text/css"/>-->
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
                                    if(validmobile(partytelno2,"Enter Correct Telephone Number"))
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
            var mobileExp= /^[789]\d{9}$/;
            if(element.match(mobileExp))
            {
                return true;
            }
            alert(helpmessage);
            return false;
        }
        function validmobile(element, helpmessage)
        {
            if(element.length>=1){
                var mobexp= /^[789]\d{9}$/;
                if(element.match(mobexp))
                {
                    return true;
                }
                alert(helpmessage);
                return false;
            }
            return true;
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
                                <h3><b>Party Master</b></h3>
                            </div>
                </div>

        <%! String  partyid,stateid,distid,cityid,partytype,partyname,partyaddress,partygstno,partytelno1,partytelno2,partyemail,partycontactp,partycontactno;
             int max;
                     SessionFactory factory=new Configuration().configure().buildSessionFactory();
                     Session session1=factory.openSession();
                     Transaction tx;
                    public int Getnewid()
                    {
                        tx=session1.beginTransaction();
                        List z1=session1.createQuery("select max(partyid)from partymaster").list();
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
                partyid=String.valueOf(Getnewid());
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
                            <div class="col-lg-4 col-sm-12"><input type="text" name="partyid" readonly="true" id="partyid" placeholder="Enter Party Id" class="form-control" style="width: 70%" value="<%=partyid%>"/></div>
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
            </div><%
               
               li=session1.createQuery("from partymaster").list();
               out.print("<table border=1 class='table' style='width=70%'>");
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
