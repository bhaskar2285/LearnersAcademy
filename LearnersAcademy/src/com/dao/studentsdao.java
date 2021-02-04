package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.school.bean.students;


public class studentsdao {


public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","mysql");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

public static int savestudents(students t){
	int status = 0;
	try{
		Connection conn = getConnection();
		PreparedStatement ps =conn.prepareStatement("insert"
				+ " into students(student_name)values(?)");
		
		ps.setString(1,t.getStudent_name());
		status=ps.executeUpdate();  
       }catch(Exception e){System.out.println(e);}  
	return status;
	}

public static List<students> getallstudents(){
	List<students> list=new ArrayList<students>();
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from students ");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			students st= new students();
			
			st.setStudent_name(rs.getString("student_name"));
			list.add(st);
			
		}  
	
	}catch(Exception e){System.out.println(e);}
	return list;
	
}
}
