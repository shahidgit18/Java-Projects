<%-- 
    Document   : rpt_item_list
    Created on : Feb 14, 2019, 3:20:08 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"import="Library.demo" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Item Master Report </h1>
         <a href="../adminmenu.jsp">Go To Admin Menu </a>
          <p>
        </p>
        <a href="../Home.jsp">Logout </a>
        <%!
                                                  
                                                   
                                                    ResultSet rs;
                                                 %>
                                                <%
                                                demo d=new demo();
                                                int item_id ,comp_id,item_rate,item_stock;
                                                float item_GST;
                                                String item_nm ,item_description,item_photo,btn;
                                              
                                                 rs=d.ShowGrid("select item_id,item_nm,comp_nm,item_rate,item_description,item_GST,item_stock,item_photo from company_master,item_master where company_master.comp_id=item_master.comp_id");
                                                 out.print("<table class=table border=1 width='75%' align=center>");
                                                 
                                                 out.print("<tr bgcolor=orange>"); 
                                                 out.print("<th> Item Id </th>");
                                                 out.print("<th> Name </th>");
                                                 out.print("<th> Company  </th>");
                                                 out.print("<th> Item Rate </th>");
                                                 out.print("<th> Description </th>");
                                                 out.print("<th> GST </th>");
                                                 out.print("<th> Stock </th>");
                                                 out.print("<th> Photo </th>");
                                                 out.print("</tr>");
                                                 while(rs.next())
                                                 {
                                                     int x=rs.getInt(1);
                                                   out.print("<tr>");
                                              
                                                 out.print("<td align='center'>" + x + "</td>");
                                         
                                                 out.print("<td align='center'> " + rs.getString(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(5)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getFloat(6)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(7)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(8)+ " </td>");
                                                 out.print(" </tr>");
                                                }
                                                 out.print("</table>");
                                                %>           
    </body>
</html>
