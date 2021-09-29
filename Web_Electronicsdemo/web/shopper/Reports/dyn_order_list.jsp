<%-- 
    Document   : dyn_order_list
    Created on : Feb 24, 2019, 11:21:43 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="Library.demo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Customer Wise Order </h1>
        <a href="../adminmenu.jsp">Go To Admin Menu </a>
         <p>
        </p>
        <a href="../Home.jsp">Logout </a>
        <form align="center">
          <%!
                                                    ResultSet rs;
                                                    demo d=new demo();
                                                 %>
                                                  <center>
									<label class="control-label">Select</label>
									
                                                  
									<label class="control-label">Customer:</label>
									
                                                                        <select name="t1" class="input-xlarge">
                                                                                <option>Select</option>
                                                                                <%
                                                                                     int cust_id;
                                                 String cust_nm;
                                                 rs=d.ShowGrid("select * from customer_master");
                                                               while(rs.next())
                                                               {
                                                                   cust_id=rs.getInt(1);
                                                                   cust_nm=rs.getString(2);
                                                                  
                                                               %>
                                                               <option value="<%=cust_id%>"><%=cust_nm%></option>
                                                              
                                                              <%
                                                              }
                                                              %>
                                                                        </select>
                                                                       <input tabindex="9" class="btn btn-inverse large" type="submit" value="Show" name="btn"> 
                                                                        </center>
                                                                        <p>
                                                                            
</p>
<%
      if(request.getParameter("btn")!=null)
              {
                  String x=request.getParameter("t1");
rs=d.ShowGrid("select cust_nm,ord_date,ord_amt,item_nm,order_detail.item_rate,item_qty,item_amt from customer_master,order_master,order_detail,item_master where customer_master.cust_id= order_master.cust_id and order_detail.ord_id=order_master.ord_id and item_master.item_nm=order_detail.item_id and customer_master.cust_id= "+x);
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
                                                   
                                                   out.print("<tr>");
                                              
                                                 out.print("<td align='center'>" + rs.getString(1) + "</td>");
                                         
                                                 out.print("<td align='center'> " + rs.getDate(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(5)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(6)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(7)+ " </td>");
                                                 out.print(" </tr>");
                                                }
                                                 out.print("</table>");
                                                 }
                                                %>
    </body>
</html>
