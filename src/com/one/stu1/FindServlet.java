package com.one.stu1;

import java.awt.List;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BookBean;

@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public FindServlet(){
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";   
		String url = "jdbc:sqlserver://localhost:1434;instanceName=MYSQL2;DatabaseName=sdbi"; 
		try{
		Class.forName(driverName);  
		String user = "sa";   
		String password = "123456";
		Connection conn = DriverManager.getConnection(url,user,password);
		Statement stmt=conn.createStatement();// 获取Statement 
		
		String sql="select * from tb_book";
		ResultSet rs = stmt.executeQuery(sql);
		ArrayList<BookBean> list=new ArrayList<>();
		while(rs.next()){
			BookBean book=new BookBean();
			book.setId(rs.getInt("id"));
			book.setName(rs.getString("name"));
			book.setPrice(rs.getDouble("price"));
			book.setBookCount(rs.getInt("bookCount"));
			book.setAuthor(rs.getString("author"));
			list.add(book);
		}
	request.setAttribute("list", list);
	rs.close();
	stmt.close();
	conn.close();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
	request.getRequestDispatcher("bookList.jsp").forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
