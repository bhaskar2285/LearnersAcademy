package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.school.bean.class_report;

public class classreportdao {


public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","mysql");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

public static int saveclassreport(class_report  r){
	int status = 0;
	try{
		Connection conn=getConnection();
		PreparedStatement ps =conn.prepareStatement("insert"
				+ " into class_report(student_name,teacher_name,subjects_name,classes_name)values(?,?,?,?)");
		
		ps.setString(1,r.getStudent_name());
		ps.setString(2, r.getTeacher_name());
		ps.setString(3, r.getSubjects_name());
		ps.setString(4,r.getClasses_name());
		
		status=ps.executeUpdate();  
       }catch(Exception e){System.out.println(e);}  
	return status;
	}

public static List<class_report> getallclassreport(){
	List<class_report> list=new ArrayList<class_report>();
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from class_report ");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			class_report r = new class_report();
			
			
			r.setStudent_name(rs.getString("student_name"));
			r.setTeacher_name(rs.getString("teacher_name"));
		    r.setSubjects_name(rs.getString("subjects_name"));
			r.setClasses_name(rs.getString("classes_name"));
		    
		   
			list.add(r);
			
		}  
	
	}catch(Exception e){System.out.println(e);}
	return list;
	
}
}
