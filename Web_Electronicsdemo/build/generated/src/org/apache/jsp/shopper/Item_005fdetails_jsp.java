package org.apache.jsp.shopper;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import Library.demo;

public final class Item_005fdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


         
       demo d1=new demo();
        
        
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
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t<section class=\"main-content\">\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"span1\">\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"span10\">\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<h4 class=\"title\"><span class=\"text\"><strong>Search</strong> Items</span></h4>\n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                               ");
      out.write("\n");
      out.write("        <form name=\"frm\" action=\"AddToCart.jsp\">\n");
      out.write("          ");

                  String item_id=request.getQueryString();
                  session.setAttribute("itemid", item_id);
                 
              try
            {
                  demo d1=new demo();
        	ResultSet rs=null;
   
	rs=d1.ShowGrid("select * from Item_master where item_id="+item_id);

                 
              
            out.println("<table border=1>");
            while(rs.next())
                   {
                            
                         String itemnm=rs.getString(2);                   
                         int item_rate=rs.getInt(4);
                         String srate=String.valueOf(item_rate);
                         String item_description=rs.getString(5);
                         int gst=rs.getInt(6);
                         int item_stk=rs.getInt(7);

                         String item_photo=rs.getString(8);           

                         session.setAttribute("item",itemnm);
                         session.setAttribute("rate",srate);
                        session.setAttribute("gst",String.valueOf(gst));
                           
                         out.println("<tr height=40>"); 
                         out.println("<td  align=center>");
                         out.println("<img src=Upload/"+item_photo+" height=400 width=400></img>");
                         out.println("</td>");
                       
                         out.println("<td align=center>");
                         out.println("<table border=1 class=table align=center width=300>");
                                     

                         out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Item name:");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+itemnm+"</font>");
                         out.println("</td>");
                         out.println("</tr>");
                         
                         
                         out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Description");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+item_description+"</font>");
                         out.println("</td>");
                         out.println("</tr>");
                        
                             out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>GST");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+gst+"</font>");
                         out.println("</td>");
                         out.println("</tr>");
                         
                         out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Rate");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+item_rate+"</font>");
                         out.println("</td>");
                         out.println("</tr>"); 
                         
                         out.println("<tr height=40>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Stock Left");
                         out.println("</td>");
                         out.println("<td align=center>");
                         out.println("<font color='brown'>"+item_stk+"</font>");
                         out.println("</td>");
                         out.println("</tr>");
                         if(item_stk>0)
                         {        
                         out.println("<tr height=50>"); 
                         out.println("<td align=left>");
                         out.println("<font color='brown'><B>Select Quantity");
                         out.println("</td>");
                         out.println("<td align=center>");
                         
                         out.println("<select name=cmb_nm>");
	     for(int i=1;i<=item_stk;i++)
		{
                         out.println("<option>"+i+"</option>");
		}
                         out.println("</select></br>");
                         out.println("<input type='submit' value='Add to Cart' name='btn_nm'/>");
    
                         out.println("</td>");
                         
                         out.println("</tr>");
                         }
                         else
                         {out.println("<tr height=50>"); 
                         out.println("<td colspan=2 align=center><font color=red> Stock not available</font></td></tr>");
                         }
                                                
                        out.println("</table>");
                        out.println("<a href=Show_Cart.jsp><U>Show cart</U></a><br>");
                         
     
                        out.println("</tr>");
                          
                          
                   }
             
                       // out.println("</table>");
                      
                
            }
         
                        
           catch(Exception e)
           {
             out.println(e);  
           }
          
         
      out.write("\n");
      out.write("\n");
      out.write("                                                            \n");
      out.write("                                                            \n");
      out.write("                                                            \n");
      out.write("                                                           \n");
      out.write("                                                \n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
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
