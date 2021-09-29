<%-- 
    Document   : rpt_payment_list
    Created on : Feb 14, 2019, 7:20:41 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Library.demo" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
    </head>
    <body>
        <h1>Payment Report</h1>
        <a href="../adminmenu.jsp">Go To Admin Menu </a>
         <p>
        </p>
        <a href="../Home.jsp">Logout </a>
        <%!
                                                  
                                                   
                                                    ResultSet rs;
                                                 %>
                                                <%
                                                demo d=new demo();
                                                int pay_id,pay_amt,pay_grand;
                                                String pay_date,cust_nm,btn;
                                                float GST;
                                                rs=d.ShowGrid("select pay_id,pay_date,cust_nm,pay_amt,GST,pay_grand from payment,order_master,customer_master where payment.ord_id= order_master.ord_id && order_master.cust_id= customer_master.cust_id");
                                                 out.print("<table class=table border=1 width='75%' align=center>");
                                                 
                                                 out.print("<tr bgcolor=orange>"); 
                                                 out.print("<th> Payment Id </th>");
                                                 out.print("<th> Date </th>");
                                                 out.print("<th> Customer Name </th>");
                                                 out.print("<th> Amount </th>");
                                                 out.print("<th> GST </th>");
                                                 out.print("<th> Grand </th>");
                                                 out.print("</tr>");
                                                 while(rs.next())
                                                 {
                                                     int x=rs.getInt(1);
                                                   out.print("<tr>");
                                              
                                                 out.print("<td align='center'>" + x + "</td>");
                                         
                                                 out.print("<td align='center'> " + rs.getDate(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getFloat(5)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(6)+ " </td>");
                                                 out.print(" </tr>");
                                                }
                                                 out.print("</table>");
                                                %>
    </body>
</html>
