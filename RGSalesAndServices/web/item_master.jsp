<%-- 
    Document   : item_master
    Created on : Feb 29, 2020, 2:13:12 PM
    Author     : HP
--%>

<%@page import="demo.itemmaster"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            SessionFactory factory;
            factory =new Configuration().configure().buildSessionFactory();
            Session session1=factory.openSession();
            Transaction tx=session1.beginTransaction();
            int itemid,catid,itemstock;
           String itemnm,itemstockproof,mercurycontent,surgeprotection,voltagerange,thd,certification,colorrenderingindex,lamplife,colortemp,
           lighteffect,startuptime,warmuptime,switchingcycle,itemheight,itemwidth,netweight,itemcolor,itemwarrantyperiod,btn;
           Float itemrate ;
            itemid=Integer.parseInt(request.getParameter("itemid"));
            catid=Integer.parseInt(request.getParameter("catid"));
            itemnm=request.getParameter("itemnm");
            itemstockproof=request.getParameter("itemstockproof");
            mercurycontent=request.getParameter("mercurycontent");
            surgeprotection=request.getParameter("surgeprotection");
            voltagerange=request.getParameter("voltagerange");
            thd=request.getParameter("thd");
            certification=request.getParameter("certification");
            colorrenderingindex=request.getParameter("colorrenderingindex");
            lamplife=request.getParameter("lamplife");
            colortemp=request.getParameter("colortemp");
            lighteffect=request.getParameter("lighteffect");
            startuptime=request.getParameter("startuptime");
            warmuptime=request.getParameter("warmuptime");
            switchingcycle=request.getParameter("switchingcycle");
            itemheight=request.getParameter("itemheight");
            itemwidth=request.getParameter("itemwidth");
            netweight=request.getParameter("netweight");
            itemcolor=request.getParameter("itemcolor");
            itemrate=Float.parseFloat(request.getParameter("itemrate"));
            itemwarrantyperiod=request.getParameter("itemwarrantyperiod");
            itemstock=Integer.parseInt(request.getParameter("itemstock"));
            btn=request.getParameter("btn");
            int itemid1=0;
            if(btn.equals("Insert")){
                itemmaster m=new itemmaster();
                m.setItemid(itemid);
                m.setCatid(catid);
                m.setItemnm(itemnm);
                m.setItemstockproof(itemstockproof);
                m.setMercurycontent(mercurycontent);
                m.setSurgeprotection(surgeprotection);
                m.setVoltagerange(voltagerange);
                m.setThd(thd);
                m.setCertification(certification);
                m.setColorrenderingindex(colorrenderingindex);
                m.setLamplife(lamplife);
                m.setColortemp(colortemp);
                m.setLighteffect(lighteffect);
                m.setStartuptime(startuptime);
                m.setWarmuptime(warmuptime);
                m.setSwitchingcycle(switchingcycle);
                m.setItemheight(itemheight);
                m.setItemwidth(itemwidth);
                m.setNetweight(netweight);
                m.setItemcolor(itemcolor);
                m.setItemrate(itemrate);
                m.setItemwarrantyperiod(itemwarrantyperiod);
                m.setItemstock(itemstock);
                itemid1=(Integer)session1.save(m);
                out.print("Record Inserted"+itemid);
                tx.commit();
            }
            else if(btn.equals("Update")){
                itemmaster m=(itemmaster)session1.get(itemmaster.class, itemid);
                m.setCatid(catid);
                m.setItemnm(itemnm);
                m.setItemstockproof(itemstockproof);
                m.setMercurycontent(mercurycontent);
                m.setSurgeprotection(surgeprotection);
                m.setVoltagerange(voltagerange);
                m.setThd(thd);
                m.setCertification(certification);
                m.setColorrenderingindex(colorrenderingindex);
                m.setLamplife(lamplife);
                m.setColortemp(colortemp);
                m.setLighteffect(lighteffect);
                m.setStartuptime(startuptime);
                m.setWarmuptime(warmuptime);
                m.setSwitchingcycle(switchingcycle);
                m.setItemheight(itemheight);
                m.setItemwidth(itemwidth);
                m.setNetweight(netweight);
                m.setItemcolor(itemcolor);
                m.setItemrate(itemrate);
                m.setItemwarrantyperiod(itemwarrantyperiod);
                m.setItemstock(itemstock);
                session1.update(m);
                out.print("Record updated");
                tx.commit();
            }
            else if(btn.equals("Delete")){
                itemmaster m=(itemmaster)session1.get(itemmaster.class, itemid);
                session1.delete(m);
                out.print("Record Deleted");
                tx.commit();
            }
            response.sendRedirect("item_masterdesign.jsp");
        %>
    </body>
</html>
