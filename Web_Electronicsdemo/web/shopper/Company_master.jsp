<%-- 
    Document   : Company_master
    Created on : Feb 1, 2019, 12:44:27 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="Library.demo"%>
<!DOCTYPE html>
<html lang="en">
	<head>
            
            <script type="text/javascript" language="javascript">

function formValidator(){
	// Make quick references to our fields
	var name = document.getElementById("txtcompnm");
	 
	
	// Check each input in the order that it appears in the form!
	if(notEmpty(name,"Name Must be given") && isAlphabet(name, "Please enter only letters for your name"))
                {
		 	return true;
						}
					 
	return false;
	}


function notEmpty(elem, helperMsg){

	if(elem.value.length == 0){
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
	return true;
}

function isNumeric(elem, helperMsg){
	var numericExpression = /^[0-9]+$/;
	if(elem.value.match(numericExpression)){
		return true;
	}else{
		elem.value="";
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

function isAlphabet(elem, helperMsg){
	var alphaExp = /^[a-zA-Z ]+$/;
	if(elem.value.match(alphaExp)){
		return true;
	}else{
		alert(helperMsg);
		elem.value="";
		elem.focus();
		return false;
	}
}

function isAlphanumeric(elem, helperMsg){
	var alphaExp = /^[0-9a-zA-Z ]+$/;
	if(elem.value.match(alphaExp)){
		return true;
	}else{
		alert(helperMsg);
		elem.value="";
		elem.focus();
		return false;
	}
 }
 
function validmobile(elem){
	var uInput = elem.value;
	if(uInput.length==10){
		return true;
	}else{
		alert("Please enter valid mobile Or Phone No");
		elem.value="";
		elem.focus();
		return false;
	}
}
 

function lengthRestriction(elem, min, max){
	var uInput = elem.value;
	if(uInput.length >= min && uInput.length <= max){
		return true;
	}else{
		alert("Please enter between " +min+ " and " +max+ " characters");
		elem.value="";
		elem.focus();
		return false;
	}
}

function madeSelection(elem, helperMsg){
	if(elem.value == "Please Choose"){
		alert(helperMsg);
		elem.focus();
		return false;
	}else{
		return true;
	}
}

function emailValidator(elem, helperMsg){
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if(elem.value.match(emailExp)){
		return true;
	}else{
		alert(helperMsg);
elem.value="";
		elem.focus();
		return false;
	}
}
</script>

		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
                                                    <li><a href="Home.jsp">Home</a></li>
                                                    <li><a href="adminlogin.jsp">Admin</a></li>
							<li><a href="MainSearch.html">Search</a></li>					
							<li><a href="register.html">Contact Us</a></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<h1>Classic Electornic</h1>
			
				</div>
			</section>			
						
			<section class="main-content">				
				<div class="row">
					<div class="span3">					
					<a href="adminmenu.jsp">Go To Admin Menu </a>				
					</div>
					<div class="span7">					
						<h4 class="title"><span class="text"><strong>Company</strong> Master</span></h4>
                                                
                                                <%!
                                                    ResultSet rs;
                                                 %>
                                                <%
                                                    demo d=new demo();
                                                    int id;String nm;
                                                    if(request.getQueryString()!=null)
                                                    {
                                                        String y=request.getQueryString();
                                                        rs=d.ShowGrid("Select * from company_master where company_id="+y);
                                                        if(rs.next())
                                                        {
                                                            id=rs.getInt(1);
                                                            nm=rs.getString(2);
                                                            %>
                                                                       <form action="companymastercode.jsp" method="post" class="form-stacked">
							<fieldset>
								<div class="control-group">
									<label class="control-label">ID</label>
									<div class="controls">
										<input type="text" placeholder="Enter Company ID" class="input-xlarge" readonly="true" value="<%=id%>" name="txtcompid">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Name:</label>
									<div class="controls">
										<input type="text" placeholder="Enter Company name" class="input-xlarge" name="txtcompnm" id="txtcompnm" value="<%=nm%>">
									</div>
								</div>
														                            
								
								<hr>
                                                                <div class="actions"><input tabindex="9" disabled="true" class="btn btn-inverse large" type="submit" value="Insert" name="btn">
                                                                    <input tabindex="9" class="btn btn-inverse large" type="submit" onclick="return formValidator()" value="Update" name="btn">
                                                              <input tabindex="9" class="btn btn-inverse large" type="submit" value="Delete" name="btn"></div>
							</fieldset>
                                                                        
						</form>	
                                                            
                                                            
                                                            
                                                            <%
                                                        }
                                                    }
                                                    else
{
                                                    
                                                    int maxid=d.GetNewID("company_master","company_id");
                                                    %>
                                                <form action="companymastercode.jsp" method="post" class="form-stacked">
							<fieldset>
								<div class="control-group">
									<label class="control-label">ID</label>
									<div class="controls">
										<input type="text" placeholder="Enter Company ID" class="input-xlarge" readonly="true" value="<%=maxid%>" name="txtcompid">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Name:</label>
									<div class="controls">
										<input type="text" placeholder="Enter Company name" class="input-xlarge" id="txtcompnm" name="txtcompnm">
									</div>
								</div>
														                            
								
								<hr>
								<div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" onclick="return formValidator()" value="Insert" name="btn">
                                                                    <input tabindex="9" disabled="true" class="btn btn-inverse large" type="submit" value="Update" name="btn">
                                                                    <input tabindex="9" class="btn btn-inverse large" disabled="true" type="submit" value="Delete" name="btn"></div>
							</fieldset>
                                                                        
						</form>	
                                        </div>
                                </div>
                                 <div class="row">
                                     <div class="span3"></div>					
				<div class="span5">
                                    <%
 }                                                    
                                                 rs=d.ShowGrid("select * from company_master");
                                                 out.print("<table class=table border=1 align=center>");
                                                 out.print("<tr>");
                                                  out.print("<th> Select </th>");
                                                out.print("<th> Id </th>");
                                                 out.print("<th> Name </th>");
                                                 out.print("</tr>");
                                                 while(rs.next())
                                                 {
                                                     int x=rs.getInt(1);
                                                 out.print("<tr>");
                                                 out.print("<td><a href='Company_master.jsp?"+x+"'>Select</a></td>");
                                                 out.print("<td>" + x + "</td>");
                                                 out.print("<td> " + rs.getString(2)+ " </td>");
                        
                                                out.print(" </tr>");
                                                }
                                                out.print("</table>");
                                                %>                                    
                                </div>
                                 </div>
                                
					</div>				
				
			</section>			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.html">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contac Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
							<li><a href="./register.html">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><a href="#">My Account</a></li>
							<li><a href="#">Order History</a></li>
							<li><a href="#">Wish List</a></li>
							<li><a href="#">Newsletter</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
						<br/>
						<span class="social_icons">
							<a class="facebook" href="#">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 bootstrappage template  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.html";
				})
			});
		</script>		
    </body>
</html>