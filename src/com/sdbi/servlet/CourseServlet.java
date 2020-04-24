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


import beans.Coursetwo;

/**
 * Servlet implementation class CourseServlet
 */
@WebServlet("/CourseServlet")
public class CourseServlet extends HttpServlet {
	private DataSource dataSource = null; 
	private Connection conn = null;  
	private PreparedStatement pstmt = null; 
	private ResultSet rs = null;
	private List<Coursetwo> list = null;
	
    public CourseServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			dataSource = new ComboPooledDataSource();
			conn = dataSource.getConnection();
			String sql = "SELECT * FROM course2";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<Coursetwo>();
			
		     
		while (rs.next()) {
			String id = rs.getString("id");
			String coursename = rs.getString("coursename");
			String courseteacher = rs.getString("courseteacher");
			String courseclass = rs.getString("courseclass");
			String coursetime=rs.getString("coursetime");
			
			Coursetwo course2 = new Coursetwo(id, coursename, courseteacher, courseclass, coursetime);
			//System.out.println(userBean.toString());
			list.add(course2);
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
		
		
		request.getRequestDispatcher("course2.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
