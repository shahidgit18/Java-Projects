<%-- 
    Document   : state_master
    Created on : Mar 1, 2020, 5:00:26 PM
    Author     : HP
--%>

<%@page import="demo.state"%>
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
        Transaction tx=null;       
        int stateid,stateid1;
        String statenm,btn;
        stateid=Integer.parseInt(request.getParameter("stateid"));
        statenm=request.getParameter("statenm");
        btn=request.getParameter("btn");
        tx=session1.beginTransaction();
        stateid1=0;
       if(btn.equals("Insert")){
           state s=new state();
           s.setStateid(stateid);
           s.setStatenm(statenm);
           stateid1=(Integer)session1.save(s);
           out.print("Record saved"+stateid);
           tx.commit();
       }
       else if(btn.equals("Update")){
           state s=(state)session1.get(state.class, stateid);
           s.setStatenm(statenm);
           session1.update(s);
           out.print("Record Updated");
           tx.commit();
       }
       else if(btn.equals("Delete")){
           state s=(state)session1.get(state.class, stateid);
           session1.delete(s);
           out.print("Record deleted");
           tx.commit();
       }
       response.sendRedirect("state_design.jsp");
        %>
       
    </body>
</html>
