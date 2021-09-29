<%-- 
    Document   : customerlogincode
    Created on : Feb 25, 2019, 2:29:25 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="Library.demo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Login Code</title>
    </head>
    <body>
        <%
            String email,pass;
            email=request.getParameter("txtemail");
            pass=request.getParameter("txtpass");
            demo d= new demo();
            ResultSet rs=null;
            rs=d.ShowGrid("select * from customer_master where customer_email='" + email + "' and customer_pass='" + pass + "' ");
           // out.print("select * from customer_master where cust_email='" + email + "' and cust_pass='" + pass + "' ");
            if(rs.next())
            {
                out.print("Login Successful");
                session.setAttribute("cid",rs.getInt(1));
                session.setAttribute("cnm", rs.getString(2));
                session.setAttribute("caddr", rs.getString(3));
                session.setAttribute("cphone", rs.getString(4));

                response.sendRedirect("Payment.jsp");
            }
            else
            {
                out.print("Login not Successful");
                response.sendRedirect("customerlogin.jsp");

            }
            %>
    </body>
</html>
