<%-- 
    Document   : orderdetailcode
    Created on : Feb 7, 2019, 9:27:18 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="Library.demo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Detail</title>
    </head>
    <body>
        <%!
            int ord_det_id,ord_id,item_id,item_rate,item_qty,item_amt;
            String btn;
            demo d=new demo();
            %>
            <%
                ord_det_id=Integer.parseInt(request.getParameter("txtorddetid"));
                ord_id=Integer.parseInt(request.getParameter("txtordid"));
                item_id=Integer.parseInt(request.getParameter("txtitemid"));
                item_rate=Integer.parseInt(request.getParameter("txtitemrate"));
                item_qty=Integer.parseInt(request.getParameter("txtitemqty"));
                item_amt=Integer.parseInt(request.getParameter("txtitemamt"));
                btn=request.getParameter("btn");
                
               if(btn.equals("Insert"))
                {
                  String x=d.InsertRecord("insert into order_detail values (" + ord_det_id+ ","+ ord_id +"," + item_id + "," + item_rate + "," + item_qty + "," + item_amt + ")");
                  out.print(x);
                
               
                }

                %>
    </body>
</html>
