 package DAO;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import beans.Admin;
import beans.Student;
 
public class UserDAO {
	private static Connection conn;
	
 static void fun2() throws SQLException{
		
		ComboPooledDataSource dataSource = new ComboPooledDataSource();
		//得到连接
				 conn = dataSource.getConnection();
				
	}
	
	public static Student findstudent(String userid) throws Exception{//查找学生
	fun2();
	Statement state =null;
	ResultSet rs = null;
	Student student=new Student();
	try{
	String sql = "select * from student where studentid = '"+userid+"'";
	state = conn.createStatement();
	rs=state.executeQuery(sql);
	if(rs.next()){
		student.setStudentid(rs.getString("studentid"));
		student.setPassword(rs.getString("password"));
		student.setStudentname(rs.getString("studentname"));
	}
	}catch(Exception e){
		e.printStackTrace();
		}finally{
		closeConnection();
	}
	return student;
	}
	
	public static boolean addStudent(Student student) {//增加学生
	    boolean flag=false;
	    int i=0;
			try {
			fun2();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	    Statement state =null;
	    String sql= "insert into student (studentid,studentname,password) values('"+student.getStudentid()+"','"+student.getStudentname()+"','"+student.getPassword()+"')"; 
	    try {
	    	state = conn.createStatement();
	    	i=state.executeUpdate(sql);
	      if(i>0){
	        flag=true;
	      }
	    }catch (SQLException e) {
	      e.printStackTrace();
	    }
	    try {
			closeConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return flag;
	  }
 
	
	public static Admin findadmin(String userid) throws Exception{//查找管理员
	fun2();
	Statement state =null;
	ResultSet rs = null;
	Admin admin=new Admin();
	try{
	String sql = "select * from adm where admid = '"+userid+"'";
	state = conn.createStatement();
	rs=state.executeQuery(sql);
	if(rs.next()){
		admin.setAdminid(rs.getString("admid"));
		admin.setPassword(rs.getString("password"));
		admin.setAdminname(rs.getString("admname"));
	}
	}catch(Exception e){
		e.printStackTrace();
		}finally{
		closeConnection();
	}
	return admin;
	}
	
	public static void closeConnection() throws Exception{//断开连接
		conn.close();
	}
}
