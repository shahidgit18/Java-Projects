package org.apache.jsp.shopper.Reports;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Library.demo;
import java.sql.*;

public final class rpt_005fcust_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Customer Report</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1> Customer List </h1>\n");
      out.write("        ");
      out.write("\n");
      out.write("          ");

                                                        
                                                 demo d=new demo();
                                                 int cust_id;
                                                 String cust_nm,cust_addr,cust_phno,cust_email,cust_pass;
                                                 rs=d.ShowGrid("select * from customer_master");
                                                 out.print("<table class=table border=1  width='70%'align=center>");
                                                 out.print("<tr bgcolor=orange>");
                                                  
                                                 out.print("<th> Id </th>");
                                                 out.print("<th> Name </th>");
                                                 out.print("<th> Address </th>");
                                                 out.print("<th> Phone no.</th>");
                                                 out.print("<th> Email </th>");
                                                 out.print("<th> Password </th>");
                                                 out.print("</tr>");
                                                    
                                                 while(rs.next())
                                                 {
                                                     int x=rs.getInt(1);
                                                 out.print("<tr>");
                                               
                                                 out.print("<td align='center'>" + x + "</td>");
                                                 out.print("<td align='center'> " + rs.getString(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(5)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(6)+ " </td>");
                                       
        
                                                 out.print(" </tr>");
                                                }
                                                    
                                                 out.print("</table>");
                                                
      out.write("                                    \n");
      out.write("        \n");
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
