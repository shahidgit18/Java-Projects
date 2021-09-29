<%-- 
    Document   : Purchase_master
    Created on : Mar 2, 2020, 12:12:55 PM
    Author     : HP
--%>

<%@page import="demo.purchasemaster"%>
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
            Session session1 =factory.openSession();
            Transaction tx=session1.beginTransaction();
            int purid,partyid,tranid,purid1;
            String purdate,btn;
            Float purgrandtot;
            purid=Integer.parseInt(request.getParameter("purid"));
            purdate=request.getParameter("purdt");
            partyid=Integer.parseInt(request.getParameter("partyid"));
            tranid=Integer.parseInt(request.getParameter("tranid"));
            purgrandtot=Float.parseFloat(request.getParameter("purgrandtot"));
            purid1=0;
            btn=request.getParameter("btn");
            if(btn.equals("Insert")){
                purchasemaster p=new purchasemaster();
                p.setPurid(purid);
                p.setPurdate(purdate);
                p.setPartyid(partyid);
                p.setTranid(tranid);
                p.setPurgrandtot(purgrandtot);
                purid1=(Integer)session1.save(p);
                out.print("Record Inserted"+purid);
                tx.commit();
            }
            else if(btn.equals("Update")){
                purchasemaster p=(purchasemaster)session1.get(purchasemaster.class, purid);
                 p.setPurdate(purdate);
                p.setPartyid(partyid);
                p.setTranid(tranid);
                p.setPurgrandtot(purgrandtot);
                out.print("Record updated");
                tx.commit();
            }
            else if(btn.equals("Delete")){
                purchasemaster p=(purchasemaster)session1.get(purchasemaster.class, purid);
                session1.delete(p);
                out.print("Record deleted");
                tx.commit();
            }
            response.sendRedirect("Purchase_masterdesign.jsp");
        %>
    </body>
</html>
