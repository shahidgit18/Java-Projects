<%-- 
    Document   : dyn_payment_list
    Created on : Feb 19, 2019, 7:50:23 PM
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
        <h1>Customer Wise Payment List</h1>
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
                          
                             float GST;
                                                rs=d.ShowGrid("select pay_id,pay_date,cust_nm,pay_amt,GST,pay_grand from payment,order_master,customer_master where payment.ord_id= order_master.ord_id and order_master.cust_id= customer_master.cust_id and customer_master.cust_id="+x);
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
                                                     
                                                   out.print("<tr>");
                                                  
                                                  out.print("<td align='center'> " + rs.getInt(1)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getFloat(5)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(6)+ " </td>");
                                                 out.print(" </tr>");
                                                }
                                                 out.print("</table>");
              }
                                                %>
                                                </form>
    </body>
</html>
