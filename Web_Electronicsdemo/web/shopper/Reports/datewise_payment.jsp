<%-- 
    Document   : datewise_payment
    Created on : Feb 24, 2019, 11:34:29 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="Library.demo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Date Reports</title>
    </head>
    <body>
        <h1>Date Wise Payment </h1>
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
                          
                             float GST;
                                                rs=d.ShowGrid("select pay_id,pay_date,cust_nm,pay_amt,GST,pay_grand from payment,order_master,customer_master where payment.ord_id= order_master.ord_id and order_master.cust_id= customer_master.cust_id and pay_date between '" + d1 + "' and '" + d2 + "' ");
                                               // out.print("select pay_id,pay_date,cust_nm,pay_amt,GST,pay_grand from payment,order_master,customer_master where payment.ord_id= order_master.ord_id and order_master.cust_id= customer_master.cust_id and customer_master.cust_id= and pay_date between '" + d1 + "' and '" + d2 + "' ");
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
