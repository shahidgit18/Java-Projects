package org.apache.jsp.shopper;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import Library.demo;

public final class adminmenu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta charset=\"utf-8\">\n");
      out.write("\t\t<title>Bootstrap E-commerce Templates</title>\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\t\t<meta name=\"description\" content=\"\">\n");
      out.write("\t\t<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->\n");
      out.write("\t\t<!-- bootstrap -->\n");
      out.write("\t\t<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">      \n");
      out.write("\t\t<link href=\"bootstrap/css/bootstrap-responsive.min.css\" rel=\"stylesheet\">\t\t\n");
      out.write("\t\t<link href=\"themes/css/bootstrappage.css\" rel=\"stylesheet\"/>\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- global styles -->\n");
      out.write("\t\t<link href=\"themes/css/flexslider.css\" rel=\"stylesheet\"/>\n");
      out.write("\t\t<link href=\"themes/css/main.css\" rel=\"stylesheet\"/>\n");
      out.write("\n");
      out.write("\t\t<!-- scripts -->\n");
      out.write("\t\t<script src=\"themes/js/jquery-1.7.2.min.js\"></script>\n");
      out.write("\t\t<script src=\"bootstrap/js/bootstrap.min.js\"></script>\t\t\t\t\n");
      out.write("\t\t<script src=\"themes/js/superfish.js\"></script>\t\n");
      out.write("\t\t<script src=\"themes/js/jquery.scrolltotop.js\"></script>\n");
      out.write("\t\t<!--[if lt IE 9]>\t\t\t\n");
      out.write("\t\t\t<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("\t\t\t<script src=\"js/respond.min.js\"></script>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\t</head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"top-bar\" class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"span4\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"span8\">\n");
      out.write("\t\t\t\t\t<div class=\"account pull-right\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"user-menu\">\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("                                                    <li><a href=\"adminlogin.jsp\">Admin</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"MainSearch.jsp\">Search</a></li>\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"register.html\">Contact Us</a></li>\t\t\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div id=\"wrapper\" class=\"container\">\n");
      out.write("\t\t\t<section class=\"navbar main-menu\">\n");
      out.write("\t\t\t\t<div class=\"navbar-inner main-menu\">\t\t\t\t\n");
      out.write("\t\t\t\t\t<h1>Classic Electornic</h1>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</section>\t\t\t\n");
      out.write("        <h2>Admin Dashboard</h2>\n");
      out.write("        <div class=\"row\">\n");
      out.write("           \n");
      out.write("\t\t\t\t\t<div class=\"span3\">\n");
      out.write("        <h3>Manage</h3>\n");
      out.write("        <a href=\"Company_master.jsp\"> <font size=\"4\"><b>Company Master</b></font> </a> <br/>\n");
      out.write("        <a href=\"Item_Master.jsp\"> <font size=\"4\"><b>Item Master</b></font> </a> <br/>\n");
      out.write("                                      \n");
      out.write("                                       \n");
      out.write("        </div>\n");
      out.write("                                       \n");
      out.write("\t\t\t\t\t<div class=\"span3\">\n");
      out.write("                                            \n");
      out.write("          <h3>List Report</h3>\n");
      out.write("          <a href=\"Reports/rpt_comp_list.jsp\"> <font size=\"4\"><b>Company Report</b></font>  </a> <br/>\n");
      out.write("          <a href=\"Reports/rpt_cust_list.jsp\"> <font size=\"4\"><b>Customer Report</b></font>  </a> <br/>\n");
      out.write("          <a href=\"Reports/rpt_item_list.jsp\"> <font size=\"4\"><b>Item Report</b></font>  </a> <br/>\n");
      out.write("          <a href=\"Reports/rpt_orderdetail_list.jsp\"> <font size=\"4\"><b>Order Detail Report</b></font>  </a> <br/>\n");
      out.write("          <a href=\"Reports/rpt_ordermaster_list.jsp\"> <font size=\"4\"><b>Order Master Report</b></font>  </a> <br/>\n");
      out.write("          <a href=\"Reports/rpt_payment_list.jsp\"> <font size=\"4\"><b>Payment Report</b></font>  </a> <br/>\n");
      out.write("                                        </div>                 \n");
      out.write("           \n");
      out.write("\t\t\t\t\t<div class=\"span3\">\n");
      out.write("                                            \n");
      out.write("          \n");
      out.write("          <h3> Dynamic Report</h3>\n");
      out.write("          <a href=\"Reports/dyn_comp_list.jsp\"> <font size=\"4\"><b>Company Wise Item Report</b></font>  </a> <br/>\n");
      out.write("          <a href=\"Reports/dyn_item_list.jsp\"> <font size=\"4\"><b>Item wise order detail Report</b></font>  </a> <br/>\n");
      out.write("          <a href=\"Reports/dyn_order_list.jsp\"> <font size=\"4\"><b>Customer Wise Order Report</b></font>  </a> <br/>\n");
      out.write("          <a href=\"Reports/dyn_payment_list.jsp\"> <font size=\"4\"><b>Customer Wise Payment Report</b></font>  </a> <br/>\n");
      out.write("                                        </div>                   \n");
      out.write("        \n");
      out.write("        \n");
      out.write("            \t\t\t\t\t<div class=\"span3\">\n");
      out.write("            <h3> Datewise Report</h3>\n");
      out.write("          \n");
      out.write("         <a href=\"Reports/datewise_ordermaster.jsp\"> <font size=\"4\"><b>Order Report</b></font>  </a> <br/>\n");
      out.write("         <a href=\"Reports/datewise_payment.jsp\"> <font size=\"4\"><b>Payment Report</b></font>  </a> <br/>\n");
      out.write("                                                </div>\n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("                \t\t\t\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t<script src=\"themes/js/common.js\"></script>\n");
      out.write("\t\t<script>\n");
      out.write("\t\t\t$(document).ready(function() {\n");
      out.write("\t\t\t\t$('#checkout').click(function (e) {\n");
      out.write("\t\t\t\t\tdocument.location.href = \"checkout.html\";\n");
      out.write("\t\t\t\t})\n");
      out.write("\t\t\t});\n");
      out.write("\t\t</script>\t\t\n");
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
