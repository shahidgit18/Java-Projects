<%-- 
    Document   : transport
    Created on : Mar 2, 2020, 1:30:49 PM
    Author     : HP
--%>

<%@page import="demo.transport"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transport</title>
    </head>
    <body>
        <%
            SessionFactory factory;
            factory = new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx=session1.beginTransaction();
            int transid,transid1;
            String transnm,transaddr,transphno,btn;
            transid=Integer.parseInt(request.getParameter("transid"));
             transnm=request.getParameter("transnm");
             transaddr=request.getParameter("transaddr");
             transphno=request.getParameter("transphno");
             btn=request.getParameter("btn");
             transid1=0;
             if(btn.equals("Insert")){
                 transport t=new transport();
                 t.setTransid(transid);
                 t.setTransnm(transnm);
                 t.setTransaddr(transaddr);
                 t.setTransphno(transphno);
                 transid1=(Integer)session1.save(t);
                 out.print("Record saved at id"+transid);
                 tx.commit();
             }
             else if(btn.equals("Update")){
                 transport t=(transport)session1.get(transport.class, transid);
                 t.setTransnm(transnm);
                 t.setTransaddr(transaddr);
                 t.setTransphno(transphno);
                 session1.update(t);
                 out.print("Record updated");
                 tx.commit();
             }
             else if(btn.equals("Delete")){
                 transport t=(transport)session1.get(transport.class, transid);
                 session1.delete(t);
                 out.print("Record deleted");
                 tx.commit();
             }
             response.sendRedirect("transport_design.jsp");
        %>
    </body>
</html>
