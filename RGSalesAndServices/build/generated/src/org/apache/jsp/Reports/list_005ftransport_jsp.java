package org.apache.jsp.Reports;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import demo.transport;
import java.util.List;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;

public final class list_005ftransport_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>List Transport</title>\n");
      out.write("         <link href=\"../Sailor/css/overwrite.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <link href=\"../Sailor/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../Sailor/Documentation/assets/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"../Sailor/plugins/flexslider/flexslider.css\" rel=\"stylesheet\" media=\"screen\" />\n");
      out.write("        <link href=\"../Sailor/css/cubeportfolio.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"../Sailor/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("        <link id=\"t-colors\" href=\"../Sailor/skins/default.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"../Sailor/css/style.css\" rel=\"stylesheet\" /> \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div id=\"wrapper\">\n");
      out.write("\t\t<!-- start header -->\n");
      out.write("\t\t<header>\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"navbar navbar-default navbar-static-top\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                                            <a class=\"navbar-brand\" href=\"index.html\"><img src=\"../images/logo_campaign.png\" alt=\"\"\n");
      out.write("                                                     width=\"199\" height=\"80\" /></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"navbar-collapse collapse \">\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"active\"><a href=\"index.html\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle \" data-toggle=\"dropdown\" data-hover=\"dropdown\" data-delay=\"0\" data-close-others=\"false\">Features <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"typography.html\">Typography</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"components.html\">Components</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"pricing-box.html\">Pricing box</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown-submenu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle \" data-toggle=\"dropdown\" data-hover=\"dropdown\">Pages</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"fullwidth.html\">Full width</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"right-sidebar.html\">Right sidebar</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"left-sidebar.html\">Left sidebar</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"comingsoon.html\">Coming soon</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"search-result.html\">Search result</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"404.html\">404</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"register.html\">Register</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"login.html\">Login</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"portfolio.html\">Portfolio</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle \" data-toggle=\"dropdown\" data-hover=\"dropdown\" data-delay=\"0\" data-close-others=\"false\">Blog <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"blog-rightsidebar.html\">Blog right sidebar</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"blog-leftsidebar.html\">Blog left sidebar</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"post-rightsidebar.html\">Post right sidebar</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"post-leftsidebar.html\">Post left sidebar</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</header>\n");
      out.write("\n");
      out.write("                <br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12 col-sm-12\" align=\"center\"><h1><b>List Report Transport</b></h1></div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                 <div class=\"row\"> \n");
      out.write("                                <div class=\"col-lg-7 col-lg-offset-3\">\n");
      out.write("                                    ");

                                        SessionFactory factory;
                                        factory = new Configuration().configure().buildSessionFactory();
                                        Session session1=factory.openSession();
                                        Transaction tx=session1.beginTransaction();
                                        List li=session1.createQuery("from transport").list();
                                        out.print("<table border=1 class='table'>");
                                        out.print("<tr><th>Transport Id</th><th>Name</th><th>Address</th><th>Phone Number</th></tr>");
                                        for(int i=0;i<li.size();i++){
                                   transport t=(transport)li.get(i);
                                   out.print("<tr>");
                                   out.print("<td>"+t.getTransid()+"</td>");
                                   out.print("<td>"+t.getTransnm()+"</td>");
                                   out.print("<td>"+t.getTransaddr()+"</td>");
                                   out.print("<td>"+t.getTransphno()+"</td>");
                                   out.print("</tr>");
            }
            out.print("</table>");
        
      out.write("\n");
      out.write("                \n");
      out.write("                                </div>\n");
      out.write("                 </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                  \n");
      out.write("\t\t\t<div id=\"sub-footer\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("                                            <div class=\"col-lg-6\" style=\"height: 140px\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"copyright\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>&copy; Sailor Theme - All Right Reserved</p>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"credits\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\tDesigned by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\n");
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
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</footer>\n");
      out.write("                       \n");
      out.write("\t </div>\n");
      out.write("\t<a href=\"#\" class=\"scrollup\"><i class=\"fa fa-angle-up active\"></i></a>\n");
      out.write("\n");
      out.write("\t<!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("        <script src=\"../Sailor/js/jquery.min.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/modernizr.custom.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/jquery.easing.1.3.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/bootstrap.min.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/plugins/flexslider/jquery.flexslider-min.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/plugins/flexslider/flexslider.config.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/jquery.appear.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/stellar.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/classie.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/uisearch.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/jquery.cubeportfolio.min.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/google-code-prettify/prettify.js\"></script>\n");
      out.write("\t<script src=\"../Sailor/js/animate.js\"></script>\n");
      out.write("        <script src=\"../Sailor/js/custom.js\"></script>\n");
      out.write("        <script src=\"../Sailor/js/animate.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../Sailor/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../Sailor/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../Sailor/js/classie.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../Sailor/js/uisearch.js\" type=\"text/javascript\"></script>\n");
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
