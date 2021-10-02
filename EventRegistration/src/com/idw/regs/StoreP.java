package com.idw.regs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StoreP
 */
@WebServlet("/StoreP")
public class StoreP extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter pw=response.getWriter();
		String name=request.getParameter("Pname");
		String up=request.getParameter("Pusername");
		String pp=request.getParameter("Ppassword");
		String cp=request.getParameter("Cpassword");
		
		String a1=name;
		String a2=up;
		String a3=pp;
		String a4=cp;
		
		if(a3.equals(a4)) {
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String url= "jdbc:oracle:thin:@localhost:1521:xe";
				String user ="system";
				String pass ="root";
				
				Connection cn=DriverManager.getConnection(url, user, pass);
				Statement stmt=cn.createStatement();
				
				String Qs="insert into plogindetails values('"+a2+"','"+a3+"','"+a1+"')";
				ResultSet rs=stmt.executeQuery(Qs);
				
				RequestDispatcher rd=request.getRequestDispatcher("Plogin.html");
				rd.forward(request, response);
				cn.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}else {
			pw.println("<center><h1>!! Please enter password and confirm password correct</h1></center>");
			RequestDispatcher rd=request.getRequestDispatcher("Psignup.html");
			rd.include(request, response);
		}
	}

}
