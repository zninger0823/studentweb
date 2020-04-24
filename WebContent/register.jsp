<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath }/js/jquery-1.12.4.min.js"></script>
<title>注册账号</title>
<style type="text/css">
body{
background-image:url('./image/b4.jpg');
}
</style>
</head>
<body>

<script type="text/javascript">
    var emt = document.getElementsByTagName("em");
    var t=1;
     function  f0(){
     if(register.userid.value.length>6||register.userid.value.length<12){
                emt[0].innerHTML="账号长度6-12位!";
                t=0;
            }
      else{
           emt[0].innerHTML="";
           t=1;
      }
    } 
    function  f1(){
     if(register.username.value.length>1||register.username.value.length<4){
                emt[1].innerHTML="用户名长度1-4位!";
                t=0;
            }
      else{
           emt[1].innerHTML="";
           t=1;
      }
    } 
    function  f2(){
        var mm=/^[0-9a-zA-Z]{6,12}$/;
     var flag=mm.test(register.password1.value);
     if(!flag){
                emt[2].innerHTML="密码要求长度6-12位；字母数字的组合，不能有其他字符!";
                t=0;
            }
      else{
           emt[2].innerHTML="";
           t=1;
      }
    } 
    function  f3(){
       if(register.password1.value!=register.password2.value){
            emt[3].innerHTML="密码两次应一致！";
                t=0;
       }else{
           emt[3].innerHTML="";
           t=1;
      }
    }
</script>
   <div align="center"><p>欢迎登录学生用户管理系统</p></div>
     <div align="center">
     <form action="./Register" method="post" name="register">
   <p> 账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input name="userid" type="text" onBlur="f0()"/><br><em></em></p>
   <p> 姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input name="username" type="text" onBlur="f1()"/><br><em></em></p>
   <p> 密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="password1" type="password" onBlur="f2()"/><br><em></em></p>
    <p>确认密码：<input name="password2" type="password" onBlur="f3()"/><br><em></em></p>
    <p><input type="submit" value="确认"></p>
    </form>
    <p><a href="index.jsp">返回登录</a></p>
    </div>
  </body>

</html>