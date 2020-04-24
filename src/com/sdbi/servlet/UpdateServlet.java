package com.sdbi.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet{
		//创建链接，预处理
		private DataSource dataSource = null;
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8"); 
	
	// 设置字符集 UTF-8
	 int id = Integer.parseInt(request.getParameter("id"));
	 String newPassword = request.getParameter("newPassword");
	 System.out.println(id + ":" + newPassword);
	
	 try {//得到数据源
	dataSource = new ComboPooledDataSource();
	conn = dataSource.getConnection();//连接对象--从连接池得到链接
	
	
	String sql = "UPDATE users SET password = ? WHERE id = ?";
	pstmt = conn.prepareStatement(sql);//预编译SQl语句
	//添加参数
	pstmt.setString(1, newPassword);
	pstmt.setInt(2, id);
	int row = pstmt.executeUpdate();//执行语句，会有返回值--受影响的行数
	
	if (row > 0) {	//更新成功
		response.setContentType("text/html;charset=utf-8");//编码格式为utf-8
		response.getWriter().print("<h2>成功修改了" + row + "条数据！</h2>");//在响应中出现中文，防止出现乱码，应添加上行内容；
		response.getWriter().print("<a href='adm_menu.jsp'>返回管理员页面</a>");
	}
	// 关闭
	if (pstmt != null) pstmt.close();
	if (conn != null) conn.close();
		} catch (Exception e) {
		e.printStackTrace();
	} finally {
	try {
		conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		}
	}
}
	@Override
	protected void doPost(HttpServletRequest request,
	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	}

