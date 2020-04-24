<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>录入成绩</title>
<style type="text/css">
body{

background-image:url('./image/b4.jpg');
}

</style>
</head>
  <body>
  <div id="top"><p>学生成绩管理系统-录入成绩</p></div>
  <div id="admin">输出下列信息进行分数录入</div>
  <table align="center" cellpadding="15" cellspacing="15">
  <tr>
         <td>学生学号</td>
         <td>姓名</td>
         <td>课程号</td>
         <td>课程名</td>
         <td>成绩</td>
     	</tr>
   <tr>
   <form action="./AddScore" method="post">
   <td><input type="text" name="studentid"></td>
   <td><input type="text" name="studentname"></td>
   <td><input type="text" name="courseid"></td>
   <td><input type="text" name="coursename"></td>
   <td><input type="text" name="score"></td>
   </tr>
   <tr>
   <td colspan="3" align="center"><input type="submit" value="添加"></td>
   </form>
	</tr>
	<tr>
	<td colspan="3" align="center">
	<form action="./Exit" method="post">
	<input name="exit" type="hidden" value="score">
    <input type="submit" value="返回">
    </form></td>
	</tr>
    </table>
  </body>
</html>