package org.apache.jsp.shopper;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.*;
import Library.demo;

public final class salebill_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        demo d1=new demo();
        int itemid,itemrate,itemqty,itemamt;
        String itemnm;    
        
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
      out.write("\t\t\t\t\t<div class=\"span3\">\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"span7\">\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<h4 class=\"title\"><span class=\"text\"><strong> Bill</strong> </span></h4>\n");
      out.write("                                                \n");
      out.write("   \n");
      out.write("        <form>\n");
      out.write("            <table border=\"1\" width=\"100%\" align=\"center\" class=\"table\">\n");
      out.write("                <tr bgcolor=\"orange\">\n");
      out.write("               \n");
      out.write("                    <td colspan=\"2\"> <center> <font size=\"6\">Classic Electronics</font> </br> \n");
      out.write("                <font size=\"3\"> Address: Gandhi Camp,sutar mala Corner,Ichalkaranji Pin-416115 </font></br>\n");
      out.write("                        <font size=\"3\">Phone Number:9763510708</font></center>\n");
      out.write("                    </td>\n");
      out.write("                \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><font size=\"3\"><b>Name:</b>");
      out.print(session.getAttribute("cnm"));
      out.write("<br>\n");
      out.write("                <b>Address:</b>");
      out.print(session.getAttribute("caddr"));
      out.write("<br>\n");
      out.write("               <b>Phone Number:</b>");
      out.print(session.getAttribute("cphone"));
      out.write("   </font></td>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                    <td> <font size=\"3\"> <b>Id:</b>");
      out.print(session.getAttribute("pid"));
      out.write("<br>\n");
      out.write("                   \n");
      out.write("                        <b> Date:</b>");
      out.print(session.getAttribute("dt"));
      out.write("  </font> </td>\n");
      out.write("                </tr>\n");
      out.write("                       \n");
      out.write("          </table> \n");
      out.write("            ");
      out.write("\n");
      out.write("        \n");
      out.write("        ");

         ArrayList itemlist=(ArrayList)session.getAttribute("itemlist");
        if (itemlist== null) 
        {
        itemlist= new ArrayList();
        session.setAttribute("itemlist", itemlist);
         }
     
         
        ArrayList qtylist=(ArrayList)session.getAttribute("qtylist");
        if (qtylist== null) 
        {
        qtylist= new ArrayList();
        session.setAttribute("qtylist", qtylist);
         }
        
        ArrayList ratelist=(ArrayList)session.getAttribute("ratelist");
       if (ratelist== null) 
       {
        ratelist= new ArrayList();
        session.setAttribute("ratelist", ratelist);
       }
         ArrayList gstlist=(ArrayList)session.getAttribute("gstlist");
       if (gstlist== null) 
       {
        gstlist= new ArrayList();
        session.setAttribute("gstlist", gstlist);
       }
    //   out.print(gstlist.get(0));
        out.println("<table border=3 width='75%' align=center class=table>");
        out.println("<tr bgcolor='orange'><th>ID</th>");
        out.println("<th>Name</th>");
        out.println("<th>Rate</th>");
        out.println("<th>Qty</th>");
        out.println("<th>Amount</th>");
                out.println("<th>GST</th>");
                                out.println("<th>GST Amt</th>");
                out.println("<th>Total Amt</th></tr>");



        
        int amt=0,grand=0;float finaltot=0;
       for(int i=0;i<itemlist.size();i++)
       {
        out.println("<tr>");
        out.println("<td>"+(i+1)+"</td>");
             out.println("<td>"+itemlist.get(i)+"</td>");
            out.println("<td>"+ratelist.get(i)+"</td>");
             out.println("<td>"+qtylist.get(i)+"</td>");
           amt=Integer.parseInt(qtylist.get(i).toString())*Integer.parseInt(ratelist.get(i).toString());
              out.println("<td>"+amt+"</td>");
             // grand=grand+amt;
                           out.println("<td>"+gstlist.get(i)+"</td>");

             float gst=Float.parseFloat(gstlist.get(i).toString());
              
             float gstamt=(amt*gst)/100;
                         out.println("<td>"+gstamt+"</td>");
            float total=amt+gstamt;
                                     out.println("<td>"+total+"</td>");
           finaltot=finaltot+total;
           
        out.println("</tr>");
      
       }
             //   out.println("<tr><td></td><td></td><td></td><td> </td><td></td><td></td><td>Total</td><td>"+finaltot+"</td></tr>");
                session.setAttribute("gtotal",finaltot);
                out.println("<tr>");
                out.println("<td colspan=7 align='right'> <font size=6>Total Amount</font> </td><td><font size=4>"+finaltot+"/-</font></td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td colspan=8 align=left> Signature </td>");
                out.println("</tr>");
                out.println("</table>");

      out.write("\n");
      out.write("       \n");
      out.write("        </form>\n");
      out.write("<a href=\"\">Print</a></br>\n");
      out.write("   <a href=\"logout.jsp\">Logout</a> \n");
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
