package com.idw.regs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddEvent
 */
@WebServlet("/AddEvent")
public class AddEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter pw= response.getWriter();
		String a1=request.getParameter("EventNo");
		String a2=request.getParameter("EventName");
		String a3=request.getParameter("coordinatorName");
		String a4=request.getParameter("CoordinatorNo");
		String a5=request.getParameter("fee");
		String a6=request.getParameter("venue");
		String a7=request.getParameter("date");
		//Connection to Database
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String conURL = "jdbc:oracle:thin:@localhost:1521:xe";
            String user = "system";
            String pass = "root";
            Connection con = DriverManager.getConnection(conURL, user, pass);//Establish Connection
            
            Statement stmt=con.createStatement();
            String Qs="insert into Event values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"') ";
            ResultSet rs=stmt.executeQuery(Qs);
                 
            RequestDispatcher rd=request.getRequestDispatcher("CreateE.html");
            rd.include(request, response);
                 
            pw.println("<br><center><h3> Event Added</h3></center>");
            System.out.println("Added to database!");
            con.commit();
            con.close();
            }catch(Exception exe){System.out.println("Exception caught"+exe);}
        }

}
