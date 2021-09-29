package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import demo.partymaster;
import demo.purchasemaster;
import demo.itemmaster;
import demo.purchasedetails;
import java.util.List;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;

public final class purchase_005fdetaildesign_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String purdetailid,purid,itemid,itemrate,itemqty,itemamt,itemtax;
            

            int max;
            SessionFactory factory=new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx;
            public int Getnewid(){
                tx=session1.beginTransaction();
                 List z1=session1.createQuery("select max(purdetailid)from purchasedetails").list();
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Purchase Details</title>\n");
      out.write("             <link href=\"Sailor/css/overwrite.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("           <link href=\"Sailor/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("           <link href=\"Sailor/Documentation/assets/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("           <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"Sailor/plugins/flexslider/flexslider.css\" rel=\"stylesheet\" media=\"screen\" />\n");
      out.write("<link href=\"Sailor/css/cubeportfolio.min.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"Sailor/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("<link id=\"t-colors\" href=\"Sailor/skins/default.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" />   \n");
      out.write("        <script>\n");
      out.write("            function tot1()\n");
      out.write("            {\n");
      out.write("                itemrate=document.getElementById(\"itemrate\").value;\n");
      out.write("                itemqty=document.getElementById(\"itemqty\").value;\n");
      out.write("                itemtax=document.getElementById(\"itemtax\").value;\n");
      out.write("                tot=parseFloat(itemrate)*parseInt(itemqty);\n");
      out.write("                tot1=parseFloat(tot)+(parseFloat(tot)*(parseFloat(itemtax)/100))\n");
      out.write("                \n");
      out.write("                                itemamt=document.getElementById(\"itemamt\").value=tot1;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("           // tot1();\n");
      out.write("            function formvalidator(){\n");
      out.write("                var purdetailid,itemrate,itemqty,itemamt,itemtax;\n");
      out.write("                purdetailid=document.getElementById(\"purdetailid\").value;\n");
      out.write("                itemrate=document.getElementById(\"itemrate\").value;\n");
      out.write("                itemqty=document.getElementById(\"itemqty\").value;\n");
      out.write("                itemtax=document.getElementById(\"itemtax\").value;\n");
      out.write("                itemamt=document.getElementById(\"itemamt\").value;\n");
      out.write("                \n");
      out.write("                if(notEmpty(purdetailid,\"Purchase detail Id Must be given\") && isid(purdetailid,\"Please enter only number for Purchase Detail Id\"))\n");
      out.write("                    if(notEmpty(itemrate,\"Item Rate Must be given\") && numeric(itemrate,\"Please enter only Number for Item rate\"))\n");
      out.write("                        if(notEmpty(itemqty,\"Item Quntity Must Be Given\") && numeric(itemqty,\"Please enter only Number for Item rate\"))\n");
      out.write("                            if(notEmpty(itemtax,\"Item tax Must be given\") && numeric(itemtax,\"Please enter only Number for Item Tax\"))\n");
      out.write("                                if(notEmpty(itemamt,\"Item Amount Must be Given\") && numeric(itemamt,\"Please enter only Number for Item Amount\"))\n");
      out.write("                               \n");
      out.write("                   {\n");
      out.write("                     alert(successfull);\n");
      out.write("                     return true;  \n");
      out.write("                    }\n");
      out.write("                   return false;            \n");
      out.write("            }\n");
      out.write("            function notEmpty(element,helpmessage){\n");
      out.write("                if(element.length==0){\n");
      out.write("                    alert(helpmessage)\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            function numeric(element,helpmessage){\n");
      out.write("               var numExp=/^[0-9.]+$/;\n");
      out.write("                if(element.match(numExp)){\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                alert(helpmessage);\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("             function isid(element,helpmessage){\n");
      out.write("                var idexp=/^[0-9]+$/;\n");
      out.write("                if(element.match(idexp)){\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                alert(helpmessage);\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("             function delete1(){\n");
      out.write("            var x=confirm(\"You Want to delete\");\n");
      out.write("            return x;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("            </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                <div id=\"wrapper\">\n");
      out.write("\t\t<!-- start header -->\n");
      out.write("\t<header>\n");
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
      out.write("                                <h3><b>Purchase Detail</b></h3>\n");
      out.write("                            </div>\n");
      out.write("                </div>\n");
      out.write("                      <form action=\"purdetail.jsp\">\n");
      out.write("            \n");
      out.write("            ");
      out.write("\n");
      out.write("            ");

            if(request.getQueryString()!=null){
                purdetailid=request.getParameter("purdetailid");
                purid=request.getParameter("purid");
                itemid=request.getParameter("itemid");
                itemrate=request.getParameter("itemrate");
                itemqty=request.getParameter("itemqty");
                itemamt=request.getParameter("itemamt");
                itemtax=request.getParameter("itemtax");
            }
            else{
                purdetailid=String.valueOf(Getnewid());
                purid="";
                itemid="";
                itemrate="";
                itemqty="";
                itemamt="";
                itemtax="";
            }
            
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("            <section id=\"contact-page\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-2 col-sm-12\"> <h4><b>Purchase Detail Id</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"purdetailid\" class=\"form-control\"  id=\"purdetailid\" style=\"width: 70%\" value=\"");
      out.print(purdetailid);
      out.write("\" readonly=\"true\"/></div>\n");
      out.write("            <div class=\"col-lg-2 col-sm-12\"> <h4><b>Party Name</b></h4></div>\n");
      out.write("            <div class=\"col-lg-4 col-sm-12\">");

            SessionFactory factory;
            factory=new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx=session1.beginTransaction();
            int purid1;
            String partynm;
            List<Object[]> list1=session1.createQuery("select pm.partyname,p.purid from partymaster pm,purchasemaster p where p.partyid=pm.partyid").list();
                out.print("<select name='purid' class='form-control' style='width: 70%'>");
                 for(Object[] aRow:list1){
                 partynm=aRow[0].toString();
                     purid1=(Integer)aRow[1];
                 
                 out.print("<option value="+purid1+">"+"Bill No:"+purid1+"-"+partynm+"</option>");
                 }
                 out.print("</select>");
            
      out.write("</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-2 col-sm-12\"> <h4><b>Name</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-4 col-sm-12\">");

            List li=session1.createQuery("from itemmaster").list();
            out.print("<select name='itemid' class='form-control' style='width: 70%'>");
                 for(int i=0;i<li.size();i++){
                    itemmaster im =(itemmaster)li.get(i);
                     out.print("<option value="+im.getItemid()+">"+im.getItemnm()+"</option>");
                     }
                 out.print("</select>");
                 
      out.write("</div>\n");
      out.write("                 <div class=\"col-lg-2 col-sm-12\"> <h4><b> Rate</b></h4></div>\n");
      out.write("                 <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"itemrate\" id=\"itemrate\" class=\"form-control\" style=\"width: 70%\" placeholder=\"Enter Rate\" value=\"");
      out.print(itemrate);
      out.write("\"/></b></h4></div>\n");
      out.write("                        </div>    \n");
      out.write("             <div class=\"row\">\n");
      out.write("                 <div class=\"col-lg-2 col-sm-12\"> <h4><b>Quntity</b></h4></div>\n");
      out.write("                 <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"itemqty\" id=\"itemqty\" class=\"form-control\" style=\"width: 70%\" placeholder=\"Enter Quntity\" value=\"");
      out.print(itemqty);
      out.write("\"/></div>\n");
      out.write("                 <div class=\"col-lg-2 col-sm-12\"> <h4><b>Tax</b></h4></div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"itemtax\" id=\"itemtax\" class=\"form-control\" style=\"width: 70%\" placeholder=\"Enter Tax\" value=\"");
      out.print(itemtax);
      out.write("\" onchange=\"tot1()\"/></div>\n");
      out.write("             </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-2 col-sm-12\"> <h4><b>Amount</b></h4></div>\n");
      out.write("                 <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"itemamt\" id=\"itemamt\" class=\"form-control\" style=\"width: 70%\" placeholder=\"Enter Amount\" value=\"");
      out.print(itemamt);
      out.write("\"/></div>\n");
      out.write("            </div>\n");
      out.write("             \n");
      out.write("                          <div class=\"row\">\n");
      out.write("\n");
      out.write("                            ");
if(request.getQueryString()!=null)
                                 {
                                     
      out.write("\n");
      out.write("                                <div align=\"center\" class=\"col-lg-4 col-sm-12 col-xs-12\" >\n");
      out.write("                                    <input type=\"submit\" class=\" btn btn-warning\" name=\"btn\" value=\"Insert\" disabled=\"true\"/>\n");
      out.write("                                </div>\n");
      out.write("                                   <div align=\"center\" class=\"col-lg-4 col-sm-12 col-xs-12\"> \n");
      out.write("                                       <input type=\"submit\"  class=\" btn btn-warning\" name=\"btn\" value=\"Update\" onclick=\"return formvalidator()\"/>\n");
      out.write("                                   </div>\n");
      out.write("                                   <div align=\"center\" class=\"col-lg-4 col-sm-12 col-xs-12\">\n");
      out.write("                                       <input type=\"submit\" class=\" btn btn-warning\" name=\"btn\"  value=\"Delete\" onclick=\"return delete1()\"/>\n");
      out.write("                                   </div>\n");
      out.write("           ");
 }
            else{

      out.write("\n");
      out.write("            <div align=\"center\" class=\"col-lg-4 col-sm-12 col-xs-12\">\n");
      out.write("                <input type=\"submit\" name=\"btn\" class=\" btn btn-warning\" value=\"Insert\" onclick=\"return formvalidator()\"/>\n");
      out.write("            </div>\n");
      out.write("            <div align=\"center\" class=\"col-lg-4 col-sm-12 col-xs-12\">\n");
      out.write("            <input type=\"submit\" name=\"btn\" class=\" btn btn-warning\" value=\"Update\" disabled=\"true\"/>\n");
      out.write("            </div>\n");
      out.write("            <div align=\"center\" class=\"col-lg-4 col-sm-12 col-xs-12\">\n");
      out.write("            <input type=\"submit\" name=\"btn\" class=\" btn btn-warning\" value=\"Delete\" disabled=\"true\"/>\n");
      out.write("            </div>\n");

            }
          
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                ");

            li=session1.createQuery("from purchasedetails").list();
            out.print("<table border=2 class='table'" );
            out.print("<tr><th>Select</th><th>Purchase Detail Id</th><th>Party Name</th><th>Item Name</th><th>Rate</th><th>Quntity</th><th>Tax</th><th>Amount</th></tr>");
            for(int i=0;i<li.size();i++){
                purchasedetails pd=(purchasedetails)li.get(i);
                partymaster pc=(partymaster)session1.get(partymaster.class, pd.getPurid());
                purchasemaster pm=(purchasemaster)session1.get(purchasemaster.class, pd.getPurid());
                itemmaster im=(itemmaster)session1.get(itemmaster.class, pd.getItemid());
                out.print("<tr>");
                out.print("<td>");
                out.print("<a href='purchase_detaildesign.jsp?purdetailid="+pd.getPurdetailid()+"&purid="+pm.getPurid()+"&itemid="+im.getItemnm()+"&itemrate="+pd.getItemrate()+"&itemqty="+pd.getItemqty()+"&itemamt="+pd.getItemamt()+"&itemamt="+pd.getItemamt()+"&itemtax="+pd.getItemtax()+"'>Select</a>");
                out.print("</td>");
                out.print("<td>"+pd.getPurdetailid()+"</td>");
                out.print("<td>"+pc.getPartyname()+"</td>");
                out.print("<td>"+im.getItemnm()+"</td>");
                out.print("<td>"+pd.getItemrate()+"</td>");
                out.print("<td>"+pd.getItemqty()+"</td>");
                out.print("<td>"+pd.getItemtax()+"</td>");
                out.print("<td>"+pd.getItemamt()+"</td>");                
                out.print("</tr>");
            }
            out.print("</table>");
            
      out.write("\n");
      out.write("            </div>\n");
      out.write("            </section>\n");
      out.write("                      </form>  \n");
      out.write("            <footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"copyright\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>&copy; Sailor Theme - All Right Reserved</p>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"credits\">\n");
      out.write("\t\t\t\n");
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
      out.write("\t\t\t\n");
      out.write("\t\t</footer>\n");
      out.write("                       \n");
      out.write("        </div>                   \n");
      out.write("\t<a href=\"#\" class=\"scrollup\"><i class=\"fa fa-angle-up active\"></i></a>\n");
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
      out.write("   </body>\n");
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
