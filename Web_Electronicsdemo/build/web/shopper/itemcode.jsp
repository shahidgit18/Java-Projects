<%-- 
    Document   : itemcode
    Created on : Feb 5, 2019, 2:36:04 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="Library.demo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Item code</title>
    </head>
    <body>
        <%!
             
            int item_id ,comp_id,item_rate,item_stock;
            float item_GST;
            String item_nm ,item_description,item_photo,btn;
            demo d=new demo();
            %>
            <%
               
                %>
            <%
                btn=request.getParameter("btn");
                if(btn.equals("Insert"))
                {
                    item_id=Integer.parseInt(request.getParameter("txtitid"));
                comp_id=Integer.parseInt(request.getParameter("txtcid"));
                item_rate=Integer.parseInt(request.getParameter("txtitrt"));
                item_stock=Integer.parseInt(request.getParameter("txtitstock"));
                item_GST=Float.parseFloat(request.getParameter("txtitgst"));
                item_nm=request.getParameter("txtitnm");
                item_description=request.getParameter("txtitdescp");
                item_photo=request.getParameter("txtitphoto");
                
                    String x=d.InsertRecord("insert into item_master values (" + item_id + ",'"+ item_nm +"'," + comp_id + "," + item_rate + ",'" + item_description + "'," + item_GST + ",'" + item_stock + "','" + item_photo + "')");
                  out.print(x);
                
               
                }
                if(btn.equals("Update"))
                {
                    item_id=Integer.parseInt(request.getParameter("txtitid"));
                comp_id=Integer.parseInt(request.getParameter("txtcid"));
                item_rate=Integer.parseInt(request.getParameter("txtitrt"));
                item_stock=Integer.parseInt(request.getParameter("txtitstock"));
                item_GST=Float.parseFloat(request.getParameter("txtitgst"));
                item_nm=request.getParameter("txtitnm");
                item_description=request.getParameter("txtitdescp");
                item_photo=request.getParameter("txtitphoto");
                
                    String x=d.UpdateRecord("update item_master set item_nm='" + item_nm + "',comp_id=" + comp_id +",item_rate=" + item_rate + ",item_description='" + item_description + "',item_GST='" + item_GST +"',item_stock='" + item_stock + "',item_photo='" + item_photo + "' where item_id="+item_id);
                    out.print(x);

               
                }
              if(btn.equals("Delete"))
               {
                   item_id=Integer.parseInt(request.getParameter("txtitid"));
                
                   String x=d.DeleteRecord("Delete from item_master where item_id="+item_id);
                   out.print(x);

               
               }
              response.sendRedirect("Item_Master.jsp");
              
%>
    </body>
</html>
