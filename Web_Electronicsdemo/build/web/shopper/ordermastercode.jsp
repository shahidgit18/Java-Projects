<%-- 
    Document   : ordermastercode
    Created on : Feb 6, 2019, 2:56:51 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="Library.demo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Master</title>
    </head>
    <body>
        <%! 
            int ord_id,cust_id,ord_amt;
            String ord_dt,btn;
            demo d  =new demo();
            %>
            <%
                ord_id = Integer.parseInt(request.getParameter("txtordid"));
                cust_id = Integer.parseInt(request.getParameter("txtcustid"));
                ord_amt = Integer.parseInt(request.getParameter("txtordamt"));
                ord_dt = request.getParameter("txtorddt");
                btn= request.getParameter("btn");
                
                if(btn.equals("Save"))
                {
                    String x=d.InsertRecord(" insert into order_master values (" + ord_id + "," + cust_id + ",'" + ord_dt + "'," + ord_amt + ")");
                    out.print(x);
                }
                %>
                
    </body>
</html>
