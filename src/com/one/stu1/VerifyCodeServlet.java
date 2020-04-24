package com.one.stu1;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VerifyCodeServlet")
public class VerifyCodeServlet extends HttpServlet {
		protected void doGet(HttpServletRequest request,
						HttpServletResponse response) throws ServletException, IOException {
			response.setHeader("pragma","no-cache");
			response.setHeader("cache-control","no-cache");
			response.setHeader("expires","0");
		response.setContentType("text/jpeg"); // 设置响应体类型
		VerifyCode code = new VerifyCode();
		BufferedImage image = code.createImage(); // 生成验证码图片
		String text = code.getText(); // 获取验证码文本
		//System.out.println("text = " + text);
		// 将验证码文本保存到 session 中
		request.getSession().setAttribute("sessionVerifyCode", text);
		VerifyCode.output(image, response.getOutputStream()); // 将验证码图片输出响应流
		}

protected void doPost(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
