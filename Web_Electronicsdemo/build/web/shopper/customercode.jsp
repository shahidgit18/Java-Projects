<%-- 
    Document   : customercode
    Created on : Feb 6, 2019, 7:38:07 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="Library.demo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer</title>
    </head>
    <body>
        <%!
            int cust_id;
            String cust_nm,cust_addr,cust_phno,cust_email,cust_pass,btn;
            demo d=new demo();
            %>
            <%
                cust_id=Integer.parseInt(request.getParameter("txtcustid"));
                cust_nm=request.getParameter("txtcustnm");
                cust_addr=request.getParameter("txtcustaddr");
                cust_phno=request.getParameter("txtcustphno");
                cust_email=request.getParameter("txtcustemail");
                cust_pass=request.getParameter("txtcustpass");
                btn=request.getParameter("btn");
                
                if(btn.equals("Insert"))
                {
                    String x=d.InsertRecord("insert into customer_master values(" + cust_id + ",'" + cust_nm + "','" + cust_addr + "','" + cust_phno + "','" + cust_email + "','" + cust_pass + "')");
                    
                     out.print(x);
                }
                if(btn.equals("Update"))
                {
                    String x=d.UpdateRecord("update customer_master set customer_nm='" +cust_nm+ "',customer_addr='" +cust_addr+ "',customer_phno='" +cust_phno+ "',customer_email='" +cust_email+ "',customer_pass='" +cust_pass+ "' where customer_id=" + cust_id);
                    out.print(x);
                }
                if(btn.equals("Delete"))
                {
                    String x=d.DeleteRecord("Delete from customer_master where customer_id="+ cust_id);
                    out.print(x);
                }
                response.sendRedirect("customerlogin.jsp");
                
                %>
    </body>
</html>
