package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import demo.district;
import demo.state;
import java.util.List;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;

public final class District_005fdesign_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                 String disid,disnm;
                
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"Sailor/Documentation/assets/css/documenter_style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg3.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
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
      out.write("        <link href=\"Sailor/skins/default.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/plugins/revslider/rs-settings.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/plugins/revslider/extralayers.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg4.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/Documentation/assets/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg9.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg8.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg7.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg6.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg5.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg2.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/bodybg/bg10.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/cubeportfolio.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" />  \n");
      out.write("        <script>\n");
      out.write("            function formvalidator(){\n");
      out.write("                var disid,disnm;\n");
      out.write("                disid=document.getElementById(\"disid\").value;\n");
      out.write("                disnm=document.getElementById(\"disnm\").value;\n");
      out.write("                    if(notEmpty(disid,\"Id Must Be Given\") && isid(disid,\"Enter Only Number For District Id\"))\n");
      out.write("                        if(notEmpty(disnm,\"Name Must Be Given\") && isAlphabet(disnm,\"Enter Only Character for District Name\"))\n");
      out.write("                    {\n");
      out.write("                        alert(successfull);\n");
      out.write("                        return true;\n");
      out.write("                    }\n");
      out.write("                    return false;\n");
      out.write("            }\n");
      out.write("            function notEmpty(element,helpmessage){\n");
      out.write("                 if(element.length==0){\n");
      out.write("                    alert(helpmessage);\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            function isid(element,helpmessage){\n");
      out.write("                var idexp=/^[0-9]+$/;\n");
      out.write("                if(element.match(idexp)){\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                alert(helpmessage);\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            function isAlphabet(element,helpmessage){\n");
      out.write("                var alphaExp=/^[a-zA-Z- -]+$/;\n");
      out.write("                if(element.match(alphaExp)){\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                alert(helpmessage);\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("             function delete1(){\n");
      out.write("            var x=confirm(\"You Want to delete\");\n");
      out.write("            return x;\n");
      out.write("        }\n");
      out.write("        </script>\n");
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
      out.write("                                                 <a class=\"navbar-brand\" href=\"index.html\"><img src=\"images/logo_campaign.png\" alt=\"\"\n");
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
      out.write("\t\t<!-- end header -->\n");
      out.write("                <br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-12 col-sm-12\" align=\"center\">\n");
      out.write("                                <h2><b>District</b></h2>\n");
      out.write("                            </div>\n");
      out.write("                </div>\n");
      out.write("                ");
      out.write("\n");
      out.write("                ");

                    if(request.getQueryString()!=null){
                        disid=request.getParameter("disid");
                        disnm=request.getParameter("disnm");
                    }
                    else{
                        disid="";
                        disnm="";
                    }
                
      out.write("\n");
      out.write("        <form action=\"District.jsp\">\n");
      out.write("            ");

                SessionFactory factory;
                factory=new Configuration().configure().buildSessionFactory();
                Session session1=factory.openSession();
                Transaction tx=session1.beginTransaction();
        
      out.write("\n");
      out.write("        \n");
      out.write("        <section id=\"contact-page\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                       \n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-3\"></div>\n");
      out.write("                            <div class=\"col-lg-3 col-sm-12\"><h4><b>District Id</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-6 col-sm-12\"><input type=\"text\" name=\"disid\" class=\"form-control\" style=\"width: 50%\" id=\"disid\" value=\"");
      out.print(disid);
      out.write("\"/></div>\n");
      out.write("                        </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-3\"></div>\n");
      out.write("                            <div class=\"col-lg-3 col-sm-12\"><h4><b>State Name</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-6 col-sm-12\">");

                List li=session1.createQuery("from state").list(); 
                out.print("<select name='stateid' class='form-control' style='width:50%'>");
                 for(int i=0;i<li.size();i++){
                     state s=(state)li.get(i);
                     out.print("<option value="+s.getStateid()+">"+s.getStatenm()+"</option>");
                     }
                 out.print("</select>");
                            
      out.write("</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-3\"></div>\n");
      out.write("                            <div class=\"col-lg-3 col-sm-12\"><h4><b>District Name</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-6 col-sm-12\"><input type=\"text\" name=\"disnm\" class=\"form-control\" style=\"width: 50%\" id=\"disnm\" value=\"");
      out.print(disnm);
      out.write("\"/></div>\n");
      out.write("            </div>\n");
      out.write("                       <div class=\"row\">\n");
      out.write("\n");
      out.write("                            ");
if(request.getQueryString()!=null)
                                 {
                                     
      out.write("\n");
      out.write("                                <div class=\"col-lg-2 col-lg-offset-3 col-sm-12 col-xs-12\">\n");
      out.write("                                    <input type=\"submit\" class=\" btn btn-warning\" name=\"btn\" value=\"Insert\" disabled=\"true\"/>\n");
      out.write("                                </div>\n");
      out.write("                                   <div class=\"col-lg-2 col-sm-12 col-xs-12\"> \n");
      out.write("                                       <input type=\"submit\"  class=\" btn btn-warning\" name=\"btn\" value=\"Update\" onclick=\"return formvalidator()\"/>\n");
      out.write("                                   </div>\n");
      out.write("                                   <div class=\"col-lg-2 col-sm-12 col-xs-12\">\n");
      out.write("                                       <input type=\"submit\" class=\" btn btn-warning\" name=\"btn\"  value=\"Delete\" onclick=\"return delete1()\"/>\n");
      out.write("                                   </div>\n");
      out.write("           ");
 }
            else{

      out.write("\n");
      out.write("            <div class=\"col-lg-2 col-lg-offset-4 col-sm-12 col-xs-12\">\n");
      out.write("                <input type=\"submit\" name=\"btn\" class=\" btn btn-warning\" value=\"Insert\" onclick=\"return formvalidator()\"/>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-lg-2 col-sm-12 col-xs-12\">\n");
      out.write("            <input type=\"submit\" name=\"btn\" class=\" btn btn-warning\" value=\"Update\" disabled=\"true\"/>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-lg-2 col-sm-12 col-xs-12\">\n");
      out.write("            <input type=\"submit\" name=\"btn\" class=\" btn btn-warning\" value=\"Delete\" disabled=\"true\"/>\n");
      out.write("            </div>\n");

            }
          
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-lg-12\" align=\"center\">\n");
      out.write("                                ");

                                    li=session1.createQuery("from district").list();
                                    out.print("<table border=1 class='table' style='width:60%'>");
                                    out.print("<tr><th>Select</th><th>District Id</th><th>State Name</th><th>District Name</th></tr>");
                                    for(int i=0;i<li.size();i++)
                                    {
                                        district d=(district)li.get(i);
                                        state s=(state)session1.get(state.class, d.getStateid());
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("<a href='District_design.jsp?disid="+d.getDistid()+"&statenm="+s.getStatenm()+"&disnm="+d.getDisnm()+"'>Select</a>");
                                        out.print("</td>");
                                        out.print("<td>"+d.getDistid()+"</td>");
                                        out.print("<td>"+s.getStatenm()+"</td>");
                                        out.print("<td>"+d.getDisnm()+"</td>");
                                        out.print("</tr>");
                                    }
                                    out.print("</table>");
                                             
                                
      out.write("\n");
      out.write("                            </div>\n");
      out.write("             </div>\n");
      out.write("                </section>\n");
      out.write("        </form>\n");
      out.write("            <footer>\n");
      out.write("                <div id=\"sub-footer\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"copyright\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>&copy; Sailor Theme - All Right Reserved</p>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"credits\">\n");
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
      out.write("\t</div>\n");
      out.write("                    \n");
      out.write("                    \n");
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
      out.write("\n");
      out.write("\n");
      out.write("                    \n");
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
