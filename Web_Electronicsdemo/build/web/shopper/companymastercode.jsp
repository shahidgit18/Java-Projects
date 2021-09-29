<%-- 
    Document   : companymastercode
    Created on : Feb 6, 2019, 6:58:24 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="Library.demo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Master</title>
    </head>
    <body>
        <%!
            int comp_id;
            String comp_nm,btn;
            demo d=new demo();
        %>
        <%
            comp_id=Integer.parseInt(request.getParameter("txtcompid"));
            comp_nm=request.getParameter("txtcompnm");
            btn=request.getParameter("btn");
            if(btn.equals("Insert"))
            {
                String x=d.InsertRecord("insert into company_master values(" +comp_id+ ",'"+comp_nm+"')");
                out.print (x);
            }
            if(btn.equals("Update"))
            {
                String x=d.UpdateRecord("update company_master set comp_nm='" + comp_nm+ "'where comp_id="+ comp_id);
                out.print (x);
            }
            
            if(btn.equals("Delete"))
            {
                String x=d.DeleteRecord("Delete from company_master where comp_id=" +comp_id);
                out.print (x);
            }
            
response.sendRedirect("Company_master.jsp");
        %>
    </body>
</html>
