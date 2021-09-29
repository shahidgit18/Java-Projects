<%-- 
    Document   : datewise_ordermaster
    Created on : Feb 24, 2019, 12:09:39 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="java.sql.*" import="Library.demo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Date wise report</title>
    </head>
    <body>
        <h1>Date Wise Order Master</h1>
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
									
                                                  
									<label class="control-label">From date:</label>
                                                                         
                                                                            <input type="Date"  class="input-xlarge"  name="d1">
									      
									<label class="control-label">To date:</label>
                                                                                <input type="Date"  class="input-xlarge"  name="d2">
                                                                           
                                                                                
                                                                              
                  
                                                              
                                                             
                                                                        </select>
                                                                       <input tabindex="9" class="btn btn-inverse large" type="submit" value="Show" name="btn"> 
                                                                        </center>
                                                                        <p>
                                                                            
</p>
<%
     if(request.getParameter("btn")!=null)
              {
                  String d1,d2;
                  d1=request.getParameter("d1");
                  
                  d2=request.getParameter("d2");
    
                                            rs=d.ShowGrid("select cust_nm,ord_date,ord_amt,item_nm,order_detail.item_rate,item_qty,item_amt from customer_master,order_master,order_detail,item_master where customer_master.cust_id= order_master.cust_id && order_detail.ord_id=order_master.ord_id && item_master.item_nm=order_detail.item_id and ord_date between '" + d1 + "' and '" + d2 + "' ");
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
              }
                                                %>
          </form>
    </body>
</html>
