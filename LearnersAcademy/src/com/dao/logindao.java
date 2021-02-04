package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.school.bean.login;

public class logindao {


public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","mysql");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  


public static boolean validatecredentials(login lg){
	boolean status=false;
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from user where email=? and password =?");
		ps.setString(1,lg.getEmail());
		ps.setString(2, lg.getPassword());
		
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	
	}catch(Exception e){System.out.println(e);}
	return status;
	
}
}
