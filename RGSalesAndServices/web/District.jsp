<%-- 
    Document   : District
    Created on : Mar 2, 2020, 12:30:58 PM
    Author     : HP
--%>

<%@page import="demo.district"%>
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
            int distid,stateid,distid1;
            String disnm,btn;
            distid=Integer.parseInt(request.getParameter("disid"));
            stateid=Integer.parseInt(request.getParameter("stateid"));
            disnm=request.getParameter("disnm");
            btn=request.getParameter("btn");
            distid1=0;
            if(btn.equals("Insert")){
                district d=new district();
                d.setDistid(distid);
                d.setStateid(stateid);
                d.setDisnm(disnm);
                distid1=(Integer)session1.save(d);
                out.print("Record saved at"+distid);
                tx.commit();
            }
            else if(btn.equals("Update")){
                district d=(district)session1.get(district.class, distid);
                 d.setStateid(stateid);
                 d.setDisnm(disnm);
                 session1.update(d);
                 out.print("Record Updated");
                 tx.commit();
            }
            else if(btn.equals("Delete")){
                district d=(district)session1.get(district.class, distid);
                session1.delete(d);
                out.print("Record deleted");
                tx.commit();
            }
            response.sendRedirect("District_design.jsp");
        %>
    </body>
</html>
