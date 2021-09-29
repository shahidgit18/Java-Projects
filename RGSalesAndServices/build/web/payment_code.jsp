<%-- 
    Document   : payment
    Created on : Mar 3, 2020, 11:23:20 AM
    Author     : HP
--%>

<%@page import="demo.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
      SessionFactory factory;
      factory = new Configuration().configure().buildSessionFactory();
      Session session1 = factory.openSession();
      Transaction tx=session1.beginTransaction();
      int payid,partyid,payid1;
      String paydt,btn;
      Float payamt;
      payid=Integer.parseInt(request.getParameter("payid"));
      paydt=request.getParameter("paydt");
      partyid=Integer.parseInt(request.getParameter("partyid"));
      payamt=Float.parseFloat(request.getParameter("payamt"));
      btn=request.getParameter("btn");
      payid1=0;
      if(btn.equals("Insert")){
          payment p=new payment();
          p.setPayid(payid);
          p.setPaydt(paydt);
                     
          p.setPartyid(partyid);
          p.setPayamt(payamt);
          payid1=(Integer)session1.save(p);
          out.print("Record saved at id"+payid);
          tx.commit();
      }
      else if(btn.equals("Update")){
          payment p=(payment)session1.get(payment.class, payid);
          p.setPaydt(paydt);
          p.setPartyid(partyid);
          p.setPayamt(payamt);
          session1.update(p);
          out.print("Record Updated");
          tx.commit();
      }
      else if(btn.equals("Delete")){
          payment p=(payment)session1.get(payment.class, payid);
          session1.delete(p);
          out.print("Record Deleted");
          tx.commit();
      }
      response.sendRedirect("Payment_design.jsp");
      %>
    </body>
</html>
