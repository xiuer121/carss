<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>好屋经纪人登录_好屋中国</title> 
<meta name="keywords" content="好屋经纪人登录,好屋中国">
<meta name="description" content="好屋网，苏州房产信息第一时间发布，随时了解苏州房价行情，全国首发独立房地产经纪人开放模式。我们提供最及时，最全面，最优惠的楼盘信息让您感受最佳的买房体验">
<link href="./imagesweb/hw_common.css" rel="stylesheet" type="text/css">
<link href="./imagesweb/login.css" rel="stylesheet" type="text/css">
<script src="./imagesweb/analytics.js" async=""></script><script type="text/javascript" src="./imagesweb/jquery.js"></script>
<style type="text/css">
.main { width:100%; background:url(./imagesweb/5b43e61a85275364a1c0ee8c6f29b775.jpg) repeat center; height:450px;}  
</style>
<script type="text/javascript">
$(function() {	
	$('#hwlogin_form').submit(function(){
		var postData = $("#hwlogin_form").serialize();
		$.ajax({
			type: "POST",
			url: "login-member.action",
			data: postData,
			success: function(msg){ 
			 		if(msg.result==1){
			 			window.location.href='member/index.action';
			 		}
			}
		});
	});
});
</script>
</head>
<body>
	<div class="hw_login">
	<div class="head">
     <div class="head_main">
          <div class="logo"><a href="#"><img src="./imagesweb/home_logo.gif" alt="好屋中国" height="87" width="295"></a></div>
			
	            <div id="menu">
					<!--<ul id="nav">
						 
						<li class="mainlevel" id="mainlevel_01"><a href="/">首页</a>
						</li>
						
						<li class="mainlevel" id="mainlevel_03"><a href="/house/sales">限时特惠</a>
						</li>
						<li class="mainlevel" id="mainlevel_03"><a href="/lists">好屋房源</a>
						</li>
						
						<li class="mainlevel" id="mainlevel_02"><a href="/news">最新时讯</a>
						</li>
						<li class="mainlevel" id="mainlevel_02"><a href="/money">赚佣金</a></li>
						
						<li class="mainlevel" id="mainlevel_05"><a href="/users">我的好屋</a>
						<ul id="sub_05">
							 <li><a href="/user/clients">我的客户</a></li>
							 <li><a href="/user/group">我的团队</a></li>
							 <li><a href="/user/money">我的佣金</a></li>
						</ul>-->
						
						<!--<li class="mainlevel" id="mainlevel_06"><a href="/zt/a520?_r=538">活动专题</a>-->
						
						<div class="clear"></div>
					
					</div>
     </div>
</div>
<script>
jQuery(function(){
	
	jQuery('#selcity').hover(function(){
		jQuery('#selcity-body').show();
	},
	function(){
		jQuery('#selcity-body').hide();
	});
	
});

 
</script>

<!---head end-->		<div class="main">	 
			<a href="#" target="_blank"></a>
		</div> 
		<div class="box">
			<div class="content"></div>
				<div class="login">
					<h2>经纪人登录</h2>
					<form id="hwlogin_form" name="hwlogin_form" method="post" onsubmit="return false;">
						<ul>
						<li>用户名：</li>
						<li><input class="input_user" tabindex="1" autocomplete="off" onblur="if(this.value=='') this.value='请输入11位手机号码';" onfocus="if(this.value=='请输入11位手机号码') this.value='';" value="请输入11位手机号码" name="loginName" id="Ruser" type="text"></li>
						<li><span>登录密码：</span><a target="_blank" class="fpassword" href="#">忘记密码?</a></li>
						<li><input class="input_password" tabindex="2" autocomplete="off" onblur="if(this.value=='') this.value='111111111111';" onfocus="if(this.value=='111111111111') this.value='';" value="111111111111" name="password" id="Rpass" type="password"></li>
						<li class="denglv"><a class="button_sub" target="_blank" href="register.jsp">免费注册</a>
						</li>
						<li class="reg"><button tabindex="5" class="J_Submit" type="submit">登　录</button></li>
						<li><a class="button_sub" href="http://www.haowu.cn/brokers">机构用户前往登录</a></li>
						</ul>
					</form>
				</div> 
		</div>	
		<div class="bottom">
	<div class="bottom_main">
		<div class="bottom_left">
			<a target="_blank" href="#">关于我们</a>　|　
			<a target="_blank" href="#">联系我们</a>　|　
			<a target="_blank" href="#">服务声明</a>　|　
			<a target="_blank" href="#">友情链接</a>　|　
			<a target="_blank" href="#">常见问题</a>　|　
			<a target="_blank" href="#">网站地图</a>　|　
			<a target="_blank" href="#">人才招聘</a>
		</div>
		<span class="copyright">好屋中国版权所有 © 2010-2014</span>
	</div>
</div>
<script type="text/javascript">

/*
$(function(){
        var url = "www.haowu.cn/reg/login";
    var server = {"REDIRECT_STATUS":"200","HTTP_HOST":"www.haowu.cn","HTTP_USER_AGENT":"Mozilla\/5.0 (Windows NT 6.1; WOW64; rv:32.0) Gecko\/20100101 Firefox\/32.0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,*\/*;q=0.8","HTTP_ACCEPT_LANGUAGE":"zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3","HTTP_REFERER":"http:\/\/www.haowu.cn\/","HTTP_COOKIE":"alert_nt=true; CNZZDATA4352535=cnzz_eid%3D1036245685-1411955810-http%253A%252F%252Fwww.baidu.com%252F%26ntime%3D1411992520; Hm_lvt_6b2db6d1a39d9f9e90ea6f11ad223bf0=1411983891; PHPSESSID=5qdmk9vii3qgmkkbred4h83r35","HTTP_CONNECTION":"keep-alive","HTTP_CLIENT_IP":"124.227.243.176","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SIGNATURE":"","SERVER_SOFTWARE":"Apache","SERVER_NAME":"www.haowu.cn","SERVER_ADDR":"172.16.100.32","SERVER_PORT":"80","REMOTE_ADDR":"172.16.100.54","DOCUMENT_ROOT":"\/home\/php\/source\/hosts","SERVER_ADMIN":"1@1.cn","SCRIPT_FILENAME":"\/home\/php\/source\/hosts\/index.php","REMOTE_PORT":"33140","REDIRECT_URL":"\/reg\/login","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_URI":"\/reg\/login","SCRIPT_NAME":"\/index.php","PATH_INFO":"\/reg\/login","PATH_TRANSLATED":"redirect:\/index.php\/reg\/login\/login","PHP_SELF":"\/index.php\/reg\/login","REQUEST_TIME":1411992523};
    var session_id = "5qdmk9vii3qgmkkbred4h83r35";
    $.ajax({
        type:"POST",
        url:"/track/firstInsert",
        data:{session_id:session_id,server:server,url:url}
        });
    $(window).bind('unload', function(){ 
        var url = "www.haowu.cn/reg/login";
        var server = {"REDIRECT_STATUS":"200","HTTP_HOST":"www.haowu.cn","HTTP_USER_AGENT":"Mozilla\/5.0 (Windows NT 6.1; WOW64; rv:32.0) Gecko\/20100101 Firefox\/32.0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,*\/*;q=0.8","HTTP_ACCEPT_LANGUAGE":"zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3","HTTP_REFERER":"http:\/\/www.haowu.cn\/","HTTP_COOKIE":"alert_nt=true; CNZZDATA4352535=cnzz_eid%3D1036245685-1411955810-http%253A%252F%252Fwww.baidu.com%252F%26ntime%3D1411992520; Hm_lvt_6b2db6d1a39d9f9e90ea6f11ad223bf0=1411983891; PHPSESSID=5qdmk9vii3qgmkkbred4h83r35","HTTP_CONNECTION":"keep-alive","HTTP_CLIENT_IP":"124.227.243.176","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SIGNATURE":"","SERVER_SOFTWARE":"Apache","SERVER_NAME":"www.haowu.cn","SERVER_ADDR":"172.16.100.32","SERVER_PORT":"80","REMOTE_ADDR":"172.16.100.54","DOCUMENT_ROOT":"\/home\/php\/source\/hosts","SERVER_ADMIN":"1@1.cn","SCRIPT_FILENAME":"\/home\/php\/source\/hosts\/index.php","REMOTE_PORT":"33140","REDIRECT_URL":"\/reg\/login","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_URI":"\/reg\/login","SCRIPT_NAME":"\/index.php","PATH_INFO":"\/reg\/login","PATH_TRANSLATED":"redirect:\/index.php\/reg\/login\/login","PHP_SELF":"\/index.php\/reg\/login","REQUEST_TIME":1411992523};
        var session_id = "5qdmk9vii3qgmkkbred4h83r35";
        $.ajax({
            type:"POST",
            url:"/track/update",
            data:{session_id:session_id,server:server,url:url}
            });
        });
    
});
*/

</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-46194551-1', 'haowu.com');
  ga('send', 'pageview');

</script>	</div>

</body></html>