package com.one.stu1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DelServlet")
public class DelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public DelServlet (){
		super();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";   
		String url = "jdbc:sqlserver://localhost:1434;instanceName=MYSQL2;DatabaseName=sdbi"; 
		Class.forName(driverName);  
		String user = "sa";   
		String password = "123456";
		Connection conn = DriverManager.getConnection(url,user,password);
		String sql="DELETE FROM tb_book WHERE id=?";
		PreparedStatement ps=conn.prepareStatement(sql);// 获取PreparedStatement
		String ID[]=request.getParameterValues("delid");
		if(ID.length>0){
			for(int i=0;i<ID.length;i++){
				ps.setInt(1,Integer.parseInt(ID[i]));// 对SQL语句中的第1个参数赋值
				ps.addBatch();
			}
		}
		ps.executeBatch();//执行批处理操作
		ps.close();//关闭PreparedStatement         
		conn.close();//关闭Connection
		}catch(Exception e){
			e.printStackTrace();
		}
		response.sendRedirect("FindServlet");// 重定向到FindServlet
		
	}

}
