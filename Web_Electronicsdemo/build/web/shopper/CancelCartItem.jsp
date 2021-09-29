<%-- 
    Document   : CancelCartItem
    Created on : Mar 13, 2019, 11:47:11 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <%@page import="Library.demo"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
     
       <% ArrayList items=new ArrayList();
            ArrayList cost1=new ArrayList();
            ArrayList qty1=new ArrayList();
                        ArrayList gst1=new ArrayList();

            items=(ArrayList)session.getAttribute("itemlist");
             cost1=(ArrayList)session.getAttribute("ratelist");
             qty1=(ArrayList)session.getAttribute("qtylist");
                          gst1=(ArrayList)session.getAttribute("gstlist");

             String q1=request.getQueryString();
                      if(q1!=null)
             {
                 items.remove(Integer.parseInt(q1));
                 cost1.remove(Integer.parseInt(q1));
                 qty1.remove(Integer.parseInt(q1));
                  gst1.remove(Integer.parseInt(q1));

             }


        
           response.sendRedirect("Show_Cart.jsp");
%>

    </body>
</html>
