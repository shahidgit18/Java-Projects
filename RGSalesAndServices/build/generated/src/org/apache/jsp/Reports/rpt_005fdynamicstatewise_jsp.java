package org.apache.jsp.Reports;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import demo.city;
import demo.partymaster;
import demo.district;
import demo.state;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;

public final class rpt_005fdynamicstatewise_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Dynamic State wise</title>\r\n");
      out.write("         <link href=\"../Sailor/Documentation/assets/css/documenter_style.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg3.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <script src=\"../Sailor/Documentation/assets/js/script.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"../Sailor/Documentation/assets/js/jquery.scrollTo.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"../Sailor/contactform/contactform.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"../Sailor/Documentation/assets/js/jquery.easing.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <link href=\"../Sailor/css/animate.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/css/flexslider.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/css/overwrite.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/css/theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/css/custom-fonts.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/css/cubeportfolio.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/plugins/flexslider/flexslider.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/blue.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/green.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/lime.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/yellow.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/sand.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/red.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/rose.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/pink.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/kissme.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/skins/default.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/plugins/revslider/rs-settings.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/plugins/revslider/extralayers.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg4.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/Documentation/assets/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg9.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg8.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg7.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg6.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg5.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg2.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg1.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../Sailor/bodybg/bg10.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <link href=\"../css/cubeportfolio.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <link href=\"../css/style.css\" rel=\"stylesheet\" />         \r\n");
      out.write("   </head>\r\n");
      out.write("    <body>\r\n");
      out.write("         <div id=\"wrapper\">\r\n");
      out.write("\t\t<!-- start header -->\r\n");
      out.write("\t\t<header>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"navbar navbar-default navbar-static-top\">\r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                                            <a class=\"navbar-brand\" href=\"index.html\"><img src=\"../images/logo_campaign.png\" alt=\"\"\r\n");
      out.write("                                                     width=\"199\" height=\"80\" /></a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"navbar-collapse collapse \">\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"active\"><a href=\"index.html\">Home</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle \" data-toggle=\"dropdown\" data-hover=\"dropdown\" data-delay=\"0\" data-close-others=\"false\">Features <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"typography.html\">Typography</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"components.html\">Components</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"pricing-box.html\">Pricing box</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown-submenu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle \" data-toggle=\"dropdown\" data-hover=\"dropdown\">Pages</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"fullwidth.html\">Full width</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"right-sidebar.html\">Right sidebar</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"left-sidebar.html\">Left sidebar</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"comingsoon.html\">Coming soon</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"search-result.html\">Search result</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"404.html\">404</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"register.html\">Register</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"login.html\">Login</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"portfolio.html\">Portfolio</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle \" data-toggle=\"dropdown\" data-hover=\"dropdown\" data-delay=\"0\" data-close-others=\"false\">Blog <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"blog-rightsidebar.html\">Blog right sidebar</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"blog-leftsidebar.html\">Blog left sidebar</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"post-rightsidebar.html\">Post right sidebar</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"post-leftsidebar.html\">Post left sidebar</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"contact.html\">Contact</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</header>\r\n");
      out.write("\t\t<!-- end header -->\r\n");
      out.write("                <br>\r\n");
      out.write("                 <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-lg-12 col-sm-12\" align=\"center\">\r\n");
      out.write("                                <h3><b>Dynamic Statewise Party</b></h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("        <form>\r\n");
      out.write("            <section id=\"contact-page\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-lg-2\"></div>\r\n");
      out.write("             ");

             SessionFactory factory;
             factory=new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();     
             
      out.write("\r\n");
      out.write("             <div class=\"col-lg-2\">State Name</div>\r\n");
      out.write("             <div class=\"col-lg-3\"><select name=\"t1\" class=\"form-control\">");

                 List li=session1.createQuery("from state").list();
                 out.print("<option value=0>Select</option>");
                 for(int i=0;i<li.size();i++){
                     state s=(state)li.get(i);
                     out.print("<option value="+s.getStateid()+">"+s.getStatenm()+"</option>");
                 }
            
      out.write("\r\n");
      out.write("                 </select></div>\r\n");
      out.write("             <div class=\"col-lg-1\">\r\n");
      out.write("             <input type=\"submit\" name=\"btn\" value=\"Check\" class=\"form-control\">\r\n");
      out.write("             </div>\r\n");
      out.write("                </div>\r\n");
      out.write("             <div class=\"row\">\r\n");
      out.write("                 <div class=\"col-lg-12\">\r\n");
      out.write("               ");

             if(request.getParameter("btn")!=null){
                int stateid;
                stateid=Integer.parseInt(request.getParameter("t1"));
                if(stateid==0)
                    out.print("Please select state");
                else
                {
//                out.print(stateid);
                li=session1.createQuery("from partymaster p where p.stateid="+stateid).list();
                out.print("<table border=2 align='center' >");
                out.print("<tr><b><th>Party Id</th><th>Party Type</th><th>Party Name</th><th>Party Address</th><th>State Name</th><th>District</th><th>City</th><th>Gst Number</th><th>Telephone Number1</th><th>Telephone Number2</th><th>Email</th><th>Contact Person</th><th>Contact Number</th></b></tr>");
                for(int i=0;i<li.size();i++){
                    partymaster p=(partymaster)li.get(i);
                    state s=(state)session1.get(state.class, p.getStateid());
                    district d=(district)session1.get(district.class, p.getDistid());
                    city c=(city)session1.get(city.class, p.getCityid());
                    out.print("<tr>");
                    out.print("<td>"+p.getPartyid()+"</td>");
                    out.print("<td>"+p.getPartytype()+"</td>");
                    out.print("<td>"+p.getPartyname()+"</td>");
                    out.print("<td>"+p.getPartyaddress()+"</td>");
                    out.print("<td>"+s.getStatenm()+"</td>");
                    out.print("<td>"+d.getDisnm()+"</td>");
                    out.print("<td>"+c.getCitynm()+"</td>");
                    out.print("<td>"+p.getPartygstno()+"</td>");
                    out.print("<td>"+p.getPartytelno1()+"</td>");
                    out.print("<td>"+p.getPartytelno2()+"</td>");
                    out.print("<td>"+p.getPartyemail()+"</td>");
                    out.print("<td>"+p.getPartycontactp()+"</td>");
                    out.print("<td>"+p.getPartycontactno()+"</td>");
                    out.print("</tr>");
                }
                out.print("</table>");
                }
             }
             
      out.write("\r\n");
      out.write("             </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </section>\r\n");
      out.write("        </form>\r\n");
      out.write("                         <footer>\r\n");
      out.write("                <div id=\"sub-footer\">\r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"copyright\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>&copy; Sailor Theme - All Right Reserved</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"credits\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\tDesigned by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"social-network\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Facebook\"><i class=\"fa fa-facebook\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Twitter\"><i class=\"fa fa-twitter\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Linkedin\"><i class=\"fa fa-linkedin\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Pinterest\"><i class=\"fa fa-pinterest\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Google plus\"><i class=\"fa fa-google-plus\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</footer>\r\n");
      out.write("\t\r\n");
      out.write("        </div>\r\n");
      out.write("                    \r\n");
      out.write("\t<a href=\"#\" class=\"scrollup\"><i class=\"fa fa-angle-up active\"></i></a>\r\n");
      out.write("\r\n");
      out.write("\t<!-- Placed at the end of the document so the pages load faster -->\r\n");
      out.write("        <script src=\"../Sailor/js/jquery.min.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/modernizr.custom.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"../Sailor/plugins/flexslider/jquery.flexslider-min.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/plugins/flexslider/flexslider.config.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/jquery.appear.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/stellar.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/classie.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/uisearch.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/jquery.cubeportfolio.min.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/google-code-prettify/prettify.js\"></script>\r\n");
      out.write("\t<script src=\"../Sailor/js/animate.js\"></script>\r\n");
      out.write("        <script src=\"../Sailor/js/custom.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
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
