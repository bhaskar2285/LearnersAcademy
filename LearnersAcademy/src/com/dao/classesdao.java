package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.school.bean.classes;


public class classesdao {
public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","mysql");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

public static int saveclasses(classes cl){
	int status = 0;
	try{
		Connection conn = getConnection();
		PreparedStatement ps =conn.prepareStatement("insert"
				+ " into classes(classes_name)values(?)");
		ps.setString(1,cl.getClass_name());
		status=ps.executeUpdate();  
       }catch(Exception e){System.out.println(e);}  
	return status;
	}

 
public static List<classes> getallclasses(){
	List<classes> list=new ArrayList<classes>();
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from classes ");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			classes cl= new classes();
			cl.setClass_name(rs.getString("classes_name"));
			list.add(cl);
			
		}  
	
	}catch(Exception e){System.out.println(e);}
	return list;
	
}

}
