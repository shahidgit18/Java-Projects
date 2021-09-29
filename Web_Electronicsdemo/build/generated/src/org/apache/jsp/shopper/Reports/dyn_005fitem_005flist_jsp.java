package org.apache.jsp.shopper.Reports;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import Library.demo;

public final class dyn_005fitem_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Item wise order detail</h1>\n");
      out.write("        <a href=\"../adminmenu.jsp\">Go To Admin Menu </a>\n");
      out.write("        <form align=\"center\">\n");
      out.write("          ");
      out.write("\n");
      out.write("                                                  <center>\n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"control-label\">Select</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                  \n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"control-label\">Item:</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                                        <select name=\"t1\" class=\"input-xlarge\">\n");
      out.write("                                                                                <option>Select</option>\n");
      out.write("                                                                                ");

                                                                                     int item_id;
                                                 String item_nm;
                                                 rs=d.ShowGrid("select * from item_master");
                                                               while(rs.next())
                                                               {
                                                                   item_id=rs.getInt(1);
                                                                   item_nm=rs.getString(2);
                                                                  
                                                               
      out.write("\n");
      out.write("                                                               <option value=\"");
      out.print(item_id);
      out.write('"');
      out.write('>');
      out.print(item_nm);
      out.write("</option>\n");
      out.write("                                                              \n");
      out.write("                                                              ");

                                                              }
                                                              
      out.write("\n");
      out.write("                                                                        </select>\n");
      out.write("                                                                       <input tabindex=\"9\" class=\"btn btn-inverse large\" type=\"submit\" value=\"Show\" name=\"btn\"> \n");
      out.write("                                                                        </center>\n");
      out.write("                                                                        <p>\n");
      out.write("                                                                            \n");
      out.write("</p>\n");
      out.write(" ");

                                 
              if(request.getParameter("btn")!=null)
              {
                  String x=request.getParameter("t1");
                   rs=d.ShowGrid("select ord_det_id,item_nm,order_detail.item_rate,item_qty,item_amt from order_detail,item_master where  item_master.item_nm=order_detail.item_id and item_master.item_id="+x);
                                                 out.print("<table class=table border=1  width='70%'align=center>");
                                                 out.print("<tr bgcolor=orange>");
                                                  
                                                 out.print("<th> Order Detail Id </th>");
                                                 out.print("<th> Item Name </th>");
                                                 out.print("<th> Rate</th>");
                                                 out.print("<th> Quantity </th>");
                                                 out.print("<th> Amount </th>");
                                                 out.print("</tr>");
                                                    
                                                 while(rs.next())
                                                 {
                                                    
                                                 out.print("<tr>");
                                               
                                                 out.print("<td align='center'> " + rs.getInt(1)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(5)+ " </td>");
                                                
        
                                                 out.print(" </tr>");
                                                }
                                                    
                                                 out.print("</table>");
              }
                                                 
      out.write("\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                  </form>\n");
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
