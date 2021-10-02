package com.idw.regs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ValidateAd")
public class ValidateAd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		
		String un = request.getParameter("Ausername"); // Fetch username
        String pwd = request.getParameter("Apassword"); // Fetch password
        response.setContentType("text/html");
        // Sets of Admin usernames & passwords
        String u1 ="A101";
        String p1 ="1234";
        
        String u2 ="A102";
        String p2 ="5678";
        
        String u3 ="A103";
        String p3 ="ABCD";
        
        String u4 ="A104";
        String p4 ="abcd";
        
		 if(pwd.equals(p1)&&un.equals(u1)){
	            RequestDispatcher rd =request.getRequestDispatcher("AdminEvent.html");
	            rd.forward(request, response);
	        }
	          else if(pwd.equals(p2)&&un.equals(u2)){
	          RequestDispatcher rd=request.getRequestDispatcher("AdminEvent.html");
	          rd.forward(request, response);  
	        }
	        else if(pwd.equals(p3)&&un.equals(u3)){
	          RequestDispatcher rd=request.getRequestDispatcher("AdminEvent.html");
	          rd.forward(request, response);  
	        }
	        else if(pwd.equals(p4)&&un.equals(u4)){
	          RequestDispatcher rd=request.getRequestDispatcher("AdminEvent.html");
	          rd.forward(request, response);  
	        }
	        // Credentials incorrect stay on that page only
	        else
	        {
	            pw.println("<center><h1>!! Please Enter Valid Username & Password for Admin !!</h1><center>");
	            RequestDispatcher rd=request.getRequestDispatcher("Alogin.html");
	            rd.include(request, response);
	        }
	        pw.close();
	     }

}
