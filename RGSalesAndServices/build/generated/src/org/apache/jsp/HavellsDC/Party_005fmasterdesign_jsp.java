package org.apache.jsp.HavellsDC;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import demo.city;
import demo.district;
import demo.state;
import demo.partymaster;
import java.util.List;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;

public final class Party_005fmasterdesign_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String  partyid,stateid,distid,cityid,partytype,partyname,partyaddress,partygstno,partytelno1,partytelno2,partyemail,partycontactp,partycontactno;
             int max;
                     SessionFactory factory=new Configuration().configure().buildSessionFactory();
                     Session session1=factory.openSession();
                     Transaction tx;
                    public int Getnewid()
                    {
                        tx=session1.beginTransaction();
                        List z1=session1.createQuery("select max(partyid)from partymaster").list();
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
      out.write("        <title>Party Master</title>\n");
      out.write("        <!--        <link href=\"Sailor/bodybg/bg10.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("        <link href=\"Sailor/css/overwrite.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("           <link href=\"Sailor/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("           <link href=\"Sailor/Documentation/assets/js/google-code-prettify/prettify.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("           <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"Sailor/plugins/flexslider/flexslider.css\" rel=\"stylesheet\" media=\"screen\" />\n");
      out.write("<link href=\"Sailor/css/cubeportfolio.min.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"Sailor/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("<link id=\"t-colors\" href=\"Sailor/skins/default.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" />   \n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function formvalidator(){\n");
      out.write("               // alert('hello');\n");
      out.write("                var partyid,stateid,distid,cityid,partytype,partyname,partyaddress,partygstno,partytelno1,partytelno2,partyemail,partycontactp,partycontactno;\n");
      out.write("                partyid=document.getElementById(\"partyid\").value;\n");
      out.write("                partytype=document.getElementById(\"partytype\").value;\n");
      out.write("               partyname=document.getElementById(\"partyname\").value;\n");
      out.write("                partyaddress=document.getElementById(\"partyaddress\").value;                     \n");
      out.write("                partygstno=document.getElementById(\"partygstno\").value;\n");
      out.write("                partytelno1=document.getElementById(\"partytelno1\").value;\n");
      out.write("                partytelno2=document.getElementById(\"partytelno2\").value;\n");
      out.write("                partyemail=document.getElementById(\"partyemail\").value;\n");
      out.write("                partycontactp=document.getElementById(\"partycontactp\").value;\n");
      out.write("                partycontactno=document.getElementById(\"partycontactno\").value;\n");
      out.write("                if(notEmpty(partyid,\"Id must be given\") && isid(partyid,\"Please enter only number for partyid\"))\n");
      out.write("                 if(notEmpty(partytype,\"Party Type Must be given\") && isAlphabet(partytype,\"Please Enter only number and characters for partytype\"))\n");
      out.write("                  if(notEmpty(partyname,\"Party Name Must be given\") && isAlphabet(partyname,\"Please Enter only Characters for partytype\"))\n");
      out.write("                        if(notEmpty(partyaddress,\"Party Address Must be given\") && isAlphanumeric(partyaddress,\"Enter only Number and Characters for Address\"))\n");
      out.write("                            if(notEmpty(partygstno,\"Party GST Number Must be given\") && gst(partygstno,\"Enter Valid Gst\"))\n");
      out.write("                                if(notEmpty(partytelno1,\"Party Telephone Number1 Must be given\") && telephone(partytelno1,\"Enter correct Number for telephone1\"))\n");
      out.write("                                    if(validmobile(partytelno2,\"Enter Correct Telephone Number\"))\n");
      out.write("                                       if(notEmpty(partyemail,\"Email Must be given\") && emailValidator(partyemail,\"Incorrect Email\"))\n");
      out.write("                                            if(notEmpty(partycontactp,\"Contact Person Must Be Given\") && isAlphabet(partycontactp,\"Enter only Character for Contact Person\"))\n");
      out.write("                                                if(notEmpty(partycontactno,\"Contact Number Must be Given\") && validphonenumber(partycontactno,\"Enter valid mobile Number\"))\n");
      out.write("                                        \n");
      out.write("                 {\n");
      out.write("                    alert(successfull);\n");
      out.write("                    return true;\n");
      out.write("                  }\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            function notEmpty(element,helpmessage){\n");
      out.write("                if(element.length==0){\n");
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
      out.write("           /* function isname(element,helpmessage) {\n");
      out.write("                var nameexp=/^[a-zA-Z- -,---.S]+$/;\n");
      out.write("                if(element.match(nameexp)){\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                alert(helpmessage);\n");
      out.write("                    return false;\n");
      out.write("                \n");
      out.write("       }*/\n");
      out.write("       \n");
      out.write("             function isAlphanumeric(element,helpmessage){\n");
      out.write("                var alphanumexp=/^[a-zA-Z0-9 -,-''-,-/-]+$/;\n");
      out.write("                    if(element.match(alphanumexp)){\n");
      out.write("                        return true;\n");
      out.write("                    }\n");
      out.write("                    alert(helpmessage);\n");
      out.write("                    return false;\n");
      out.write("            }\n");
      out.write("           /* function numeric(element,helpmessage){\n");
      out.write("               var numExp=/^[0-9]+$/;\n");
      out.write("                if(element.match(numExp)){\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                alert(helpmessage);\n");
      out.write("                return false;\n");
      out.write("            }*/\n");
      out.write("            function isAlphabet(element,helpmessage){\n");
      out.write("                var alphaExp=/^[a-zA-Z- -]+$/;\n");
      out.write("                if(element.match(alphaExp)){\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                alert(helpmessage);\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("             function float(element,helpmessage){\n");
      out.write("            var numericExpression= /^[0-9.]+$/;\n");
      out.write("            if(element.match(numericExpression))\n");
      out.write("            {\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            alert(helpmessage);\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("        function telephone(element,helmessage){\n");
      out.write("            var teleExp= /^[0-9]\\d{2,4}-\\d{6,8}$/;\n");
      out.write("            if(element.match(teleExp)){\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            alert(helmessage);\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("        function  validphonenumber(element,helpmessage){\n");
      out.write("            var mobileExp= /^[789]\\d{9}$/;\n");
      out.write("            if(element.match(mobileExp))\n");
      out.write("            {\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            alert(helpmessage);\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("        function validmobile(element, helpmessage)\n");
      out.write("        {\n");
      out.write("            if(element.length>=1){\n");
      out.write("                var mobexp= /^[789]\\d{9}$/;\n");
      out.write("                if(element.match(mobexp))\n");
      out.write("                {\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                alert(helpmessage);\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            return true;\n");
      out.write("        }\n");
      out.write("        function gst(element,helmessage){\n");
      out.write("            var gstExp=/^([0]{1}[1-9]{1}|[1-2]{1}[0-9]{1}|[3]{1}[0-7]{1})([a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}[1-9a-zA-Z]{1}[zZ]{1}[0-9a-zA-Z]{1})+$/;\n");
      out.write("            if(element.match(gstExp)){\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            alert(helmessage);\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("        function emailValidator(element,helpmessage){\n");
      out.write("            var emailExp= /^[\\w\\-\\.\\+]+\\@[a-zA-Z0-9\\.\\-]+\\.[a-zA-z0-9]{2,4}$/;\n");
      out.write("            if(element.match(emailExp))\n");
      out.write("            {\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            alert(helpmessage);\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("        function delete1(){\n");
      out.write("            var x=confirm(\"You Want to delete\");\n");
      out.write("            return x;\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\">\n");
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
      out.write("                                <h3><b>Party Master</b></h3>\n");
      out.write("                            </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            if(request.getQueryString()!=null)
            {
            partyid=request.getParameter("partyid");
            partytype=request.getParameter("partytype");
            partyname=request.getParameter("partynm");
            partyaddress=request.getParameter("partyaddress");
            stateid=request.getParameter("stateid");
            distid=request.getParameter("disid");
            cityid=request.getParameter("cityid");
            partygstno=request.getParameter("partygstno");
            partytelno1=request.getParameter("partytelno1");
            partytelno2=request.getParameter("partytelno2");
            partyemail=request.getParameter("partyemail");
            partycontactp=request.getParameter("partycontactp");
            partycontactno=request.getParameter("partycontactno");
            }
            else{
                partyid=String.valueOf(Getnewid());
                partytype="";
                partyname="";
                partyaddress="";
                stateid="";
                distid="";
                cityid="";
                partygstno="";
                partytelno1="";
                partytelno2="";
                partytelno2="";
                partyemail="";
                partycontactp="";
                partycontactno="";
            }
        
      out.write("\n");
      out.write("        ");

               SessionFactory factory;
               factory= new Configuration().configure().buildSessionFactory();
               Session session1=factory.openSession();
               Transaction tx=session1.beginTransaction();
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form action=\"Party_master.jsp\">\n");
      out.write("            <section id=\"contact-page\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-2 col-sm-12\"> <h4><b>Party Id</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"partyid\" readonly=\"true\" id=\"partyid\" placeholder=\"Enter Party Id\" class=\"form-control\" style=\"width: 70%\" value=\"");
      out.print(partyid);
      out.write("\"/></div>\n");
      out.write("                            <div class=\"col-lg-2 col-sm-12\"> <h4><b>Type</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"partytype\" id=\"partytype\" class=\"form-control\" placeholder=\"Enter Party Type\" style=\"width: 70%\" value=\"");
      out.print(partytype);
      out.write("\"/></div>\n");
      out.write("                         \n");
      out.write("                        </div>                       \n");
      out.write("                        \n");
      out.write("            <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-2 col-sm-12\"> <h4><b>Name</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" class=\"form-control\" style=\"width: 70%\" id=\"partyname\" name=\"partynm\" placeholder=\"Enter Party Name\" value=\"");
      out.print(partyname);
      out.write("\"/></div>\n");
      out.write("                            <div class=\"col-lg-2 col-sm-12\"> <h4><b>Address</b></h4></div>\n");
      out.write("<!--                            <input type=\"text\" class=\"form-control\" style=\"width: 70%\" name=\"partyaddr\" />-->\n");
      out.write("<div class=\"col-lg-4 col-sm-12\"><textarea name=\"partyaddr\" class=\"form-control\" value=\"");
      out.print(partyaddress);
      out.write("\"  id=\"partyaddress\" placeholder=\"Enter Address\" style=\"width: 70%\"> ");
      out.print( partyaddress);
      out.write("</textarea></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-2 col-sm-12\"> <h4><b>State ID</b></h4></div>\n");
      out.write("                           <div class=\"col-lg-4 col-sm-12\">");

            List li=session1.createQuery("from state").list();
            out.print("<select name='stateid' class='form-control' style='width:70%'>");
                 for(int i=0;i<li.size();i++){
                     state s=(state)li.get(i);
                     out.print("<option value="+s.getStateid()+">"+s.getStatenm()+"</option>");
                     }
                 out.print("</select>");
                 
      out.write("</div>\n");
      out.write("                 <div class=\"col-lg-2 col-sm-12\"> <h4><b>District Name</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-4 col-sm-12\">");

            li=session1.createQuery("from district").list();
            out.print("<select name='disid' class='form-control' style='width:70%'>");
                 for(int i=0;i<li.size();i++){
                     district d=(district)li.get(i);
                     out.print("<option value="+d.getDistid()+">"+d.getDisnm()+"</option>");
                     }
                 out.print("</select>");
                 
      out.write("</div>\n");
      out.write("              </div>\n");
      out.write("<!--            <input type=\"text\" name=\"cityid\" value=\"");
      out.print(cityid);
      out.write("\"/><br>-->\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-2 col-sm-12\"> <h4><b>City Name</b></h4></div>\n");
      out.write("                            <div class=\"col-lg-4 col-sm-12\">");

            li=session1.createQuery("from city").list();
            out.print("<select name='cityid' class='form-control' style='width:70%'>");
                 for(int i=0;i<li.size();i++){
                     city c=(city)li.get(i);
                     out.print("<option value="+c.getCityid()+">"+c.getCitynm()+"</option>");
                     }
                 out.print("</select>");
                 
      out.write("</div>            \n");
      out.write("            <div class=\"col-lg-2 col-sm-12\"> <h4><b>GST Number</b></h4></div>\n");
      out.write("            <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"partygstno\" class=\"form-control\" id=\"partygstno\" style=\"width: 70%\" placeholder=\"Enter Gst Number\"  value=\"");
      out.print(partygstno);
      out.write("\"/></div>\n");
      out.write("             </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-2 col-sm-12\"> <h4><b>Tele-Number1</b></h4></div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"partytelno1\" class=\"form-control\" id=\"partytelno1\" style=\"width: 70%\" placeholder=\"Enter Telephone Number1\"  value=\"");
      out.print(partytelno1);
      out.write("\"/></div>\n");
      out.write("                <div class=\"col-lg-2 col-sm-12\"> <h4><b>Tele-Number2</b></h4></div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"partytelno2\" class=\"form-control\" id=\"partytelno2\" placeholder=\"Enter Telephone Number2\" style=\"width: 70%\"  value=\"");
      out.print(partytelno2);
      out.write("\"/></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-2 col-sm-12\"> <h4><b>Email</b></h4></div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"partyemail\" class=\"form-control\" style=\"width: 70%\" id=\"partyemail\" placeholder=\"Enter Email\"  value=\"");
      out.print(partyemail);
      out.write("\"/></div>\n");
      out.write("                <div class=\"col-lg-2 col-sm-12\"> <h4><b>Contact Person</b></h4></div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"partycontactp\" class=\"form-control\" style=\"width: 70%\" id=\"partycontactp\" placeholder=\"Enter Contact Person Name\"  value=\"");
      out.print(partycontactp);
      out.write("\"/></div>\n");
      out.write("           </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-2 col-sm-12\"> <h4><b>Contact Number</b></h4></div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-12\"><input type=\"text\" name=\"partycontactno\" class=\"form-control\" style=\"width: 70%\" id=\"partycontactno\" placeholder=\"Enter Contact Number\" value=\"");
      out.print(partycontactno);
      out.write("\"/></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                            ");
if(request.getQueryString()!=null)
                                 {
                                     
      out.write("\n");
      out.write("                                <div align=\"center\" class=\"col-lg-4 col-sm-12 col-xs-12\" >\n");
      out.write("                                    <input type=\"submit\" class=\" btn btn-warning\" name=\"btn\" value=\"Insert\" disabled=\"true\"/>\n");
      out.write("                                </div>\n");
      out.write("                                   <div align=\"center\" class=\"col-lg-4 col-sm-12 col-xs-12\"> \n");
      out.write("                                       <input type=\"submit\"  class=\" btn btn-warning\" name=\"btn\" value=\"Update\"/>\n");
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
      out.write("            </div>");

               
               li=session1.createQuery("from partymaster").list();
               out.print("<table border=1 class='table' style='width=70%'>");
               out.print("<tr><th>Select</th><th>Party Id</th><th>Party Type</th><th>Party Name</th><th>Party Address</th><th>State Id</th><th>District Id</th><th>City Id</th><th>Party GstNo</th><th>Party Telephone Number1</th><th>Party Telephone Number2</th><th>Party Email</th><th>Party Contact Person</th><th>Party Contact Number</th></tr>");
               for(int i=0;i<li.size();i++){
                   partymaster p=(partymaster)li.get(i);
                  out.print("<tr>");
                  out.print("<td>");
                  out.print("<a href='Party_masterdesign.jsp?partyid="+p.getPartyid()+"&partytype="+p.getPartytype()+"&partynm="+p.getPartyname()+"&partyaddress="+p.getPartyaddress()+"&stateid="+p.getStateid()+"&disid="+p.getDistid()+"&cityid="+p.getCityid()+"&partygstno="+p.getPartygstno()+"&partytelno1="+p.getPartytelno1()+"&partytelno2="+p.getPartytelno2()+"&partyemail="+p.getPartyemail()+"&partycontactp="+p.getPartycontactp()+"&partycontactno="+p.getPartycontactno()+"'>Select</a>");
                  out.print("</td>");
                  out.print("<td>"+p.getPartyid()+"</td>");
                  out.print("<td>"+p.getPartytype()+"</td>");
                  out.print("<td>"+p.getPartyname()+"</td>");
                  out.print("<td>"+p.getPartyaddress()+"</td>");
                  out.print("<td>"+p.getStateid()+"</td>");
                  out.print("<td>"+p.getDistid()+"</td>");
                  out.print("<td>"+p.getCityid()+"</td>");
                  out.print("<td>"+p.getPartygstno()+"</td>");
                  out.print("<td>"+p.getPartytelno1()+"</td>");
                  out.print("<td>"+p.getPartytelno2()+"</td>");
                  out.print("<td>"+p.getPartyemail()+"</td>");
                  out.print("<td>"+p.getPartycontactp()+"</td>");
                  out.print("<td>"+p.getPartycontactno()+"</td>");                  
                  out.print("</tr>");
               }
               out.print("</table>");
                
      out.write("\n");
      out.write("                    \n");
      out.write("            </section>\n");
      out.write("   </form>\n");
      out.write("        \n");
      out.write("                <footer>\n");
      out.write("                \n");
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
      out.write("\t\t\t\n");
      out.write("\t\t</footer>\n");
      out.write("\t\n");
      out.write("        </div>\n");
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
      out.write("\t    </body>\n");
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
