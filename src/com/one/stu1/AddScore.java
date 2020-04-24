package com.one.stu1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CourseDAO;
import DAO.ScoreDAO;
import DAO.UserDAO;
import beans.Course;
import beans.Student;

/**
 * Servlet implementation class AddScore
 */
@WebServlet("/AddScore")
public class AddScore extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=gb2312");
		String studentid=request.getParameter("studentid");//获取学号
		String studentname=request.getParameter("studentname");
		String courseid=request.getParameter("courseid");//获取课程号
		String coursename=request.getParameter("coursename");
		String score=request.getParameter("score");//获取成绩
		PrintWriter out = response.getWriter();
		try {
			Student student=UserDAO.findstudent(studentid);//查找学生
			Course course=CourseDAO.findclasses(courseid);//查找课程
			System.out.print(student.getStudentid());
			if(student.getStudentid()!=null){//存在该学生
				if(course.getCourseid()!=null){//存在该课程
				 try {
			        	int i=ScoreDAO.addscore(studentid,studentname,courseid,coursename,score);
						if(i!=0){
							out.print("<script>alert('添加成功');"
									+ "window.location.href='./admin_addscore.jsp'</script>");
						}else{
							out.print("<script>alert('添加失败');"
									+ "window.location.href='./admin_addscore.jsp'</script>");
						}
					} catch (Exception e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				}else{
					out.print("<script>alert('课程不存在，添加失败');"
							+ "window.location.href='./admin_addscore.jsp'</script>");
				}
			}else{
				out.print("<script>alert('学生不存在，添加失败');"
						+ "window.location.href='./admin_addscore.jsp'</script>");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
