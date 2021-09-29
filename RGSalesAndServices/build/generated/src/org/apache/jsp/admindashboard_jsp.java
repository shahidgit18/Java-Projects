package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admindashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Dashboard</title>\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg3.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("        <script src=\"Sailor/Documentation/assets/js/script.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"Sailor/Documentation/assets/js/jquery.scrollTo.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"Sailor/contactform/contactform.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"Sailor/Documentation/assets/js/jquery.easing.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"Sailor/css/animate.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/flexslider.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/overwrite.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/custom-fonts.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/cubeportfolio.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <a href=\"Sailor/plugins/flexslider/flexslider.config.js\"></a>\n");
      out.write("        <link href=\"Sailor/plugins/flexslider/flexslider.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/blue.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/green.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/lime.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/yellow.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/sand.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/red.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/rose.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/pink.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/kissme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <a href=\"Sailor/blog-rightsidebar.html\"></a>\n");
      out.write("        <link href=\"Sailor/skins/default.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/plugins/revslider/rs-settings.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/plugins/revslider/extralayers.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg4.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/Documentation/assets/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg2.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/cubeportfolio.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" /> \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("\t\t<!-- start header -->\n");
      out.write("\t\t\t<header>\n");
      out.write("\t\t<div class=\"navbar navbar-default navbar-static-top\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t                   <a class=\"navbar-brand\" href=\"Home.html\"><h1 style=\"font-family: cursive;color: red\">R G Sales And Services</h1></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"navbar-collapse collapse \">\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("                                                    <li class=\"active\" ><a href=\"Home.html\" style=\"font-family: cursive;font-size: large;\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                                                    <li><a href=\"admindashboard.jsp\" style=\"font-family: cursive;font-size: large;\">DashBoard</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"contact.html\" style=\"font-family: cursive;font-size: large;\">Contact</a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>  \n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</header>\n");
      out.write("\t\t<!-- end header -->\n");
      out.write("                <br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3 col-lg-offset-1\"><h3><b>Admin Dashboard</b></h3></div>\n");
      out.write("                    </div>\n");
      out.write("               \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-6 col-sm-12\"><h4><b>Manage</b></h4></div>\n");
      out.write("            <div class=\"col-lg-6 col-sm-12\">\n");
      out.write("                <a href=\"itemcategorydesign.jsp\"><b>Item Category</b></a><br>\n");
      out.write("                <a href=\"item_masterdesign.jsp\"><b>Item Master</b></a><br>\n");
      out.write("                <a href=\"Party_masterdesign.jsp\"><b>Party Master</b></a><br>\n");
      out.write("                <a href=\"Purchase_masterdesign.jsp\"><b>Purchase Master</b></a><br>\n");
      out.write("                <a href=\"purchase_detaildesign.jsp\"><b>Purchase details</b></a><br>\n");
      out.write("                <a href=\"Payment_design.jsp\"><b>Payment</b></a><br>\n");
      out.write("                <a href=\"state_design.jsp\"><b>State Master</b></a><br>\n");
      out.write("                <a href=\"District_design.jsp\"><b>District</b></a><br>\n");
      out.write("                <a href=\"Citydesign.jsp\"><b>City</b></a><br>\n");
      out.write("                <a href=\"transport_design.jsp\"><b>Transport</b></a><br>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-6 col-sm-12\"><h4><b>List Report</b></h4></div>\n");
      out.write("            <div class=\"col-lg-6 col-sm-12\">\n");
      out.write("                <a href=\"Reports/list_itemcategory.jsp\"><b>Item Category Report</b></a><br>\n");
      out.write("                <a href=\"Reports/list_itemmaster.jsp\"><b>Item Master Report</b></a><br>\n");
      out.write("                <a href=\"Reports/list_partymaster.jsp\"><b>Party Master Report</b></a><br>\n");
      out.write("                <a href=\"Reports/list_purchasemaster.jsp\"><b>Purchase Master Report</b></a><br>\n");
      out.write("                <a href=\"Reports/list_purchasedetail.jsp\"><b>Purchase details Report</b></a><br>\n");
      out.write("                <a href=\"Reports/list_payment.jsp\"><b>Payment Report</b></a><br>\n");
      out.write("                <a href=\"Reports/list_state.jsp\"><b>State Master Report</b></a><br>\n");
      out.write("                <a href=\"Reports/list_district.jsp\"><b>District Report</b></a><br>\n");
      out.write("                <a href=\"Reports/list_city.jsp\"><b>City Report</b></a><br>\n");
      out.write("                <a href=\"Reports/list_transport.jsp\"><b>Transport Report</b></a><br>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("               <div class=\"row\">\n");
      out.write("                   <div class=\"col-lg-6 col-sm-12\"><h4><b>Dynamic Report</b></h4></div>\n");
      out.write("                <div class=\"col-lg-6 col-sm-12\">\n");
      out.write("                    <a href=\"Reports/rpt_dynamicitemwise_purchasedetail.jsp\"><b>Itemwise Purchase</b></a><br>\n");
      out.write("                    <a href=\"Reports/rpt_dynamicpartywise_payment.jsp\"><b>Partywise Payment</b></a><br>\n");
      out.write("                    <a href=\"Reports/rpt_dynamicitemwise_purchasedetail.jsp\"><b>Partywise  Purchase</b></a><br>\n");
      out.write("                    <a href=\"Reports/rpt_dynamicstatewise.jsp\"><b>Statewise  Party</b></a><br>\n");
      out.write("                    <a href=\"Reports/rpt_dynamictransportwise_purchase.jsp\"><b>Transportwise Purchase</b></a><br>\n");
      out.write("              </div>\n");
      out.write("               </div>\n");
      out.write("            \n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-6\"><h4><b>Datewise  Report</b></h4></div>\n");
      out.write("                <div class=\"col-lg-6 col-sm-12\">\n");
      out.write("                    <a href=\"Reports/datewise_purchase.jsp\"><b>Purchase Report</b></a><br>\n");
      out.write("                    <a href=\"Reports/datewise_payment.jsp\"><b>Payment Report</b></a><br>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("               <footer>\n");
      out.write("                   <div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"copyright\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>&copy; Sailor Theme - All Right Reserved</p>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"credits\">\n");
      out.write("\t\t\t\t\t\t\t\t\tDesigned by <a href=\"https://bootstrapmade.com/\">Havells</a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"social-network\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Facebook\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Twitter\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Linkedin\"><i class=\"fa fa-linkedin\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Pinterest\"><i class=\"fa fa-pinterest\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Google plus\"><i class=\"fa fa-google-plus\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t</footer>\n");
      out.write("        </div>\n");
      out.write("     \n");
      out.write("                   \n");
      out.write("\t<a href=\"#\" class=\"scrollup\"><i class=\"fa fa-angle-up active\"></i></a>\n");
      out.write("\n");
      out.write("\t<!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("        <script src=\"Sailor/js/jquery.min.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/modernizr.custom.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/jquery.easing.1.3.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/bootstrap.min.js\"></script>\n");
      out.write("\t<script src=\"Sailor/plugins/flexslider/jquery.flexslider-min.js\"></script>\n");
      out.write("\t<script src=\"Sailor/plugins/flexslider/flexslider.config.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/jquery.appear.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/stellar.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/classie.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/uisearch.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/jquery.cubeportfolio.min.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/google-code-prettify/prettify.js\"></script>\n");
      out.write("\t<script src=\"Sailor/js/animate.js\"></script>\n");
      out.write("        <script src=\"Sailor/js/custom.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
