<%-- 
    Document   : dyn_item_list
    Created on : Feb 24, 2019, 11:14:21 AM
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
        <h1>Item wise order detail</h1>
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
									
                                                  
									<label class="control-label">Item:</label>
									
                                                                        <select name="t1" class="input-xlarge">
                                                                                <option>Select</option>
                                                                                <%
                                                                                     int item_id;
                                                 String item_nm;
                                                 rs=d.ShowGrid("select * from item_master");
                                                               while(rs.next())
                                                               {
                                                                   item_id=rs.getInt(1);
                                                                   item_nm=rs.getString(2);
                                                                  
                                                               %>
                                                               <option value="<%=item_id%>"><%=item_nm%></option>
                                                              
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
                   rs=d.ShowGrid("select ord_det_id,item_nm,order_detail.item_rate,item_qty,item_amt from order_detail,item_master where  item_master.item_nm=order_detail.item_id and item_master.item_id="+x);
                                                 out.print("<table class=table border=1  width='70%'align=center>");
                                                 out.print("<tr bgcolor=orange>");
                                                  
                                                 out.print("<th> Order Detail Id </th>");
                                                 out.print("<th> Item Name </th>");
                                                 out.print("<th> Rate</th>");
                                                 out.print("<th> Quantity </th>");
                                                 out.print("<th> Amount </th>");
                                                 out.print("</tr>");
                                                    
                                                 while(rs.next())
                                                 {
                                                    
                                                 out.print("<tr>");
                                               
                                                 out.print("<td align='center'> " + rs.getInt(1)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getString(2)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(3)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(4)+ " </td>");
                                                 out.print("<td align='center'> " + rs.getInt(5)+ " </td>");
                                                
        
                                                 out.print(" </tr>");
                                                }
                                                    
                                                 out.print("</table>");
              }
                                                 %>
                  
                  
                  
                  
                  </form>
    </body>
</html>
