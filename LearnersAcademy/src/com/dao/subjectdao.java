package com.dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.school.bean.subjects;



public class subjectdao {

public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","mysql");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

public static int savesubjects(subjects s){
	int status = 0;
	try{
		Connection conn = getConnection();
		PreparedStatement ps =conn.prepareStatement("insert"
				+ " into subjects(subjects_name)values(?)");
		ps.setString(1,s.getSubject_name());
		status=ps.executeUpdate();  
       }catch(Exception e){System.out.println(e);}  
	return status;
	}

public static List<subjects> getallsubjects(){
	List<subjects> list=new ArrayList<subjects>();
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from subjects ");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			subjects s= new subjects();
			s.setSubject_name(rs.getString("subjects_name"));
			list.add(s);
			
		}  
	
	}catch(Exception e){System.out.println(e);}
	return list;
	
}
    
}
