<%-- 
    Document   : adminlogincode
    Created on : Feb 25, 2019, 2:12:48 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Code</title>
    </head>
    <body>
        
        <%
            String user,pass;
            user=request.getParameter("txtunm");
            pass=request.getParameter("txtpass");
            if(user.equals("admin") && pass.equals("1234"))
            {
                out.print("Login Successfully");
                response.sendRedirect("adminmenu.jsp");
            }
            else
            {
               out.print("Login not Successfully"); 
                               response.sendRedirect("adminlogin.jsp");

            }
            %>
    </body>
</html>
