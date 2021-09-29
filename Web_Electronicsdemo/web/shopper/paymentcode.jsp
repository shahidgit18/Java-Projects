<%-- 
    Document   : paymentcode
    Created on : Feb 7, 2019, 9:55:21 AM
    Author     : ADMIN
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="Library.demo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
    </head>
    <body>
        <%!
            int pay_id,ord_id;
            float pay_amt,pay_grand;
            String pay_date,btn;
            float GST;
            demo d=new demo();
            %>
            <%
                pay_id=Integer.parseInt(request.getParameter("txtid"));
                                session.setAttribute("pid",pay_id);

                pay_date=request.getParameter("txtdate");
                session.setAttribute("dt",pay_date);
                ord_id=d.GetNewID("order_master", "ord_id");  //Integer.parseInt(request.getParameter("txtorderid"));
               pay_amt=Float.parseFloat(request.getParameter("txtamt"));
               pay_grand=Float.parseFloat(request.getParameter("txtgrand"));
                GST=Float.parseFloat(request.getParameter("txtgst"));
                    String x1=d.InsertRecord("insert into order_master values(" +ord_id+ ","+ session.getAttribute("cid") +",'"+pay_date+ "',"+pay_grand+ ")");
                //   out.print("Order ..."+x1);
                    ArrayList itemlist=(ArrayList)session.getAttribute("itemlist");
        
          ArrayList qtylist=(ArrayList)session.getAttribute("qtylist");
   
        
        ArrayList ratelist=(ArrayList)session.getAttribute("ratelist");
      
         ArrayList gstlist=(ArrayList)session.getAttribute("gstlist");
       
        
        
                    for(int i=0;i<itemlist.size();i++)
       {
           int amt=Integer.parseInt(ratelist.get(i).toString())*Integer.parseInt(qtylist.get(i).toString());
            String x2=d.InsertRecord("insert into order_detail values (" + (i+1)+ ","+ ord_id +",'" + itemlist.get(i) + "'," + ratelist.get(i) + "," + qtylist.get(i) + "," + amt + ")");
          //   String x2=d.InsertRecord("insert into order_details values(" +ord_id+ ","+ session.getAttribute("cid") +",'"+pay_date+ "',"+pay_grand+ ")");
             //      out.print("Order details..."+x2);
                    String x3=d.UpdateRecord("update item_master set item_stock=item_stock-" + qtylist.get(i) + " where item_nm='"+itemlist.get(i)+"'");
                    out.print("update item_master set item_stock=item_stock-" + qtylist.get(i) + " where item_nm='"+itemlist.get(i)+"'");
                    out.print("stock updated..."+x3);

                   
       }

                    String x=d.InsertRecord("insert into payment values(" +pay_id+ ",'" +pay_date+ "'," +ord_id+ "," +pay_amt+ "," +GST+ "," +pay_grand+ ")");
                   // out.print("insert into payment values(" +pay_id+ ",'" +pay_date+ "'," +ord_id+ "," +pay_amt+ "," +GST+ "," +pay_grand+ ")");
                 
                   out.print(x);
               response.sendRedirect("salebill.jsp");
                %>
    </body>
</html>
