package org.apache.jsp.HavellsDC;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import demo.partymaster;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;

public final class Party_005fmaster_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            SessionFactory factory;
            factory = new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx=session1.beginTransaction();
            int partyid,stateid,distid,cityid;
            String partytype,partyname,partyaddress,partygstno,partytelno1,partytelno2,partyemail,partycontactp,partycontactno,btn;
            partyid=Integer.parseInt(request.getParameter("partyid"));
            partytype=request.getParameter("partytype");
            partyname=request.getParameter("partynm");
            partyaddress=request.getParameter("partyaddr");
            stateid=Integer.parseInt(request.getParameter("stateid")); 
            distid=Integer.parseInt(request.getParameter("disid"));
            cityid=Integer.parseInt(request.getParameter("cityid"));
            partygstno=request.getParameter("partygstno");
            partytelno1=request.getParameter("partytelno1");
            partytelno2=request.getParameter("partytelno2");
            partyemail=request.getParameter("partyemail");
            partycontactp=request.getParameter("partycontactp");
            partycontactno=request.getParameter("partycontactno");
            btn=request.getParameter("btn");
            int partyid1=0;
            if(btn.equals("Insert")){
                partymaster p= new partymaster();
                p.setPartyid(partyid);
                p.setPartytype(partytype);
                p.setPartyname(partyname);
                p.setPartyaddress(partyaddress);
                p.setStateid(stateid);
                p.setDistid(distid);
                p.setCityid(cityid);
                p.setPartygstno(partygstno);
                p.setPartytelno1(partytelno1);
                p.setPartytelno2(partytelno2);
                p.setPartyemail(partyemail);
                p.setPartycontactp(partycontactp);
                p.setPartycontactno(partycontactno);
                partyid1=(Integer)session1.save(p);
                out.print("Record Inserted");
                tx.commit();
            }
            if(btn.equals("Update")){
                partymaster p=(partymaster)session1.get(partymaster.class, partyid);
                    p.setPartytype(partytype);
                    p.setPartyname(partyname);
                    p.setPartyaddress(partyaddress);
                    p.setStateid(stateid);
                    p.setDistid(distid);
                    p.setCityid(cityid);
                    p.setPartygstno(partygstno);
                    p.setPartytelno1(partytelno1);
                    p.setPartytelno2(partytelno2);
                    p.setPartyemail(partyemail);
                    p.setPartycontactp(partycontactp);
                    p.setPartycontactno(partycontactno);
                    session1.update(p);
                    out.print("Record Updated");
                    tx.commit();
            }
            if(btn.equals("Delete")){
                partymaster p=(partymaster)session1.get(partymaster.class, partyid);
                    session1.delete(p);
                    out.print("Record deleted");
                    tx.commit();
            }
            response.sendRedirect("Party_masterdesign.jsp");
        
      out.write("\n");
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
