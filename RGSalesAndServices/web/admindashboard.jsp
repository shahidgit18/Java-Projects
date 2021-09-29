<%-- 
    Document   : admindashboard
    Created on : Mar 19, 2020, 12:12:50 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
<!--        <link href="Sailor/bodybg/bg3.css" rel="stylesheet" type="text/css"/>-->
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
        <a href="Sailor/blog-rightsidebar.html"></a>
        <link href="Sailor/skins/default.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/plugins/revslider/rs-settings.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/plugins/revslider/extralayers.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg4.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/Documentation/assets/js/google-code-prettify/prettify.css" rel="stylesheet" type="text/css"/>
        <link href="Sailor/bodybg/bg2.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/cubeportfolio.min.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" /> 
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
                    <div class="col-lg-3 col-lg-offset-1"><h3><b>Admin Dashboard</b></h3></div>
                    </div>
               
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-12"><h4><b>Manage</b></h4></div>
            <div class="col-lg-6 col-sm-12">
                <a href="itemcategorydesign.jsp"><b>Item Category</b></a><br>
                <a href="item_masterdesign.jsp"><b>Item Master</b></a><br>
                <a href="Party_masterdesign.jsp"><b>Party Master</b></a><br>
                <a href="Purchase_masterdesign.jsp"><b>Purchase Master</b></a><br>
                <a href="purchase_detaildesign.jsp"><b>Purchase details</b></a><br>
                <a href="Payment_design.jsp"><b>Payment</b></a><br>
                <a href="state_design.jsp"><b>State Master</b></a><br>
                <a href="District_design.jsp"><b>District</b></a><br>
                <a href="Citydesign.jsp"><b>City</b></a><br>
                <a href="transport_design.jsp"><b>Transport</b></a><br>
            </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-sm-12"><h4><b>List Report</b></h4></div>
            <div class="col-lg-6 col-sm-12">
                <a href="Reports/list_itemcategory.jsp"><b>Item Category Report</b></a><br>
                <a href="Reports/list_itemmaster.jsp"><b>Item Master Report</b></a><br>
                <a href="Reports/list_partymaster.jsp"><b>Party Master Report</b></a><br>
                <a href="Reports/list_purchasemaster.jsp"><b>Purchase Master Report</b></a><br>
                <a href="Reports/list_purchasedetail.jsp"><b>Purchase details Report</b></a><br>
                <a href="Reports/list_payment.jsp"><b>Payment Report</b></a><br>
                <a href="Reports/list_state.jsp"><b>State Master Report</b></a><br>
                <a href="Reports/list_district.jsp"><b>District Report</b></a><br>
                <a href="Reports/list_city.jsp"><b>City Report</b></a><br>
                <a href="Reports/list_transport.jsp"><b>Transport Report</b></a><br>
                
            </div>
        </div>
               <div class="row">
                   <div class="col-lg-6 col-sm-12"><h4><b>Dynamic Report</b></h4></div>
                <div class="col-lg-6 col-sm-12">
                    <a href="Reports/rpt_dynamicitemwise_purchasedetail.jsp"><b>Itemwise Purchase</b></a><br>
                    <a href="Reports/rpt_dynamicpartywise_payment.jsp"><b>Partywise Payment</b></a><br>
                    <a href="Reports/rpt_dynamicitemwise_purchasedetail.jsp"><b>Partywise  Purchase</b></a><br>
                    <a href="Reports/rpt_dynamicstatewise.jsp"><b>Statewise  Party</b></a><br>
                    <a href="Reports/rpt_dynamictransportwise_purchase.jsp"><b>Transportwise Purchase</b></a><br>
              </div>
               </div>
            
                <div class="row">
                    <div class="col-lg-6"><h4><b>Datewise  Report</b></h4></div>
                <div class="col-lg-6 col-sm-12">
                    <a href="Reports/datewise_purchase.jsp"><b>Purchase Report</b></a><br>
                    <a href="Reports/datewise_payment.jsp"><b>Payment Report</b></a><br>
                </div>
                </div>
        </div>
               <footer>
                   <div class="row">
						<div class="col-lg-6">
							<div class="copyright">
								<p>&copy; Sailor Theme - All Right Reserved</p>
								<div class="credits">
									Designed by <a href="https://bootstrapmade.com/">Havells</a>
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
