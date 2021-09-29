<%-- 
    Document   : itemcategory
    Created on : Feb 29, 2020, 1:00:46 PM
    Author     : HP
--%>

<%@page import="demo.itemcategory"%>
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
               factory= new Configuration().configure().buildSessionFactory();
               Session session1=factory.openSession();
               Transaction tx=session1.beginTransaction();
             int catid,catid1;
               String catnm,btn;
               catid=Integer.parseInt(request.getParameter("catid"));
               catnm=request.getParameter("catnm");
               btn=request.getParameter("btn");
               catid1=0;
               if(btn.equals("Insert")){
                   itemcategory ic=new itemcategory();
                   ic.setCatid(catid);
                   ic.setCatnm(catnm);
                   catid1=(Integer)session1.save(ic);
                   out.print("Record inserted at id"+catid);
                   tx.commit();
               }
                else if(btn.equals("Update")){
                   itemcategory ic=(itemcategory)session1.get(itemcategory.class, catid);
                   ic.setCatnm(catnm);
                   session1.update(ic);
                   out.print("Record updated");
                   tx.commit();
               }
               else if(btn.equals("Delete")){
                   itemcategory ic=(itemcategory)session1.get(itemcategory.class, catid);
                   session1.delete(ic);
                   out.print("Record deleted");
                   tx.commit();
               }
               response.sendRedirect("itemcategorydesign.jsp");
        %>
    </body>
</html>
