package org.apache.jsp.shopper;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import Library.demo;

public final class Company_005fmaster_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                                                    ResultSet rs;
                                                 
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
      out.write("            \n");
      out.write("            <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("\n");
      out.write("function formValidator(){\n");
      out.write("\t// Make quick references to our fields\n");
      out.write("\tvar name = document.getElementById(\"txtcompnm\");\n");
      out.write("\t \n");
      out.write("\t\n");
      out.write("\t// Check each input in the order that it appears in the form!\n");
      out.write("\tif(notEmpty(name,\"Name Must be given\") && isAlphabet(name, \"Please enter only letters for your name\"))\n");
      out.write("                {\n");
      out.write("\t\t \treturn true;\n");
      out.write("\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t \n");
      out.write("\treturn false;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\n");
      out.write("function notEmpty(elem, helperMsg){\n");
      out.write("\n");
      out.write("\tif(elem.value.length == 0){\n");
      out.write("\t\talert(helperMsg);\n");
      out.write("\t\telem.focus(); // set the focus to this input\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("\treturn true;\n");
      out.write("}\n");
      out.write("\n");
      out.write("function isNumeric(elem, helperMsg){\n");
      out.write("\tvar numericExpression = /^[0-9]+$/;\n");
      out.write("\tif(elem.value.match(numericExpression)){\n");
      out.write("\t\treturn true;\n");
      out.write("\t}else{\n");
      out.write("\t\telem.value=\"\";\n");
      out.write("\t\talert(helperMsg);\n");
      out.write("\t\telem.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("function isAlphabet(elem, helperMsg){\n");
      out.write("\tvar alphaExp = /^[a-zA-Z ]+$/;\n");
      out.write("\tif(elem.value.match(alphaExp)){\n");
      out.write("\t\treturn true;\n");
      out.write("\t}else{\n");
      out.write("\t\talert(helperMsg);\n");
      out.write("\t\telem.value=\"\";\n");
      out.write("\t\telem.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("function isAlphanumeric(elem, helperMsg){\n");
      out.write("\tvar alphaExp = /^[0-9a-zA-Z ]+$/;\n");
      out.write("\tif(elem.value.match(alphaExp)){\n");
      out.write("\t\treturn true;\n");
      out.write("\t}else{\n");
      out.write("\t\talert(helperMsg);\n");
      out.write("\t\telem.value=\"\";\n");
      out.write("\t\telem.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write(" }\n");
      out.write(" \n");
      out.write("function validmobile(elem){\n");
      out.write("\tvar uInput = elem.value;\n");
      out.write("\tif(uInput.length==10){\n");
      out.write("\t\treturn true;\n");
      out.write("\t}else{\n");
      out.write("\t\talert(\"Please enter valid mobile Or Phone No\");\n");
      out.write("\t\telem.value=\"\";\n");
      out.write("\t\telem.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write(" \n");
      out.write("\n");
      out.write("function lengthRestriction(elem, min, max){\n");
      out.write("\tvar uInput = elem.value;\n");
      out.write("\tif(uInput.length >= min && uInput.length <= max){\n");
      out.write("\t\treturn true;\n");
      out.write("\t}else{\n");
      out.write("\t\talert(\"Please enter between \" +min+ \" and \" +max+ \" characters\");\n");
      out.write("\t\telem.value=\"\";\n");
      out.write("\t\telem.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("function madeSelection(elem, helperMsg){\n");
      out.write("\tif(elem.value == \"Please Choose\"){\n");
      out.write("\t\talert(helperMsg);\n");
      out.write("\t\telem.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}else{\n");
      out.write("\t\treturn true;\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("function emailValidator(elem, helperMsg){\n");
      out.write("\tvar emailExp = /^[\\w\\-\\.\\+]+\\@[a-zA-Z0-9\\.\\-]+\\.[a-zA-z0-9]{2,4}$/;\n");
      out.write("\tif(elem.value.match(emailExp)){\n");
      out.write("\t\treturn true;\n");
      out.write("\t}else{\n");
      out.write("\t\talert(helperMsg);\n");
      out.write("elem.value=\"\";\n");
      out.write("\t\telem.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
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
      out.write("    <body>\t\t\n");
      out.write("\t\t<div id=\"top-bar\" class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"span4\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"span8\">\n");
      out.write("\t\t\t\t\t<div class=\"account pull-right\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"user-menu\">\t\t\t\t\n");
      out.write("                                                    <li><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("                                                    <li><a href=\"adminlogin.jsp\">Admin</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"MainSearch.html\">Search</a></li>\t\t\t\t\t\n");
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
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t<section class=\"main-content\">\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"span3\">\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<a href=\"adminmenu.jsp\">Go To Admin Menu </a>\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"span7\">\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<h4 class=\"title\"><span class=\"text\"><strong>Company</strong> Master</span></h4>\n");
      out.write("                                                \n");
      out.write("                                                ");
      out.write("\n");
      out.write("                                                ");

                                                    demo d=new demo();
                                                    int id;String nm;
                                                    if(request.getQueryString()!=null)
                                                    {
                                                        String y=request.getQueryString();
                                                        rs=d.ShowGrid("Select * from company_master where comp_id="+y);
                                                        if(rs.next())
                                                        {
                                                            id=rs.getInt(1);
                                                            nm=rs.getString(2);
                                                            
      out.write("\n");
      out.write("                                                                       <form action=\"companymastercode.jsp\" method=\"post\" class=\"form-stacked\">\n");
      out.write("\t\t\t\t\t\t\t<fieldset>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"control-label\">ID</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"controls\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Enter Company ID\" class=\"input-xlarge\" readonly=\"true\" value=\"");
      out.print(id);
      out.write("\" name=\"txtcompid\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"control-label\">Name:</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"controls\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Enter Company name\" class=\"input-xlarge\" name=\"txtcompnm\" id=\"txtcompnm\" value=\"");
      out.print(nm);
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            \n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<hr>\n");
      out.write("                                                                <div class=\"actions\"><input tabindex=\"9\" disabled=\"true\" class=\"btn btn-inverse large\" type=\"submit\" value=\"Insert\" name=\"btn\">\n");
      out.write("                                                                    <input tabindex=\"9\" class=\"btn btn-inverse large\" type=\"submit\" onclick=\"return formValidator()\" value=\"Update\" name=\"btn\">\n");
      out.write("                                                              <input tabindex=\"9\" class=\"btn btn-inverse large\" type=\"submit\" value=\"Delete\" name=\"btn\"></div>\n");
      out.write("\t\t\t\t\t\t\t</fieldset>\n");
      out.write("                                                                        \n");
      out.write("\t\t\t\t\t\t</form>\t\n");
      out.write("                                                            \n");
      out.write("                                                            \n");
      out.write("                                                            \n");
      out.write("                                                            ");

                                                        }
                                                    }
                                                    else
{
                                                    
                                                    int maxid=d.GetNewID("company_master","comp_id");
                                                    
      out.write("\n");
      out.write("                                                <form action=\"companymastercode.jsp\" method=\"post\" class=\"form-stacked\">\n");
      out.write("\t\t\t\t\t\t\t<fieldset>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"control-label\">ID</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"controls\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Enter Company ID\" class=\"input-xlarge\" readonly=\"true\" value=\"");
      out.print(maxid);
      out.write("\" name=\"txtcompid\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"control-label\">Name:</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"controls\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Enter Company name\" class=\"input-xlarge\" id=\"txtcompnm\" name=\"txtcompnm\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            \n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<hr>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"actions\"><input tabindex=\"9\" class=\"btn btn-inverse large\" type=\"submit\" onclick=\"return formValidator()\" value=\"Insert\" name=\"btn\">\n");
      out.write("                                                                    <input tabindex=\"9\" disabled=\"true\" class=\"btn btn-inverse large\" type=\"submit\" value=\"Update\" name=\"btn\">\n");
      out.write("                                                                    <input tabindex=\"9\" class=\"btn btn-inverse large\" disabled=\"true\" type=\"submit\" value=\"Delete\" name=\"btn\"></div>\n");
      out.write("\t\t\t\t\t\t\t</fieldset>\n");
      out.write("                                                                        \n");
      out.write("\t\t\t\t\t\t</form>\t\n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                                 <div class=\"row\">\n");
      out.write("                                     <div class=\"span3\"></div>\t\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"span5\">\n");
      out.write("                                    ");

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
                                                
      out.write("                                    \n");
      out.write("                                </div>\n");
      out.write("                                 </div>\n");
      out.write("                                \n");
      out.write("\t\t\t\t\t</div>\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</section>\t\t\t\n");
      out.write("\t\t\t<section id=\"footer-bar\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"span3\">\n");
      out.write("\t\t\t\t\t\t<h4>Navigation</h4>\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"./index.html\">Homepage</a></li>  \n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"./about.html\">About Us</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"./contact.html\">Contac Us</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"./cart.html\">Your Cart</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"./register.html\">Login</a></li>\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</ul>\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"span4\">\n");
      out.write("\t\t\t\t\t\t<h4>My Account</h4>\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">My Account</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Order History</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Wish List</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Newsletter</a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"span5\">\n");
      out.write("\t\t\t\t\t\t<p class=\"logo\"><img src=\"themes/images/logo.png\" class=\"site_logo\" alt=\"\"></p>\n");
      out.write("\t\t\t\t\t\t<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>\n");
      out.write("\t\t\t\t\t\t<br/>\n");
      out.write("\t\t\t\t\t\t<span class=\"social_icons\">\n");
      out.write("\t\t\t\t\t\t\t<a class=\"facebook\" href=\"#\">Facebook</a>\n");
      out.write("\t\t\t\t\t\t\t<a class=\"twitter\" href=\"#\">Twitter</a>\n");
      out.write("\t\t\t\t\t\t\t<a class=\"skype\" href=\"#\">Skype</a>\n");
      out.write("\t\t\t\t\t\t\t<a class=\"vimeo\" href=\"#\">Vimeo</a>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</div>\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\t\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t\t<section id=\"copyright\">\n");
      out.write("\t\t\t\t<span>Copyright 2013 bootstrappage template  All right reserved.</span>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<script src=\"themes/js/common.js\"></script>\n");
      out.write("\t\t<script>\n");
      out.write("\t\t\t$(document).ready(function() {\n");
      out.write("\t\t\t\t$('#checkout').click(function (e) {\n");
      out.write("\t\t\t\t\tdocument.location.href = \"checkout.html\";\n");
      out.write("\t\t\t\t})\n");
      out.write("\t\t\t});\n");
      out.write("\t\t</script>\t\t\n");
      out.write("    </body>\n");
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
