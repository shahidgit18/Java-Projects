package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import demo.city;
import demo.district;
import java.util.List;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;

public final class Citydesign_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        String cityid,citynm;
        int max;
         SessionFactory factory=new Configuration().configure().buildSessionFactory();
                Session session1=factory.openSession();
                Transaction tx;
                public int Getnewid(){
                    tx=session1.beginTransaction();
                    List z1=session1.createQuery("select max(cityid) from city").list();
                    tx.commit();
                    if(z1.get(0)!=null){
                        max=(Integer.parseInt(z1.get(0).toString())+1);
                    }
                    else{
                        max=1;
                    }
                    return max;
                }
        
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
      out.write("        <title>City</title>\n");
      out.write("<!--             <link href=\"Sailor/Documentation/assets/css/documenter_style.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg3.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"Sailor/Documentation/assets/js/script.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"Sailor/Documentation/assets/js/jquery.scrollTo.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"Sailor/contactform/contactform.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"Sailor/Documentation/assets/js/jquery.easing.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"Sailor/css/animate.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/css/flexslider.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("-->        <link href=\"Sailor/css/overwrite.css\" rel=\"stylesheet\" type=\"text/css\"/><!--\n");
      out.write("        <link href=\"Sailor/css/theme.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/custom-fonts.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/css/cubeportfolio.min.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("        <link href=\"Sailor/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<!--        <link href=\"Sailor/plugins/flexslider/flexslider.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/blue.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/green.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/lime.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/yellow.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/skins/sand.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/red.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/rose.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/pink.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/kissme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/skins/default.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/plugins/revslider/rs-settings.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Sailor/plugins/revslider/extralayers.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg4.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("        <link href=\"Sailor/Documentation/assets/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg9.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg8.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg7.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg6.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg5.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg2.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg1.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"Sailor/bodybg/bg10.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("<!--        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/cubeportfolio.min.css\" rel=\"stylesheet\" />-->\n");
      out.write("<!--        <link href=\"css/style.css\" rel=\"stylesheet\" /> -->\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"Sailor/plugins/flexslider/flexslider.css\" rel=\"stylesheet\" media=\"screen\" />\n");
      out.write("<link href=\"Sailor/css/cubeportfolio.min.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"Sailor/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("<link id=\"t-colors\" href=\"Sailor/skins/default.css\" rel=\"stylesheet\" />\n");
      out.write("<!--<link id=\"bodybg\" href=\"Sailor/bodybg/bg1.css\" rel=\"stylesheet\" type=\"text/css\" />-->\n");
      out.write("<script>\n");
      out.write("    function formvalidator(){\n");
      out.write("        var disid,citynm;\n");
      out.write("        citynm=document.getElementById(\"citynm\").value;\n");
      out.write("        disid=document.getElementById(\"disid\").value;\n");
      out.write("        if(notEmpty(disid,\"Please Choose District\"))\n");
      out.write("        if(notEmpty(citynm,\"Enter City Name\") && isAlphabet(citynm,\"Numbers are not allowed\"))\n");
      out.write("        {\n");
      out.write("            alert(successfull);\n");
      out.write("            return true;\n");
      out.write("        }\n");
      out.write("        return false;\n");
      out.write("        }\n");
      out.write("        function notEmpty(element,helpmessage){\n");
      out.write("            if(element.length==0){\n");
      out.write("                alert(helpmessage);\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            return true;\n");
      out.write("        }\n");
      out.write("        function isAlphabet(element,helpmessage){\n");
      out.write("            var alphaExp= /^[a-zA-Z- -]+$/;\n");
      out.write("            if(element.match(alphaExp)){\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            alert(helpmessage);\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("        function isdelete1(){\n");
      out.write("            var x=confirm(\"You want to delete\");\n");
      out.write("            return x;\n");
      out.write("        }\n");
      out.write("    \n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write(" <div id=\"wrapper\">\n");
      out.write("\t\t<!-- start header -->\n");
      out.write("\t\t<header>\n");
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
      out.write("                            <div class=\"col-lg-12 col-sm-12\" align=\"center\">\n");
      out.write("                                <h3><b>City</b></h3>\n");
      out.write("                            </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("        <form action=\"city.jsp\">\n");
      out.write("             ");
      out.write("\n");
      out.write("        \n");
      out.write("        ");

            if(request.getQueryString()!=null){
                cityid=request.getParameter("cityid");
                citynm=request.getParameter("citynm");
            }else{
                cityid=String.valueOf(Getnewid());
                citynm="";
            }
        
      out.write("\n");
      out.write("            <section id=\"contact-page\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-3\"></div>\n");
      out.write("                                <div class=\"col-lg-3 col-sm-12\"><h4><b>City Id</b></h4></div>\n");
      out.write("                                <div class=\"col-lg-6 col-sm-12\"><input type=\"text\" name=\"cityid\" readonly=\"true\" class=\"form-control\" style=\"width: 50%\" value=\"");
      out.print(cityid);
      out.write("\"/></div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-3\"></div>\n");
      out.write("                                <div class=\"col-lg-3 col-sm-12\"><h4><b>District Name</b></h4></div>\n");
      out.write("                                <div class=\"col-lg-6 col-sm-12\">");

                List li=session1.createQuery("from district").list();
                out.print("<select name='disid' id='disid' class='form-control' style='width:50%'>");
                for(int i=0;i<li.size();i++){
                     district d=(district)li.get(i);
                     out.print("<option value="+d.getDistid()+">"+d.getDisnm()+"</option>");
                     }
                 out.print("</select>");
                 
      out.write("</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-3\"></div>\n");
      out.write("                                <div class=\"col-lg-3 col-sm-12\"><h4><b>City Name</b></h4></div>\n");
      out.write("                                <div class=\"col-lg-6 col-sm-12\"><input type=\"text\" name=\"citynm\" id=\"citynm\" placeholder=\"Enter City Name\" class=\"form-control\" style=\"width: 50%\" value=\"");
      out.print(citynm);
      out.write("\"/></div>\n");
      out.write("            </div>\n");
      out.write("                      <div class=\"row\">\n");
      out.write("\n");
      out.write("                            ");
if(request.getQueryString()!=null)
                                 {
                                     
      out.write("\n");
      out.write("                                <div  class=\"col-lg-2 col-lg-offset-4 col-sm-12 col-xs-12\" >\n");
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
      out.write("            <div  class=\"col-lg-2 col-lg-offset-4 col-sm-12 col-xs-12\">\n");
      out.write("                <input type=\"submit\" name=\"btn\" class=\" btn btn-warning\" value=\"Insert\" onclick=\"return formvalidator()\"/>\n");
      out.write("            </div>\n");
      out.write("            <div  class=\"col-lg-2 col-sm-12 col-xs-12\">\n");
      out.write("            <input type=\"submit\" name=\"btn\" class=\" btn btn-warning\" value=\"Update\" disabled=\"true\"/>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-lg-2 col-sm-12 col-xs-12\">\n");
      out.write("            <input type=\"submit\" name=\"btn\" class=\" btn btn-warning\" value=\"Delete\" disabled=\"true\"/>\n");
      out.write("            </div>\n");
      out.write("             \n");
      out.write("        ");

            }
        
      out.write("</div>\n");
      out.write("        <div class=\"col-lg-12\" align=\"center\">\n");
      out.write("            ");

                li=session1.createQuery("from city").list();
                out.print("<table border=1 class='table' style='width:60%'>");
                out.print("<tr><th>Select</th><th>City Id</th><th>District Name</th><th>City Name</th></tr>");
                for(int i=0;i<li.size();i++){
                    city c=(city)li.get(i);
                    district d=(district)session1.get(district.class, c.getDistid());
                    out.print("<tr>");
                    out.print("<td>");
                    out.print("<a href='Citydesign.jsp?cityid="+c.getCityid()+"&disid="+d.getDisnm()+"&citynm="+c.getCitynm()+"'>Select</a>");
                    out.print("</td>");
                    out.print("<td>"+c.getCityid()+"</td>");
                    out.print("<td>"+d.getDisnm()+"</td>");
                    out.print("<td>"+c.getCitynm()+"</td>");
                }
                out.print("</table>");
                
      out.write("</div>\n");
      out.write("                    </div>\n");
      out.write("            </section>\n");
      out.write("        </form>\n");
      out.write("            <footer>\n");
      out.write("               <div class=\"container\">\n");
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
      out.write("               </div>\n");
      out.write("\t\t</footer>\n");
      out.write("\t</div>\n");
      out.write("                    <a href=\"#\" class=\"scrollup\"><i class=\"fa fa-angle-up active\"></i></a>\n");
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
