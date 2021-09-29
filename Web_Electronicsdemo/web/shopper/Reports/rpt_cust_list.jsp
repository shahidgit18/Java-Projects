<%-- 
    Document   : rpt_cust_list
    Created on : Feb 14, 2019, 3:16:56 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Library.demo" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Report</title>
    </head>
    <body>
        <h1> Customer List </h1>
         <a href="../adminmenu.jsp">Go To Admin Menu </a>
          <p>
        </p>
        <a href="../Home.jsp">Logout </a>
        <%!
            ResultSet rs;
            %>
          <%
                                                        
                                                 demo d=new demo();
                                                 int cust_id;
                                                 String cust_nm,cust_addr,cust_phno,cust_email,cust_pass;
                                                 rs=d.ShowGrid("select * from customer_master");
                                                 out.print("<table class=table border=1  width='70%'align=center>");
                                                 out.print("<tr bgcolor=orange>");
                                                  
                                                 out.print("<th> Id </th>");
                                                 out.print("<th> Name </th>");
                                                 out.print("<th> Address </th>");
                                                 out.print("<th> Phone no.</th>");
                                                 out.print("<th> Email </th>");
                                                 out.print("<th> Password </th>");
                                                 out.print("</tr>");
                                                    
                                                 while(rs.next())
                                                 {
                                                     int x=rs.getInt(1);
                                                 out.print("<tr>");
                                               
                                                 out.print("<td align='center'>" + x + "</td>");
                                                 out.print("<td align='center'> " + rs.getString(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(5)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(6)+ " </td>");
                                       
        
                                                 out.print(" </tr>");
                                                }
                                                    
                                                 out.print("</table>");
                                                %>                                    
        
    </body>
</html>
