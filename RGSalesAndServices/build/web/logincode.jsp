<%-- 
    Document   : logincode
    Created on : Mar 19, 2020, 11:42:32 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login code</title>
    </head>
    <body>
       <%
       String usernm,passw;
       usernm=request.getParameter("usernm");
       passw=request.getParameter("passw");
       if(usernm.equals("admin")&& passw.equals("admin")){
           //out.print("Login successfull");
           response.sendRedirect("admindashboard.jsp");
       }
       else{
           out.print("Login fail");
       }
        %>
    </body>
</html>
