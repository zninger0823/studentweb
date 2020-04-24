<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<style type="text/css">
body{
background-image:url('./image/b4.jpg');
}
</style>
</head>
<script language="javascript" type="text/javascript" src="D:/Program Files(x86)/JEEworkspace/Students2/WebContent/My97DatePicker/WdatePicker.js"></script> 
<body>
	<a href="adm_menu.jsp">返回管理页面</a>
	<form action="AddServlet" method="post">
		<table align="center" bgcolor="#cc9999">
			<tr>
				<td align="center" colspan="2"><h2>添加用户信息</h2></td>
			</tr>
			<tr>
				<td align="right">用户名：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">密码：</td>
				<td><input type="text" name="password" /></td>
			</tr>
			<tr>
				<td align="right">性别：</td>
				<td><input type="radio" name="sex" value="1" />男
				<input type="radio" name="sex" value="0" />女</td>
			</tr>
			<tr>
				<td align="right">Email：</td>
				<td><input type="text" name="email" title="email" required pattern="^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$" title="请输入正确的邮箱格式"/></td>
			</tr>
			<tr>
				<td align="right">出生日期：</td>
				<td><input type="text" name="birthday" onClick="WdatePicker()"/></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="添加"/></td>
			</tr>
		</table>
	</form>
</body>
</html>