package com.one.stu1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import beans.Student;

@WebServlet("/Register")
public class Register extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("userid");//获取账号
		String password1 = request.getParameter("password1");//获取第一次输入的密码
		String username = request.getParameter("username");//获取姓名
		String password2 = request.getParameter("password2");//获取第二次输入的密码
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		System.out.print(userid);
		System.out.print(username);
		System.out.print(password1);
		System.out.print(password2);
		if(userid!=null&&username!=null&&password1!=null&&password2!=null){//页面信息是否填写完整
			if(password1.equals(password2)){//两次输入的密码一致
				try {
					Student student = UserDAO.findstudent(userid);
					if(student.getStudentid()!=null){//账号存在
						out.print("<script>alert('该账号存在，注册失败!');"
								+ "window.location.href='./register.jsp'</script>");
					}else{
						student.setStudentid(userid);
						student.setStudentname(username);
						student.setPassword(password1);
						boolean flag=UserDAO.addStudent(student);
						if(flag){
							out.print("<script>alert('注册成功!现在去登录');"
									+ "window.location.href='./index.jsp'</script>");
						}else{
							out.print("<script>alert('注册失败!稍后重试');"
									+ "window.location.href='./register.jsp'</script>");
						}
					}
				} catch (Exception e) {
			
					e.printStackTrace();
				}
			}else{
				out.print("<script>alert('两次密码不一致，请确认');"
						+ "window.location.href='./register.jsp'</script>");
		}
		}else{
			out.print("<script>alert('请将信息填写完整');"
					+ "window.location.href='./register.jsp'</script>");
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
