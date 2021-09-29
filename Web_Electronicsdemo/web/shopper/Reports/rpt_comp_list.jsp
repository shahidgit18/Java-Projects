<%-- 
    Document   : rpt_comp_list
    Created on : Feb 14, 2019, 3:04:32 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Library.demo" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company master Report</title>
    </head>
    <body>
        
            <h1>Company List Reports</h1>
             <a href="../adminmenu.jsp">Go To Admin Menu </a>
              <p>
        </p>
        <a href="../Home.jsp">Logout </a>
          <%!
                                                    ResultSet rs;
                                                 %>
                                                    <%
                                                        
                                                        demo d=new demo();
                                                    int id;String nm;
                                                    rs=d.ShowGrid("select * from company_master");
                                                 out.print("<table class=table border=1  width='35%'align=center>");
                                                 out.print("<tr bgcolor=orange>");
                                                  
                                                out.print("<th> Id </th>");
                                                 out.print("<th> Name </th>");
                                                 out.print("</tr>");
                                                    
                                                 while(rs.next())
                                                 {
                                                     int x=rs.getInt(1);
                                                 out.print("<tr>");
                                               
                                                 out.print("<td align='center'>" + x + "</td>");
                                                 out.print("<td align='center'> " + rs.getString(2)+ " </td>");
                        
                                                out.print(" </tr>");
                                                }
                                                    
                                                out.print("</table>");
                                                %>                                    
        
    </body>
</html>
