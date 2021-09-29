<%-- 
    Document   : rpt_dynamicpartywise_purchase
    Created on : Mar 14, 2020, 12:19:44 PM
    Author     : HP
--%>

<%--<%@page import="demo.transport"%>
<%@page import="demo.purchasemaster"%>
<%@page import="demo.partymaster"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dynamic Report Partywise Purchase</title>
    </head>
    <body>
        <form>
             <%
          /*   SessionFactory factory;
             factory=new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();     */
             %>
             Party Name<select name="t1" class="form-control">
                <%
             /*   List li=session1.createQuery("from partymaster").list();
                out.print("<option value=0>Select</option>");
                for(int i=0;i<li.size();i++){
                    partymaster pm=(partymaster)li.get(i);
                    out.print("<option value="+pm.getPartyid()+">"+pm.getPartyname()+"</option>");
                }*/
                %>
            </select>
                <input type="submit" name="btn" value="Check">
                <%
            /*    if(request.getParameter("btn")!=null){
                    int partyid;
                    partyid=Integer.parseInt(request.getParameter("t1"));
                    if(partyid==0)
                        out.print("Select Party Name");
                    else{
                        li=session1.createQuery("from purchasemaster p where p.partyid"+partyid).list();
                        out.print("<table border=1 align='center' >");
                        out.print("<tr><th>Purchase Id</th><th>Date</th><th>Party Name</th><th>Transaction Name</th><th>Grand Total</th></tr>");
                        for(int i=0;i<li.size();i++){
                                   purchasemaster pm=(purchasemaster)li.get(i);
                                   partymaster p=(partymaster)session1.get(partymaster.class, pm.getPartyid());
                                   transport t=(transport)session1.get(transport.class, pm.getTranid());
                                   out.print("<tr>");
                                   out.print("<td>");
                                   out.print("<a href='Purchase_masterdesign.jsp?purid="+pm.getPurid()+"&purdt="+pm.getPurdate()+"&partyid="+p.getPartyname()+"&tranid="+t.getTransnm()+"&purgrandtot="+pm.getPurgrandtot()+"'>Select</a>");
                                   out.print("</td>");
                                   out.print("<td>"+pm.getPurid()+"</td>");
                                   out.print("<td>"+pm.getPurdate()+"</td>");
                                   out.print("<td>"+p.getPartyname()+"</td>");
                                   out.print("<td>"+t.getTransnm()+"</td>");
                                   out.print("<td>"+pm.getPurgrandtot()+"</td>");
                                   out.print("</tr>");
                        }
                        out.print("</table>");
                    }
                    
                }*/
                %>                
        </form>
    </body>
</html>
