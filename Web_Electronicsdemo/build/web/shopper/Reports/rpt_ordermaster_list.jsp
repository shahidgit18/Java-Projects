<%-- 
    Document   : rpt_ordermaster_list
    Created on : Feb 14, 2019, 7:11:08 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"import="Library.demo" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Master</title>
    </head>
    <body>
        <h1>Order Master Report</h1>
         <a href="../adminmenu.jsp">Go To Admin Menu </a>
          <p>
        </p>
        <a href="../Home.jsp">Logout </a>
        <%!
                                                  
                                                   
                                                    ResultSet rs;
                                                 %>
                                                <%
                                                demo d=new demo();
                                                int ord_amt,item_qty,item_amt,item_rate;
                                                String btn,item_nm,cust_nm;
                                                Date ord_date;
                                                rs=d.ShowGrid("select cust_nm,ord_date,ord_amt,item_nm,order_detail.item_rate,item_qty,item_amt from customer_master,order_master,order_detail,item_master where customer_master.cust_id= order_master.cust_id && order_detail.ord_id=order_master.ord_id && item_master.item_nm=order_detail.item_id");
                                                 out.print("<table class=table border=1 width='75%' align=center>");
                                                 
                                                 out.print("<tr bgcolor=orange>"); 
                                                 out.print("<th> Customer Name </th>");
                                                 out.print("<th>  Date </th>");
                                                 out.print("<th> Amount </th>");
                                                 out.print("<th> Item Name </th>");
                                                 out.print("<th> Item rate </th>");
                                                 out.print("<th> Item Qntity </th>");
                                                 out.print("<th> Item Amount </th>");
                                                 out.print("</tr>");
                                                 while(rs.next())
                                                 {
                                                     String x=rs.getString(1);
                                                   out.print("<tr>");
                                              
                                                 out.print("<td align='center'>" + x + "</td>");
                                         
                                                 out.print("<td align='center'> " + rs.getDate(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(5)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(6)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(7)+ " </td>");
                                                 out.print(" </tr>");
                                                }
                                                 out.print("</table>");
                                                %>
    </body>
</html>
