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
	var name = document.getElementById("txtitnm");
	var rate =document.getElementById("txtitrt");
        var desc =document.getElementById("txtitdescp");
	var gst = document.getElementById("txtitgst");
        var stock = document.getElementById("txtitstock");
	// Check each input in the order that it appears in the form!
	if(notEmpty(name,"Name Must be given") && isAlphabet(name, "Please enter only letters for your name"))
                {
		if(notEmpty(rate ,"Rate Must be given") &&  isNumeric(rate, "Please enter only digit for rate"))
                {
                         if(notEmpty(gst ,"GST Must be given") &&  isNumeric(gst, "Please enter only digit for GST"))
                           {
                               if(notEmpty(stock ,"Stock Must be given") &&  isNumeric(stock, "Please enter only digit for Stock"))
                               {
							return true;
                                                    }
                                                    }
                                                    }
                                                   		
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
	var alphaExp = /^[0-9a-zA-Z-, ]+$/;
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
							<li><a href="MainSearch.jsp">Search</a></li>					
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
                            <div class="span5">					
					<a href="adminmenu.jsp">Go To Admin Menu </a>				
					</div>
			</section>
                                                <%!
                                                  
                                                   
                                                    ResultSet rs;
                                                 %>
                                                
                                                <%
                                                demo d=new demo();
                                                int item_id ,comp_id,item_rate,item_stock;
                                                float item_GST;
                                                String item_nm ,item_description,item_photo,btn;
                                                if(request.getQueryString()!=null)
                                                {
                                                    String y=request.getQueryString();
                                                    rs=d.ShowGrid("select * from item_master where item_id="+y);
                                                    if(rs.next())
                                                    {
                                                       item_id=rs.getInt(1);
                                                       item_nm=rs.getString(2);
                                                       comp_id=rs.getInt(3);
                                                       item_rate=rs.getInt(4);
                                                       item_description=rs.getString(5);
                                                       item_GST=rs.getFloat(6);
                                                       item_stock=rs.getInt(7);
                                                       item_photo=rs.getString(8);
                                                %>
                                                   
			<form action="itemcode.jsp" method="post" class="form-stacked">	
                            <h4 class="title"><span class="text"><strong>Item</strong> Master</span></h4>
			<section class="main-content">				
				<div class="row">
					<div class="span3">					
									
					</div>
					<div class="span3">					
						
						
							<fieldset>
								<div class="control-group">
									<label class="control-label">Iteam ID</label>
									<div class="controls">
                                                                            <input type="text" readonly="true" placeholder="Enter Iteam ID" class="input-xlarge" value="<%=item_id%>" name="txtitid">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Name:</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam name" class="input-xlarge" value="<%=item_nm%>" name="txtitnm" id="txtitnm">
									</div>
								</div>
                                                                <div class="control-group">
									<label class="control-label">Company ID:</label>
									<div class="controls">
                                                                        <select name="txtcid" class="input-xlarge">
                                                                                <option>Select</option>
                                                                                <%
                                                                                    int id;String nm;
                                                               rs=d.ShowGrid("select * from company_master");
                                                               while(rs.next())
                                                               {
                                                                   id=rs.getInt(1);
                                                                   nm=rs.getString(2);
                                                               %>
                                                               <option value="<%=id%>"><%=nm%></option>>
                                                               <%           }


                                                               %></select>
                                                                     
									</div>
								</div>
                                                                <div class="control-group">
									<label class="control-label">Iteam Rate:</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam Rate" class="input-xlarge" name="txtitrt" value="<%=item_rate%>" id="txtitrt">
									</div>
								</div>
                                                        </fieldset>
                                        </div>
                                                            <div class="span3">					
									
				
                                                                <div class="control-group">
									<label class="control-label">Description:</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam description" class="input-xlarge" name="txtitdescp" value="<%=item_description%>" id="txtitdescp">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">GST:</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam Gst" class="input-xlarge" name="txtitgst" value="<%=item_GST%>" id="txtitgst">
									</div>
								</div>						                            
								<div class="control-group">
									<label class="control-label">Stock</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam Stock" class="input-xlarge" name="txtitstock" value="<%=item_stock%>" id="txtitstock">
									</div>
								</div>
                                                                <div class="control-group">
									<label class="control-label">Photo:</label>
									<div class="controls">
                                                                            <input type="file" placeholder="Enter Photo" class="input-xlarge" name="txtitphoto" value="<%=item_photo%>">
									</div>
								</div>
								<hr>
                                                                <div class="actions"><input tabindex="9" class="btn btn-inverse large" disabled="true" type="submit" value="Insert" name="btn">
                                                                    
                                                                    <input tabindex="9" class="btn btn-inverse large"  type="submit" value="Update" onclick="return formValidator();" name="btn">
                                                              <input tabindex="9" class="btn btn-inverse large"  type="submit" value="Delete" name="btn"></div>
							</fieldset>
                                </div>
                            <div class="span3">					
									
					</div>
					</div>				
				 
			</section>
                        </form>
                                              <%
                                                  }
                                                }
else
{
                                                int maxid=d.GetNewID("item_master","item_id");
                                                
                                                %>
                                                <form action="itemcode.jsp" method="post" class="form-stacked">	
                            <h4 class="title"><span class="text"><strong>Item</strong> Master</span></h4>
			<section class="main-content">				
				<div class="row">
					<div class="span3">					
									
					</div>
					<div class="span3">					
						
						
							<fieldset>
								<div class="control-group">
									<label class="control-label">Iteam ID</label>
									<div class="controls">
                                                                            <input type="text" readonly="true" placeholder="Enter Iteam ID" class="input-xlarge" value="<%=maxid%>" name="txtitid">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Name:</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam name" class="input-xlarge" name="txtitnm" id="txtitnm">
									</div>
								</div>
                                                                <div class="control-group">
									<label class="control-label">Company ID:</label>
									<div class="controls">
                                                                            <select name="txtcid" class="input-xlarge">
                                                                                <option>Select</option>
                                                                                <%
                                                                                    int id;String nm;
                                                               rs=d.ShowGrid("select * from company_master");
                                                               while(rs.next())
                                                               {
                                                                   id=rs.getInt(1);
                                                                   nm=rs.getString(2);
                                                               %>
                                                               <option value="<%=id%>"><%=nm%></option>>
                                                               <%           }


                                                               %></select>
                                                                     
									</div>
								</div>
                                                                <div class="control-group">
									<label class="control-label">Iteam Rate:</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam Rate" class="input-xlarge" name="txtitrt" id="txtitrt">
									</div>
								</div>
                                                        </fieldset>
                                        </div>
                                                            <div class="span3">					
									
				
                                                                <div class="control-group">
									<label class="control-label">Description:</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam description" class="input-xlarge" name="txtitdescp" id="txtitdescp">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">GST:</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam Gst" class="input-xlarge" name="txtitgst" id="txtitgst">
									</div>
								</div>						                            
								<div class="control-group">
									<label class="control-label">Stock</label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter Iteam Stock" class="input-xlarge" name="txtitstock" id="txtitstock">
									</div>
								</div>
                                                                <div class="control-group">
									<label class="control-label">Photo:</label>
									<div class="controls">
                                                                            <input type="file" placeholder="Enter Photo" class="input-xlarge" name="txtitphoto">
									</div>
								</div>
								<hr>
								<div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" value="Insert" onclick="return formValidator();" name="btn">
                                                                    
                                                              <input tabindex="9" class="btn btn-inverse large" disabled="true" type="submit" value="Update" name="btn">
                                                              <input tabindex="9" class="btn btn-inverse large" disabled="true" type="submit" value="Delete" name="btn"></div>
							</fieldset>
                                                        	</fieldset>
                                </div>
                            <div class="span3">					
									
					</div>
					</div>				
				 
			</section>
                        </form>
                                                <%
                                                    }
                                                 rs=d.ShowGrid("select * from item_master");
                                                 out.print("<table class=table border=1 align=center>");
                                                 out.print("<tr>");
                                                 out.print("<th> Select </th>");
                                                 out.print("<th> Item Id </th>");
                                                 out.print("<th> Name </th>");
                                                 out.print("<th> Company Id </th>");
                                                 out.print("<th> Item Rate </th>");
                                                 out.print("<th> Description </th>");
                                                 out.print("<th> GST </th>");
                                                 out.print("<th> Stock </th>");
                                                 out.print("<th> Photo </th>");
                                                 out.print("</tr>");
                                                 while(rs.next())
                                                 {
                                                     int x=rs.getInt(1);
                                                   out.print("<tr>");
                                                out.print("<td><a href='Item_Master.jsp?"+x+"'>Select</a></td>");
                                                 out.print("<td>" + x + "</td>");
                                         
                                                 out.print("<td> " + rs.getString(2)+ " </td>");
                                                 out.print("<td> " + rs.getInt(3)+ " </td>");
                                                 out.print("<td> " + rs.getInt(4)+ " </td>");
                                                 out.print("<td> " + rs.getString(5)+ " </td>");
                                                 out.print("<td> " + rs.getFloat(6)+ " </td>");
                                                 out.print("<td> " + rs.getInt(7)+ " </td>");
                                                 out.print("<td> " + rs.getString(8)+ " </td>");
                                                 out.print(" </tr>");
                                                }
                                                out.print("</table>");
                                                %>           
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