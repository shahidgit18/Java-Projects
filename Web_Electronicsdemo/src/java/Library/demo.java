/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Library;

/**
 *
 * @author ABC
 */

import java.sql.*;

public class demo {
    
    Connection con=null;
     Statement st=null;
     ResultSet rs=null;
     
       public void OpenConn()
    {
         try
        {
         Class.forName("com.mysql.jdbc.Driver");  
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicdb","root","");  
                      }
         catch(Exception e)
         {
         
         }
    }
    
       
        public ResultSet ShowCombo(String sql)
    {  try
        {
        OpenConn();
        st=con.createStatement();
        rs=st.executeQuery(sql);
       }
        catch(Exception e)
        {
            System.out.print(e);
        }
         
        return rs;
        }
       
         public ResultSet ShowReport(String sql)
    {  try
        {
        OpenConn();
        st=con.createStatement();
        rs=st.executeQuery(sql);
       }
        catch(Exception e)
        {
            System.out.print(e);
        }
         
        return rs;
        }
    public ResultSet ShowGrid(String sql)
    {  try
        {
        OpenConn();
        st=con.createStatement();
        rs=st.executeQuery(sql);
       }
        catch(Exception e)
        {
            System.out.print(e);
        }
          
        return rs;
        }
    
    
    public String InsertRecord(String sql)
    {
        int result=0;
        try
        {
        OpenConn();
        st=con.createStatement();
        result=st.executeUpdate(sql);
        }
         catch(Exception e)
        {
            System.out.print(e);
        }
        if(result==1)
            return "Record Inserted Successfully";
        else
            return "Record not Inserted ";
    }
    
    public String UpdateRecord(String sql)
    {
        int result=0;
        try
        {
        OpenConn();
        st=con.createStatement();
        result=st.executeUpdate(sql);
        }
         catch(Exception e)
        {
            System.out.print(e);
        }
        if(result==1)
            return "Record Updated Successfully";
        else
            return "Record not Updated ";
    }
                
     public String DeleteRecord(String sql)
    {
        int result=0;
        try
        {
        OpenConn();
        st=con.createStatement();
        result=st.executeUpdate(sql);
        }
         catch(Exception e)
        {
            System.out.print(e);
        }
        if(result==1)
            return "Record Deleted Successfully";
        else
            return "Record not Deleted ";
    }
     
  
     
    public int GetNewID(String tblnm,String fieldnm)
    {
        OpenConn();
        int maxid=0;
        try
        {
             st=con.createStatement();
        rs=st.executeQuery("select max("+fieldnm+") from "+tblnm);
             if(rs.next())
             {   maxid =rs.getInt(1);
             }
        }
        catch(Exception e)
        {
            
        }
             return(maxid+1);
             }
             
}   
                 
 

