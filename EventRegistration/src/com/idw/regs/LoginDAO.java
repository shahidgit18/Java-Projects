package com.idw.regs;

import java.sql.*;

public class LoginDAO {
	public static boolean validate(String User_name,String Pass_word){  
		boolean status=false;  
		try{  
		    Class.forName("oracle.jdbc.driver.OracleDriver");  
		    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");  
		    PreparedStatement ps=con.prepareStatement("select * from plogindetails where User_name=? and Pass_word=?");  
		    ps.setString(1,User_name);  
		    ps.setString(2,Pass_word);  
		    ResultSet rs=ps.executeQuery();  
		    status=rs.next();
		    con.close();
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		  }  
}
