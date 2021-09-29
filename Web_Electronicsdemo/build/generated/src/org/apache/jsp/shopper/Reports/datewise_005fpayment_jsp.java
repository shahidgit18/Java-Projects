package org.apache.jsp.shopper.Reports;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import Library.demo;

public final class datewise_005fpayment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            ResultSet rs;
            demo d=new demo();
            
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
      out.write("        <title>Date Reports</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Date Wise Payment </h1>\n");
      out.write("          <form align=\"center\">\n");
      out.write("        ");
      out.write("\n");
      out.write("         \n");
      out.write("                  <center>\n");
      out.write("                                                             <label class=\"control-label\">Select</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                  \n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"control-label\">From date:</label>\n");
      out.write("                                                                         \n");
      out.write("                                                                            <input type=\"Date\"  class=\"input-xlarge\"  name=\"d1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t      \n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"control-label\">To date:</label>\n");
      out.write("                                                                                <input type=\"Date\"  class=\"input-xlarge\"  name=\"d2\">\n");
      out.write("                                                                           \n");
      out.write("                                                                                \n");
      out.write("                                                                              \n");
      out.write("                  \n");
      out.write("                                                              \n");
      out.write("                                                             \n");
      out.write("                                                                        </select>\n");
      out.write("                                                                       <input tabindex=\"9\" class=\"btn btn-inverse large\" type=\"submit\" value=\"Show\" name=\"btn\"> \n");
      out.write("                                                                        </center>\n");
      out.write("                                                                        <p>\n");
      out.write("                                                                            \n");
      out.write("</p>\n");
      out.write("         ");

                                 
              if(request.getParameter("btn")!=null)
              {
                  String d1,d2;
                  d1=request.getParameter("d1");
                  
                  d2=request.getParameter("d2");
                          
                             float GST;
                                                rs=d.ShowGrid("select pay_id,pay_date,cust_nm,pay_amt,GST,pay_grand from payment,order_master,customer_master where payment.ord_id= order_master.ord_id and order_master.cust_id= customer_master.cust_id and pay_date between '" + d1 + "' and '" + d2 + "' ");
                                               // out.print("select pay_id,pay_date,cust_nm,pay_amt,GST,pay_grand from payment,order_master,customer_master where payment.ord_id= order_master.ord_id and order_master.cust_id= customer_master.cust_id and customer_master.cust_id= and pay_date between '" + d1 + "' and '" + d2 + "' ");
                                                 out.print("<table class=table border=1 width='75%' align=center>");
                                                 
                                                 out.print("<tr bgcolor=orange>"); 
                                                 out.print("<th> Payment Id </th>");
                                                 out.print("<th> Date </th>");
                                                 out.print("<th> Customer Name </th>");
                                                 out.print("<th> Amount </th>");
                                                 out.print("<th> GST </th>");
                                                 out.print("<th> Grand </th>");
                                                 out.print("</tr>");
                                                 while(rs.next())
                                                 {
                                                     
                                                   out.print("<tr>");
                                                  
                                                  out.print("<td align='center'> " + rs.getInt(1)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getFloat(5)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(6)+ " </td>");
                                                 out.print(" </tr>");
                                                }
                                                 out.print("</table>");
              }
                                                
      out.write("\n");
      out.write("                                                </form>        \n");
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
