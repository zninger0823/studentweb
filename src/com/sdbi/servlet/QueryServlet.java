package com.sdbi.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import beans.UserBean;

@WebServlet("/QueryServlet")
public class QueryServlet extends HttpServlet{
	private DataSource dataSource = null; 
	private Connection conn = null;  
	private PreparedStatement pstmt = null; 
	private ResultSet rs = null;
	private List<UserBean> list = null;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		dataSource = new ComboPooledDataSource();
		conn = dataSource.getConnection();
		String sql = "SELECT * FROM users";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		list = new ArrayList<UserBean>();
		
	     
	while (rs.next()) {
		int id = rs.getInt("id");
		String name = rs.getString("name");
		String password = rs.getString("password");
		int sex = rs.getInt("sex");
		String email = rs.getString("email");
		Date birthday = rs.getDate("birthday");
		UserBean userBean = new UserBean(id, name, password, sex, email,birthday);
		//System.out.println(userBean.toString());
		list.add(userBean);
					}
		request.setAttribute("list", list);
		// ¹Ø±Õ
		if (rs != null) rs.close();
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
	
	
	
		request.getRequestDispatcher("queryUsers.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

	doGet(request, response);
		}
}
