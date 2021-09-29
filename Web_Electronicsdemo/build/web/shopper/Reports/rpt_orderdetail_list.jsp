<%-- 
    Document   : rpt_orderdetail_list
    Created on : Feb 14, 2019, 6:59:16 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Library.demo" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Details</title>
    </head>
    <body>
        <h1>Order Detail Report</h1>
         <a href="../adminmenu.jsp">Go To Admin Menu </a>
          <p>
        </p>
        <a href="../Home.jsp">Logout </a>
        <%!
            ResultSet rs;
            %>
          <%
                                                        
                                                 demo d=new demo();
                                                 int ord_det_id,ord_id,item_id,item_rate,item_qty,item_amt;
                                                 String btn;
                                                 rs=d.ShowGrid("select * from order_detail");
                                                 out.print("<table class=table border=1  width='70%'align=center>");
                                                 out.print("<tr bgcolor=orange>");
                                                  
                                                 out.print("<th> Order Detail Id </th>");
                                                 out.print("<th> Order Id </th>");
                                                 out.print("<th> Item Name </th>");
                                                 out.print("<th> Rate</th>");
                                                 out.print("<th> Quantity </th>");
                                                 out.print("<th> Amount </th>");
                                                 out.print("</tr>");
                                                    
                                                 while(rs.next())
                                                 {
                                                     int x=rs.getInt(1);
                                                 out.print("<tr>");
                                               
                                                 out.print("<td align='center'>" + x + "</td>");
                                                 out.print("<td align='center'> " + rs.getInt(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(5)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(6)+ " </td>");
                                       
        
                                                 out.print(" </tr>");
                                                }
                                                    
                                                 out.print("</table>");
                                                 %>
    </body>
</html>
