<%-- 
    Document   : logout
    Created on : Mar 21, 2019, 11:41:38 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        session.invalidate();
        response.sendRedirect("Home.jsp");
        
        
        
        %>
    </body>
</html>
