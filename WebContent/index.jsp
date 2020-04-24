<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>学生用户管理系统</title>
		<script src="${pageContext.request.contextPath }/js/jquery-1.12.4.min.js"></script>
		<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js" ></script>
		<link href="${pageContext.request.contextPath }/css/students.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
		function _change() {
		 var imgEle = document.getElementById("vCode");
		 imgEle.src = "./VerifyCodeServlet?" + new Date().getTime();
		}
		</script>
	</head>
	<body>
    <!--header-->
    <header>
            <div class="head-top"></div>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="container">
                    <div class="navbar-header">
                        <!--<div class="log"-->
                            <a href="#" class="navbar-brand"><img src="images/logo.png" alt=""></a>
                            <!--</div>-->
                            <!--当进入最小设备时，导航条将隐藏，显示汉堡按钮，单击时可以切换显示导航条隐藏的信息*data-target:用于确认需要显示的div-->
                            <button type="button" class="navbar-toggle collapsed"
                            data-toggle="collapse" data-target="#navbar-collapse"
                            aria-expanded="false">
                            <span class="sr-only">汉堡按钮</span>
                            <sapn class="icon-bar"></sapn>
                            <sapn class="icon-bar"></sapn>
                            <sapn class="icon-bar"></sapn>
                        </button>
                    </div>    
                        <!--导航链接、表单和其他内容切换-->
                        <div class="collapse navbar-collapse" id="navbar-collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="#">主页</a></li>
                                <li><a href="#">资源</a></li>
                                <li><a href="#">健康</a></li>
                                <li><a href="#">话题</a></li>
                                <li><a href="#">留言专区</a></li>
                            </ul>
                            <div class="navbar-right">
                                <a href="#"><h5>帮助文档</h5></a>
                            </div>
                        </div>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </div>
            </nav>
        </header>    
        <!--header-->
          <!--搜索区域-->
          <div class="search" style="background:url(images/banner2.jpg);
						                background-size:cover;
						                -webkit-background-size:cover;
						                min-height:600px;margin-top: -20px;">
                <div class="container">
                    <div class="reservation">
                        <form class="form-horizontal" role="form" action="./LoginServlet" method="post">
                            <table  align="center" >
                            
                            <tr>
                            <div class="form-group">
                            <div class="col-sm-12 col-md-12 col-lg-12">
                               <!--  <input type="text" class="form-control input-lg"
                                        id="name" placeholder="请输入账号"> -->        
                                 <td><h4><span style="color:#006699">账&nbsp;&nbsp;&nbsp;&nbsp;号：</span></h4></td>
                                 <td><input name="userid" class="form-control input-lg" id="name" type="text" onBlur="f0()" placeholder="请输入账号"/></td>		
                                </div>
                            </div>
                            </tr>
                            <tr><td colspan="2" align="center" style="height:10px" ></td></tr>
                            <tr>
                            <div class="form-group">
                                 <div class="col-sm-12 col-md-12 col-lg-12">
                                    <!--  <input type="password" class="form-control input-lg"
                                         placeholder="请输入密码"> -->
                                   <td><h4><span style="color:#006699">密&nbsp;&nbsp;&nbsp;&nbsp;码：</span></h4></td>
                                   <td><input name="password" type="password" class="form-control input-lg" onBlur="f1()" placeholder="请输入密码"/></td> 
                                </div>
                            </div>
                            </tr>
                            <tr><td colspan="2" align="center" style="height:10px" ></td></tr>
                            <tr>
                             <div class="form-group">
                              <div class="col-sm-12 col-md-12 col-lg-12">
							<td><h4><span style="color:#006699">验&nbsp;证&nbsp;码：</span></h4></td>
							<td><input type="text" name="verify_code" class="form-control input-lg" placeholder="请输入验证码" /></td>
							</div>
							</div>
							</tr>
                            <tr><td colspan="2" align="center" style="height:10px" ></td></tr>
                            <tr>
							<td align="center"><img id="vCode" src="./VerifyCodeServlet" width="75px" height="35px"></td>
							<td align="center"><a href="javascript:_change()">看不清，换一张</a><td>
							</tr>
							<tr><td colspan="2" align="center" style="height:5px" ></td></tr>
							
							<tr>
							<td align="center" style="color:#006699"><input name="user" type="radio" value="administrator" checked/>管理人员</td>
							<td align="center" style="color:#006699"><input name="user" type="radio" value="student"  />学生人员</td>
							</tr>
							
							<tr><td colspan="2" align="center" style="height:5px" ></td></tr>
                            <tr>
                            <div class="form-group">
                                <div class="searchbtn">
                                      <td colspan="2" align="center">
                                      <button type="submit" class="btn btn-success btn-lg">  登&nbsp;录<td> </button>
                                        
                                </div>
                            </div>
                            </tr>
                            <tr><td colspan="2" align="center" style="height:5px" ></td></tr>
                            <tr>
							<td colspan="2" align="center"><p><a href="register.jsp">没有账号？点击注册吧</a></p></td>
							</tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
            <!--搜索区域结束-->
            <!--热卖商品-->
   <div class="hot">
        <div class="container">
            <div class="col-md-4">
                <h3>技能比赛</h3>
                <img src="images/4.jpg" class="img-responsive" alt="">
                <div>
                    <p class="glyphicon glyphicon-thumbs-up">11月16日至18日，2019（第五届）全国移动互联创新大赛总决赛在京举行，来自全国百余所高校及相关创新企业的近300个创新项目角逐大奖，我校由信息艺术系推荐的龙游丝路、甲骨记忆项目分获二等奖和三等奖。</p>
                    <div class="cur">
                        <span><a class="morebtn" href="#">查看更多讯息</a></span>
                        <span><h6></h6></span>
                    </div>
                </div>
            </div>
            <div class="col-md-4"><h3>校园活动</h3>
            <img src="images/1.jpg" class="img-responsive" alt="蒙特斯大虾">
                <div>
                    <p class="glyphicon glyphicon-thumbs-up">11月22日，建筑装饰专业注重理实一体化教学，为更好地促进校企合作，建筑装饰专业教研室专业骨干教师带领建筑装饰应用技术国赛学生代表前往山东森勒住宅设施有限公司进行参观学习。</p>
                    <div class="cur">
                        <span><a class="morebtn" href="#">查看更多讯息</a></span>
                        
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <h3>社团文化</h3>
                <img src="images/3.jpg" class="img-responsive" alt="香酥鸡排">
                    <div>
                            <p class="glyphicon glyphicon-thumbs-up">大学生社团是大学校园文化建设的重要阵地，对广大团员青年知识、技能、能力的塑造和思想道德素质的培养有着重要的作用，还是学校高水平应用型大学建设和创新型人才培养的重要载体。</p>
                            <div class="cur">
                                <span><a class="morebtn" href="#">查看更多讯息</a></span>
                                
                            </div>
                    </div>        
            </div>
        </div>
       </div>
       <!--热卖商品结束-->
       <!--特色推荐-->
    <div class="container">
            <div class="choose">
                <div class="row">
                    <div class="col-md-12">
                        <div class="navbar-header hidden-xs">
                            <a class="navbar-brand" href="#"><img src="images/title.jpg" sizes="100px"/></a>
                        </div>
                        <!--选项卡菜单-->
                        <ul class="nav nav-pills navbar-right" role="tablist" style="margin-right: 0px;">
                            <li role="presentation" class="active"><a href="#dishes" role="tab" data-toggle="tab">图书推荐</a></li>
                            <li role="presentation" ><a href="#drink" role="tab" data-toggle="tab">实用APP</a></li>
                            <li role="presentation" ><a href="#staple" role="tab" data-toggle="tab">美食推荐</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tab-content">
                            <!--菜品-->
                            <div role="tabpanel" class="tab-pane active" id="dishes">
                                <div class="col-md-2 col-sm-4 col-xs-6">
                                    <img src="images/products/t1.jpg"/>
                                    <p>永恒的终结</p>
                                    <p>豆瓣评分：9.0</p>
                                </div>
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                        <img src="images/products/t2.jpg"/>
                                        <p>追寻逝去的时光</p>
                                        <p>豆瓣评分：9.2</p>
                                </div>
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                            <img src="images/products/t3.jpg"/>
                                            <p>小王子</p>
                                            <p>豆瓣评分：9.0</p>
                                </div> 
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                        <img src="images/products/t4.jpg"/>
                                        <p>社会心理学</p>
                                        <p>豆瓣评分：9.0</p>
                                    </div>
                                 <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                            <img src="images/products/t5.jpg"/>
                                            <p>活着为了讲述</p>
                                            <p>豆瓣评分：9.0</p>
                                </div>       
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                        <img src="images/products/t6.jpg"/>
                                        <p>海伯利安</p>
                                        <p>豆瓣评分：9.0</p>
                                </div>
                            </div>
                            <!--饮品-->
                            <div role="tabpanel" class="tab-pane" id="drink">
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                    <img src="images/products/s1.jpg"/>
                                    <p>知乎</p>
                                    <p>有问题，上知乎</p>
                                </div>
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                        <img src="images/products/s2.jpg"/>
                                        <p>我要自学网</p>
                                        <p>自学各种技能</p>
                                    </div>
                                    <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                    <img src="images/products/s3.jpg"/>
                                    <p>CSDN</p>
                                    <p>IT人员交流平台</p>
                                </div>
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                        <img src="images/products/s4.jpg"/>
                                        <p>牛客网</p>
                                        <p>求职、面试题库</p>
                                    </div>
                                    <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                    <img src="images/products/s5.jpg"/>
                                    <p>Twitter</p>
                                    <p>世界各地实时事</p>
                                </div>
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                        <img src="images/products/s6.jpg"/>
                                        <p>BBC</p>
                                        <p>听新闻学英语</p>
                                    </div>
                            </div>
                            <!--主食-->
                            <div role="tabpanel" class="tab-pane" id="staple">
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                    <img src="images/products/small01.jpg"/>
                                    <p>菜品</p>
                                    <p>￥：10.0</p>
                                </div>
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                        <img src="images/products/small02.jpg"/>
                                        <p>菜品</p>
                                        <p>￥：15.0</p>
                                </div>
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                            <img src="images/products/small04.jpg"/>
                                            <p>菜品</p>
                                            <p>￥：12.0</p>
                                </div>
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                            <img src="images/products/small05.jpg"/>
                                            <p>主食</p>
                                            <p>￥：11.0</p>
                                 </div>    
                                 <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                        <img src="images/products/small06.jpg"/>
                                        <p>主食</p>
                                        <p>￥：18.0</p>
                                    </div>
                                <div class="product-item col-md-2 col-sm-4 col-xs-6">
                                            <img src="images/products/small09.jpg"/>
                                            <p>主食</p>
                                            <p>￥：15.0</p>
                                </div>           
                            </div>                         
                        </div>   
                    </div>
                </div>   
            </div>
        </div>
    
    <!--特色推荐结束-->
    <!--轮播广告-->
    <div class="container hidden-xs">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!--轮播Carousel项目-->
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="pic">
                            <img src="images/1p.jpg" alt="">
                            <img src="images/2p.jpg" alt="">
                            <img src="images/3p.png" alt="">
                            <img src="images/4p.jpg" alt="">
                            <img src="images/5p.jpg" alt="">
                            <img src="images/6p.jpg" alt="">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pic">
                            <img src="images/2p.jpg" alt="">
                            <img src="images/3p.png" alt="">
                            <img src="images/4p.jpg" alt="">
                            <img src="images/5p.jpg" alt="">
                            <img src="images/6p.jpg" alt="">
                            <img src="images/7p.jpg" alt="">
                        </div>
                    </div>
                    <div class="item">
                            <div class="pic">
                                <img src="images/3p.png" alt="">
                                <img src="images/4p.jpg" alt="">
                                <img src="images/5p.jpg" alt="">
                                <img src="images/6p.jpg" alt="">
                                <img src="images/7p.jpg" alt="">
                                <img src="images/8p.jpg" alt="">
                            </div>
                        </div>
                    <div class="item">
                            <div class="pic">
                                <img src="images/4p.jpg" alt="">
                                <img src="images/5p.jpg" alt="">
                                <img src="images/6p.jpg" alt="">
                                <img src="images/7p.jpg" alt="">
                                <img src="images/8p.jpg" alt="">
                                <img src="images/1p.jpg" alt="">
                            </div>
                        </div>
                    <div class="item">
                            <div class="pic">
                                    <img src="images/5p.jpg" alt="">
                                    <img src="images/6p.jpg" alt="">
                                    <img src="images/7p.jpg" alt="">
                                    <img src="images/8p.jpg" alt="">
                                    <img src="images/1p.jpg" alt="">
                                    <img src="images/2p.jpg" alt="">
                            </div>
                    </div>    
                    <div class="item">
                            <div class="pic">
                                    <img src="images/6p.jpg" alt="">
                                    <img src="images/7p.jpg" alt="">
                                    <img src="images/8p.jpg" alt="">
                                    <img src="images/1p.jpg" alt="">
                                    <img src="images/2p.jpg" alt="">
                                    <img src="images/3p.png" alt="">
                                </div>
                        </div>    
                        <div class="item">
                                <div class="pic">
                                    <img src="images/7p.jpg" alt="">
                                    <img src="images/8p.jpg" alt="">
                                    <img src="images/1p.jpg" alt="">
                                    <img src="images/2p.jpg" alt="">
                                    <img src="images/3p.png" alt="">
                                    <img src="images/4p.jpg" alt="">
                                </div>
                        </div>            
                        <div class="item">
                                <div class="pic">            
                                    <img src="images/8p.jpg" alt="">
                                    <img src="images/1p.jpg" alt="">
                                    <img src="images/2p.jpg" alt="">
                                    <img src="images/3p.png" alt="">
                                    <img src="images/4p.jpg" alt="">
                                    <img src="images/5p.jpg" alt="">
                                </div>
                        </div>                    
                </div>
                <!--轮播导航-->
                <a class="carousel-control left" href="#myCarousel" role="button" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel" role="button" data-slide="next">&rsaquo;</a>
            </div>
        </div>
    <!--轮播广告结束-->
    <!--footer-->
    <footer class="footer">
        <div class="container">
            <div class="footer-left">
                <p>2019 学生用户管理系统网站 | 版权所有<a href="#"></a></p>
            </div>
            <div class="footer-right">
                <ul>
                    <li><a href="#"><i class="glyphicon glyphicon-phone-alt">&nbsp;联系我们</i></a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-map-marker">&nbsp;学校地址</i></a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-question-sign">&nbsp;服务声明</i></a></li>
                </ul>
            </div>
        </div>
    </footer>

    <!--jQuery(Bootstrap的JavaScript插件需要引入jQuery)-->
<script src="jquery/jquery-1.12.4.min.js"></script>
<!--包括所有已编译的插件-->
<script src="bootstrap/js/bootstrap.min.js"></script> 
</body>
</html>