<%-- 
    Document   : purdetail
    Created on : Mar 2, 2020, 8:13:40 PM
    Author     : HP
--%>

<%@page import="demo.purchasedetails"%>
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
        factory =new Configuration().configure().buildSessionFactory();
        Session session1=factory.openSession();
        Transaction tx=session1.beginTransaction();
        int purdetailid,purid,itemid,itemqty,purdetailid1;
        Float itemrate,itemamt,itemtax;
        String btn;
        purdetailid=Integer.parseInt(request.getParameter("purdetailid"));
        purid=Integer.parseInt(request.getParameter("purid"));
        itemid=Integer.parseInt(request.getParameter("itemid"));
        itemrate=Float.parseFloat(request.getParameter("itemrate"));
        itemqty=Integer.parseInt(request.getParameter("itemqty"));
        itemamt=Float.parseFloat(request.getParameter("itemamt"));
        itemtax=Float.parseFloat(request.getParameter("itemtax"));
        btn=request.getParameter("btn");
        purdetailid1=0;
        if(btn.equals("Insert")){
            purchasedetails pd=new purchasedetails();
            pd.setPurdetailid(purdetailid);
            pd.setPurid(purid);
            pd.setItemid(itemid);
            pd.setItemrate(itemrate);
            pd.setItemqty(itemqty);
            pd.setItemamt(itemamt);
            pd.setItemtax(itemtax);
            purdetailid1=(Integer)session1.save(pd);
            out.print("Record Inserted");
            tx.commit();
        }
        else if(btn.equals("Update")){
            purchasedetails pd=(purchasedetails)session1.get(purchasedetails.class, purdetailid);
            pd.setPurid(purid);
            pd.setItemid(itemid);
            pd.setItemrate(itemrate);
            pd.setItemqty(itemqty);
            pd.setItemamt(itemamt);
            pd.setItemtax(itemtax);
            session1.update(pd);
            out.print("Record Updated");
            tx.commit();
        }
        else if(btn.equals("Delete")){
            purchasedetails pd=(purchasedetails)session1.get(purchasedetails.class, purdetailid);
            session1.delete(pd);
            out.print("Record Updated");
            tx.commit();
        }
        response.sendRedirect("purchase_detaildesign.jsp");
        %>
    </body>
</html>
