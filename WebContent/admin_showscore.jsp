<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.Score" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询成绩</title>
<style type="text/css">
body{

background-image:url('./image/b4.jpg');
}

</style>

</head>
<body>
  <div id="top"><p>学生成绩管理系统-查询成绩</p></div>
  <div id="admin">
    <form action="./ShowScore" method="post">
    <input name="func" type="hidden" value="show">选择成绩查询方式：
    <input name="flag" type="radio" value="course" checked>课程号查询
    <input name="flag" type="radio" value="stu">学号查询<br>
    <input name="id" type="text">
    <input type="submit" value="查询">
    </form>
    </div>
     <table align="center" cellpadding="15" cellspacing="15">
    <%
    ArrayList<Score> list=(ArrayList<Score>) session.getAttribute("score"); 
    String flag=(String) session.getAttribute("flag");
    if(list!=null&&list.size()!=0){
    if(flag.equals("stu")){%>
        <tr>
     	<td colspan="4" align="center">学号为<%=list.get(0).getStudentid() %>的学生成绩如下</td>
     	</tr>
    <% }else{%>
    <tr>
     	<td colspan="4" align="center">  课程号为<%=list.get(0).getCourseid()%>的全体学生成绩如下</td>
     	</tr>
    <%}%>
    <tr>
         <td>学生学号</td>
         <td>学生姓名</td>
         <td>课程名</td>
         <td>成绩</td>
     	</tr>
    <%
            for(int j=0;j<list.size();j++){%>
            <tr>
            <td><%=list.get(j).getStudentid() %></td>
            <td><%=list.get(j).getStudentname()%></td>
            <td><%=list.get(j).getCoursename()%></td>
            <td><%=list.get(j).getScore()%></td>
            </tr>
			         <% }}%>
	<tr>
	<td colspan="4" align="center">
	<form action="./Exit" method="post">
	<input name="exit" type="hidden" value="score">
    <input type="submit" value="返回">
    </form>
	</td>
	</tr>
	</table>
  </body>
</html>