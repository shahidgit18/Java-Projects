<%-- 
    Document   : Part_master
    Created on : Mar 2, 2020, 11:35:09 AM
    Author     : HP
--%>

<%@page import="demo.partymaster"%>
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
        %>
    </body>
</html>
