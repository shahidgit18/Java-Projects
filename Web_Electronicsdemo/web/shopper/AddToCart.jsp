<%-- 
    Document   : AddToCart
    Created on : Mar 13, 2019, 11:44:34 AM
    Author     : ADMIN
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Library.demo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <%!
        demo d1=new demo();
        int itemid,itemrate,itemqty,itemamt;
        String itemnm;    
        %>
         <%
         
         ArrayList itemlist=(ArrayList)session.getAttribute("itemlist");
        if (itemlist== null) 
        {
        itemlist= new ArrayList();
        session.setAttribute("itemlist", itemlist);
         }
     
         
        ArrayList qtylist=(ArrayList)session.getAttribute("qtylist");
        if (qtylist== null) 
        {
        qtylist= new ArrayList();
        session.setAttribute("qtylist", qtylist);
         }
        
        ArrayList ratelist=(ArrayList)session.getAttribute("ratelist");
       if (ratelist== null) 
       {
        ratelist= new ArrayList();
        session.setAttribute("ratelist", ratelist);
       }
          ArrayList gstlist=(ArrayList)session.getAttribute("gstlist");
       if (gstlist== null) 
       {
        gstlist= new ArrayList();
        session.setAttribute("gstlist", gstlist);
       }
       
       String Item=(String)session.getAttribute("item");        
       String qty=request.getParameter("cmb_nm");
       String rate=(String)session.getAttribute("rate");
         String gst=(String)session.getAttribute("gst");
     out.print(gst);
        if (Item != null) 
        {
        itemlist.add(Item);
        }
       
        
       if (rate != null) 
       {
        ratelist.add(rate);
       }
       
       
       if (qtylist != null) 
        {
        qtylist.add(qty);
        }
       
       if (gstlist != null) 
        {
        gstlist.add(gst);
        }
       out.print(gstlist.get(0));
         response.sendRedirect("Search_Items.jsp?"+session.getAttribute("item_id"));
                   
       
         %>
    </body>
</html>
