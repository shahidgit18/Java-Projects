<%-- 
    Document   : dyn_comp_list
    Created on : Feb 17, 2019, 12:04:41 PM
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
        <h1>Company wise Item Master  List</h1>
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
									
                                                  
									<label class="control-label">Company:</label>
									
                                                                        <select name="t1" class="input-xlarge">
                                                                                <option>Select</option>
                                                                                <%
                                                                                    int id;String nm;
                                                               rs=d.ShowGrid("select * from company_master");
                                                               while(rs.next())
                                                               {
                                                                   id=rs.getInt(1);
                                                                   nm=rs.getString(2);
                                                               %>
                                                               <option value="<%=id%>"><%=nm%></option>
                                                              
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
                          
                             rs=d.ShowGrid("select item_id,item_nm,comp_nm,item_rate,item_description,item_GST,item_stock,item_photo from company_master,item_master where company_master.comp_id=item_master.comp_id and company_master.comp_id="+x);
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
                                                    
                                                   out.print("<tr>");
                                              
                                                 out.print("<td align='center'>" + rs.getInt(1) + "</td>");
                                         
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
              }
                                                %>           
                                                </form>
    </body>
</html>
