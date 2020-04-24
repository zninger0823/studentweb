package com.one.stu1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CourseDAO;
import DAO.ScoreDAO;
import DAO.UserDAO;
import beans.Course;
import beans.Score;
import beans.Student;

@WebServlet("/ShowScore")
public class ShowScore extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=gb2312");
		String flag=request.getParameter("flag");//按学号还是课程号查找
		String id=request.getParameter("id");//获取的id值
		
		String func=request.getParameter("func");//从哪个页面传来的表单
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		if(flag.equals("stu")){//按学号查找成绩
			session.setAttribute("flag", flag);
			try {
				Student student=UserDAO.findstudent(id);
				if(student.getStudentid()!=null){//输入的学号存在
					try {
						ArrayList<Score> list=(ArrayList<Score>) ScoreDAO.findscore1(id);
						session.setAttribute("score", list); 
						if(func.equals("show"))//从admin_showscore.jsp传来的值
							response.sendRedirect("./admin_showscore.jsp");
						else//从admin_updatescore.jsp传来的值
							response.sendRedirect("./admin_updatescore.jsp");
					}catch (Exception e) {
			
				e.printStackTrace();
					}
				}else{//学号不存在
					if(func.equals("show")){
					out.print("<script>alert('不存在该学生');"
							+ "window.location.href='./admin_showscore.jsp'</script>");
					}else{
						out.print("<script>alert('不存在该学生');"
								+ "window.location.href='./admin_updatescore.jsp'</script>");
					}
				}
			} catch (Exception e1) {
				
				e1.printStackTrace();
			}
					
		}else{//按课程号查找成绩
			try {
				Course course=CourseDAO.findclasses(id);
				if(course.getCourseid()!=null){
					ArrayList<Score> list;
					try {
						session.setAttribute("flag", flag);
						list = (ArrayList<Score>) ScoreDAO.findscore2(id);
						session.setAttribute("score", list); 
						if(func.equals("show"))
							 response.sendRedirect("./admin_showscore.jsp");
						 else
							 response.sendRedirect("./admin_updatescore.jsp");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}else{
					if(func.equals("show")){
						out.print("<script>alert('不存在该课程');"
								+ "window.location.href='./admin_showscore.jsp'</script>");
						}else{
							out.print("<script>alert('不存在该课程');"
									+ "window.location.href='./admin_updatescore.jsp'</script>");
						}
					
				}
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			 
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 
				doGet(request,response);
	}

}

