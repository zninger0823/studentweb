package DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import beans.Course;
import beans.Student;
 
public class CourseDAO {
	private static Connection conn=null;
	static void fun2() throws SQLException{
		
		ComboPooledDataSource dataSource = new ComboPooledDataSource();
		//得到连接
				 conn = dataSource.getConnection();
				
	}
	public static Course findclasses(String courseid) throws Exception{//查找课程
	fun2();
	Statement state =null;
	ResultSet rs = null;
	Course course=new Course();
	try{
	String sql = "select * from course where courseid = '"+courseid+"'";
	state = conn.createStatement();
	rs=state.executeQuery(sql);
	if(rs.next()){
		course.setCourseid(rs.getString("courseid"));
		course.setCoursename(rs.getString("coursename"));
	}
	}catch(Exception e){
		e.printStackTrace();
		}finally{
		closeConnection();
	}
	return course;
	}
	
	public static void closeConnection() throws Exception{//断开连接
		conn.close();
	}
}