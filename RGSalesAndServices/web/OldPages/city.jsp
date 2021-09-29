<%-- 
    Document   : city
    Created on : Mar 2, 2020, 1:07:32 PM
    Author     : HP
--%>

<%@page import="demo.city"%>
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
       Session session1=factory.openSession();
       Transaction tx=session1.beginTransaction();
       int cityid,distid,cityid1;
       String citynm,btn;
       cityid=Integer.parseInt(request.getParameter("cityid"));
       distid=Integer.parseInt(request.getParameter("disid"));
       citynm=request.getParameter("citynm");
       btn=request.getParameter("btn");
       cityid1=0;
       if(btn.equals("Insert")){
           city c= new city();
           c.setCityid(cityid);
           c.setDistid(distid);
           c.setCitynm(citynm);
           cityid1=(Integer)session1.save(c);
           out.print("Record Inserted at id"+cityid);
           tx.commit();
       }
       else if(btn.equals("Update")){
           city c=(city)session1.get(city.class, cityid);
                  c.setDistid(distid);
                  c.setCitynm(citynm); 
                  session1.update(c);
                  out.print("Record updated");
                  tx.commit();
       }
       else if(btn.equals("Delete")){
           city c=(city)session1.get(city.class, cityid);
           session1.delete(c);
           out.print("Record deleted");
           tx.commit();
       }
       response.sendRedirect("Citydesign.jsp");
       %>
    </body>
</html>
