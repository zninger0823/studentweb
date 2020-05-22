package com.one.stu1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import beans.Admin;
import beans.Student;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request,
					HttpServletResponse response) throws ServletException, IOException {
						doPost(request, response); // 一定不要忘记
								}
	protected void doPost(HttpServletRequest request,
					HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=gb2312");
				String userid = request.getParameter("userid");//获取账号
				String password = request.getParameter("password");//获取密码
				String user=request.getParameter("user");//判断用户身份，学生还是管理员
				String verifyCode = request.getParameter("verify_code");//获取验证码
				String sessionVerifyCode = (String) request.getSession().getAttribute("sessionVerifyCode");
				PrintWriter out = response.getWriter();
				
				//判断验证码是否正确
				if(verifyCode.equals(sessionVerifyCode)){
			
				if(user==null||password==null){//未输入密码
					//System.out.println("登录失败！");
					out.print("<script>alert('登录失败！请输入账号和密码');"+ "window.location.href='./index.jsp'</script>");
				}else{
					if(user.equals("student")){//学生登录时
						try {
							Student student=UserDAO.findstudent(userid);
							if(student.getStudentid().equals(userid)&&student.getPassword().equals(password)){
								HttpSession session = request.getSession();
								session.setAttribute("student",student);//保存用户名
								
								//System.out.println("登录成功！");
								response.sendRedirect("./welcome.jsp");
							}else {
								System.out.println("登录失败！");
								out.print("<script>alert('登录失败！请确认账号和密码');"
										+ "window.location.href='./index.jsp'</script>");
							}
						   } catch (Exception e) {
							e.printStackTrace();}
					}else{//管理员登陆时
						try {
							Admin admin=UserDAO.findadmin(userid);
							if(admin.getAdminid().equals(userid)&&admin.getPassword().equals(password)){
								HttpSession session = request.getSession();
								session.setAttribute("admin",admin);	//保存用户名
								
								//System.out.println("登录成功！");
								response.sendRedirect("./adm_menu.jsp");
							}else{	
									//System.out.println("登录失败！");
								out.print("<script>alert('登录失败！请确认账号和密码');"
										+ "window.location.href='./index.jsp'</script>");}
							} catch (Exception e) {
							e.printStackTrace();}
					}
				}
				
				}else{
					out.print("<script>alert('登录失败！请输入正确的验证码');"
							+ "window.location.href='./index.jsp'</script>");}
	}
				
}


//				if ("admin".equalsIgnoreCase(userid)&& "123".equalsIgnoreCase(password)&& sessionVerifyCode.equalsIgnoreCase(verifyCode)) {
//		// 登录成功
//		HttpSession session = request.getSession();
//		session.setAttribute("username", userid); // 向 HttpSession 域中保存用户名
//		response.sendRedirect("./welcome.jsp");
//				} else if (sessionVerifyCode.equalsIgnoreCase(verifyCode)) {
//					// 登录失败
//					response.getWriter().print("用户名或密码错误！");
//					} else {
//					response.getWriter().print("验证码错误！");
//					}
				

				
