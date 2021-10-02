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
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
	        PrintWriter out=response.getWriter();
	        //Fetchong from HTML form
	        String a1=request.getParameter("cardno");
	        String a2=request.getParameter("edate");
	        String a3=request.getParameter("cvv");
	        String a4=request.getParameter("cname");
	        String a5=request.getParameter("enum");
	        String a6=request.getParameter("ename");
	        
	        //Connection to database
	        try{
	                 Class.forName("oracle.jdbc.driver.OracleDriver");
	                 String conURL = "jdbc:oracle:thin:@localhost:1521:xe";
	                 String user = "system";
	                 String pass = "root";
	                 Connection con = DriverManager.getConnection(conURL, user, pass);
	                 Statement stmt=con.createStatement();
	                 
	                 String Qs="insert into card values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"') ";
	                 ResultSet rs=stmt.executeQuery(Qs);
	                
	                 con.close();
	                 RequestDispatcher rd=request.getRequestDispatcher("Payment.html");
	                 rd.forward(request,response);  
	                 
	                 
	            }catch(Exception exe){System.out.println("Exception caught"+exe);
	            }
	}

}
