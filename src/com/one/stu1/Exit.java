package com.one.stu1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Exit")
public class Exit extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=gb2312");
		String exit=request.getParameter("exit");
		HttpSession session = request.getSession();
		if(exit.equals("user")){
			session.invalidate();
			response.sendRedirect("./index.jsp");
		}else{
			session.removeAttribute("score");
			response.sendRedirect("./adm_menu.jsp");
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 
		doGet(request,response);
	}

}
