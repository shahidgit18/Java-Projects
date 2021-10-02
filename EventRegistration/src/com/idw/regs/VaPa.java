package com.idw.regs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VaPa
 */
@WebServlet("/VaPa")
public class VaPa extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter pw=response.getWriter();
		
		String n=request.getParameter("Pausername");
		String p=request.getParameter("Papassword");
		
		if(LoginDAO.validate(n,p)) {
			RequestDispatcher rd=request.getRequestDispatcher("ParticipantEvent.html");
			rd.forward(request, response);
		}
		else
		{
			pw.println("<center><h1>Sorry Username or password is incorrect</h1></center>");
			RequestDispatcher rd=request.getRequestDispatcher("Plogin.html");
			rd.include(request, response);
		}
		pw.close();
	}

}
