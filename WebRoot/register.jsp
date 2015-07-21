<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>广西百顺兴--国内大型专业信贷咨询平台注册</title>
	<meta name="keywords" content="广西百顺兴">
	<meta name="description" content="广西百顺兴--国内大型专业信贷咨询平台注册">


    <link rel="stylesheet" href="./imagesweb/common_1.css">
    <link rel="stylesheet" href="./imagesweb/reg.css">
	<script type="text/javascript" src="./imagesweb/jquery.js"></script>

</head>

<body><div class="" style="display: none; position: absolute;"><div class="aui_outer"><table class="aui_border"><tbody><tr><td class="aui_nw"></td><td class="aui_n"></td><td class="aui_ne"></td></tr><tr><td class="aui_w"></td><td class="aui_c"><div class="aui_inner"><table class="aui_dialog"><tbody><tr><td colspan="2" class="aui_header"><div class="aui_titleBar"><div style="cursor: move; display: block;" class="aui_title"></div><a style="display: block;" class="aui_close" href="javascript:/*artDialog*/;">×</a></div></td></tr><tr><td style="display: none;" class="aui_icon"><div style="background: none repeat scroll 0% 0% transparent;" class="aui_iconBg"></div></td><td style="width: auto; height: auto;" class="aui_main"><div style="padding: 20px 25px;" class="aui_content"></div></td></tr><tr><td colspan="2" class="aui_footer"><div style="display: none;" class="aui_buttons"></div></td></tr></tbody></table></div></td><td class="aui_e"></td></tr><tr><td class="aui_sw"></td><td class="aui_s"></td><td style="cursor: se-resize;" class="aui_se"></td></tr></tbody></table></div></div>
<div class="global">
    <!---head start-->
	<!--<div class="head">
	<div class="head_main">
		<div class="logo"><a target="_blank" href="/"><img src="/static/images/v12/reg_logo.gif" alt="好屋中国" height="60" width="320"></a></div>
		<div class="regnav">欢迎注册好屋经纪人！只需输入购房者信息，坐等成交，佣金轻松拿。</div>
	</div>
</div>-->
<div class="logo clearfix">
        <a href="#"><img src="./imagesweb/reg_logo.gif"></a>
    </div>
    <div class="head"></div>
<script>
jQuery(function(){
	jQuery('#selcity').hover(function(){
		jQuery('#selcity-body').show();
	},
	function(){
		jQuery('#selcity-body').hide();
	});
});
</script>	<!---head end-->
    <div class="main clearfix">
        <div class="register-box">
            <form id="pc_register" class="form-register" method="post" action="register.action">
                <div class="r-line">
                    <label class="r-label" for="rFullname">真实姓名：</label>
                    <div class="r-input">
                        <input id="rFullname" name="personName" maxlength="10" autocomplete="off" class="r-input-txt" type="text"/>
                        <span class="r-alertarrow"></span>
                        <span class="r-passarrow"></span>
                    </div>
                    <div class="r-msg">
                        <span class="r-m-pass"></span>
                        <span class="r-m-tips">输入您的真实姓名 以便身份认证</span>
                        <span class="r-m-null">姓名不能为空</span>
                        <span class="r-m-alert">姓名不能超过4个汉字</span>
                    </div>
                </div>
                <div class="r-line">
                    <label class="r-label" for="password">登录密码：</label>
                    <div class="r-input">
                        <input id="rPassword" name="password" value="" maxlength="30" autocomplete="off" class="r-input-txt" type="password"/>
                        <span class="r-alertarrow"></span>
                        <span class="r-passarrow"></span>
                    </div>
                    <div class="r-msg">
                        <span class="r-m-tips">设置您的密码</span>
                        <span class="r-m-null">您还没输入密码</span>
                        <span class="r-m-pass"></span>
                        <span class="r-m-alert">密码长度不小于六位</span>
                    </div>
                </div>
                <!--  
                <div class="r-line r-pic">
                    <label class="r-label">图片验证码：</label>
                    <div class="r-input">
                        <input id="rCaptcha" name="scode" maxlength="4" autocomplete="off" class="r-input-yanzheng" type="text"/>
                        <span class="r-alertarrow"></span>
                       <span class="r-passarrow"></span>
                        <img class="r-captcha" src="./imagesweb/scode.png">
                        <span id="updateCaptcha" class="r-refresh"><img src="./imagesweb/refresh.gif"></span>
                    </div>
                    <div class="r-msg">
                        <span class="r-m-tips">输入图中的字母，不区分大小写</span>
                        <span class="r-m-pass"></span>
                        <span class="r-m-null">图形验证码不能为空</span>
                        <span class="r-m-alert">图形验证码只有四位</span>
                    </div>
                </div>
                -->
                <div class="r-line">
                    <label class="r-label" for="tel">手机号码：</label>
                    <div class="r-input">
                        <input id="rUser" name="tel" maxlength="11" autocomplete="off" class="r-input-txt" type="text"/>
                        <span class="r-alertarrow"></span>
                        <span class="r-passarrow"></span>
                    </div>
                    <div class="r-msg">
                        <span class="r-m-txtips">输入手机号码作为您的账号<br>及佣金获取凭证 很重要</span>
                        <span class="r-m-alert">请输入正确手机号码</span>
                        <span class="r-m-null">手机号不能为空</span>
                        <span class="r-m-pass"></span>
                    </div>
                </div>
				<div style="display:none;">
					<input name="regCyqnumber" id="regCyqnumber" class="inputtext" type="text"/> 
				</div>
                <div class="r-line r-code">
                    <label class="r-label" for="rPhoneCaptcha">手机验证码：</label>
                    <div class="r-input">
                        <input id="rPhoneCaptcha" name="verifyCode" maxlength="6" autocomplete="off" class="r-input-yanzheng" type="text"/>
                        <span class="r-alertarrow"></span>
                        <span class="r-passarrow"></span>
                        <a id="getCaptcha" class="r-get-captcha" href="javascript:void(0);">免费获得手机验证码</a>
                    </div>
                    <div class="r-msg">
                        <span class="r-m-tips">输入短信收到的验证码</span>
                        <span class="r-m-null">手机验证码不能为空</span>
                        <span class="r-m-alert">验证码只有四位</span>
                        <span class="r-m-pass"></span>
                    </div>
                </div>
                <div class="r-line">
                    <label class="r-label"></label>
                    <input checked="checked" id="regcheckboxok" name="regcheckboxok" class="regcheck" type="checkbox"/>我已认真阅读并同意《<a href="http://www.haowu.cn/show/3/view.html" target="_blank"><b>好屋中国用户服务条款</b></a>》
                </div>
                <div class="r-line">
                    <label class="r-label"></label>
                    <button class="r-submit"></button> 
                </div>
                <div class="r-line">
                    <span class="join_ok">已经注册在 <a href="login-member.jsp">"这里登录"</a></span>
                </div>
				<input value="1" name="regCityiD" type="hidden">
				<input value="" name="way" type="hidden">
            </form>
        </div>
        <div class="reg_ad">

        </div>
    </div>

    <div class="bottom">
        <div class="bottom_main">
            <a target="_blank" href="#">关于我们</a>
            <a target="_blank" href="#">联系我们</a>
            <a target="_blank" href="#">服务声明</a>
            <a target="_blank" href="#">友情链接</a>
            <a target="_blank" href="#">常见问题</a>
            <a target="_blank" href="#">网站地图</a>
            <a target="_blank" href="#" class="last">人才招聘</a>
            <em>好屋中国版权所有 © 2010-2014</em>
        </div>
    </div>
</div>

<link href="./imagesweb/default.css" rel="stylesheet"><script type="text/javascript" src="./imagesweb/artDialog.js"></script>
<script type="text/javascript" src="./imagesweb/iframeTools.js"></script>
<script>

    $(document).ready(function(){
        $('.r-get-captcha').hover(
                function(){
                    $(this).addClass('r-get-captcha-hover');
                },
                function(){
                    $(this).removeClass('r-get-captcha-hover');
                }
        );

    });



    $(document).ready(function(){
        var $registerForm = $('#pc_register'),
            $user = $('#rUser'),
            $captcha = $('#rCaptcha'),
            $updateCaptcha = $('#updateCaptcha'),
            $password = $('#rPassword'),
            $repassword = $('#rtPassword'),
            $fullname = $('#rFullname'),
            $phoneCaptcha = $('#rPhoneCaptcha'),
            $getCaptcha = $('#getCaptcha'),
//            $recommend = $('#rRecommend'),
			$regcheckboxok = $('#regcheckboxok'),
            selLine = '.r-line',
            selAllTips = '.r-msg span',
            selTips = '.r-m-tips',
            selTxttips = '.r-m-txtips',
            selPass = '.r-m-pass',
            selAlert = '.r-m-alert',
            selNull = '.r-m-null',
            clsInputFocus = 'r-input-focus',


            regPhone = /^0?1\d\d{9}$/,
            regCode = /^.{4}$/,
            regPassword = /^.{6,}$/,
            regName = /^([\u4E00-\uFA29]|[\uE7C7-\uE7F3]){1,4}$/,
            regPhoneCode = /^\d{4,6}$/,

            apiRoot = '/',
            timer = 15000,

            getCoding = 'get-codeing',
            autoCoding='auto-codeing',
            defTips = '没有收到 点击自动获取',
            couTips = '秒后再次获取',
            maxSecond = 50,
            interval = 1000,
            timeout = null,
            flag = false,

            oninput = $.browser.msie ? 'propertychange' : 'input',

            errorInfo = '服务繁忙，请稍后重试。';


        function countdown() {
			//$getCaptcha.text('已发送，请耐心等待').removeClass(getCoding).addClass(autoCoding);
            maxSecond = 50;
            clearTimeout(timeout);

            $getCaptcha.text(maxSecond + couTips).addClass(getCoding);

            timeout = setTimeout(function(){
                maxSecond -= 1;
                if (maxSecond > 0) {
                    $getCaptcha.text(maxSecond + couTips);
                    timeout = setTimeout(arguments.callee, interval);
                } else {
                    $getCaptcha.text(defTips);//.removeClass(getCoding);//.addClass(autoCoding);
                    //自动获取验证码
                }
            }, interval);
        }


        function verifyInput(regexp, input, pwd) {
            var returnValue = regexp.test( $.trim( input.val()) );
            if (pwd) {
                if (pwd.val().length) {
                    returnValue = input.val() === pwd.val() && regexp.test( input.val() );
                }
                if (input.val() === pwd.val() && returnValue) {
                    showMsg(pwd, true);
                }
            }

            showMsg(input, returnValue);
            return returnValue;
        }


        function showMsg(input, returnValue) {
            var $line = input.parents(selLine),
                className = returnValue ? selPass : selAlert,
                iconPass = '.r-passarrow',
                iconAlert = '.r-alertarrow',
                iconClass = returnValue ? iconPass : iconAlert;

            if (!$.trim(input.val())) {
                className = selNull;
            }
            $line.find(selAllTips).hide();
            $line.find(className).css({
                display: 'block'
            });
            $line.find(iconPass + ', ' + iconAlert).hide();
            $line.find(iconClass).show();
        }

        // 更新图型验证码
        $updateCaptcha.mousedown(function(){
            var that = $(".r-captcha"),
                url = that.attr('src').split('?')[0];
            that.attr('src', url + '?' + (new Date()).getTime());
            return false;
        });

        // 获取手机验证码
        $getCaptcha.mousedown(function(){
            if ($(this).hasClass(getCoding)) {
                return false;
            }
			var mobile = $("#rUser").val();
			if($getCaptcha.html() == '已发送，请耐心等待') {
				/*$.ajax({
					type :"POST",
					url : "/reg/autoGotCode",
					data:{mobilephone:mobile},
					success:function(msg) {
						if(msg > 0) {
							setTimeout(function(){
								showMsg($("#rPhoneCaptcha"), true);
							},0);
							$("#rPhoneCaptcha").val(msg);
						} else if(msg == '-1'){
							alert('手机号码错误');
						} else if(msg == '0') {
							alert('验证码不存在，请联系客服');
						}
					}
				});*/
			} else {
				
				flag = verifyInput(regPhone, $user);
				if (flag) {
					$.ajax({
						type: 'POST',
						url: apiRoot + 'ajax/getVerify',
						data: $('#pc_register').serialize(), //{regRuser:mobile},
						//dataType: 'json',
						timeout: timer,
						success: function(data){
							if(data>0){
							alert('验证码已发送至您手机，请注意查收');
							countdown();
							}else if(data==-1){
								alert('一分钟内只能收取一次验证码');
							}
							else if(data==-3){
								alert('请先输入正确网站图形验证码');
								$updateCaptcha.mousedown();
							}
							else if(data==0){
								alert('手机号码已经被注册');
							}else if(data==-101){
								alert('手机号码格式错误');
							}
							// alert('验证码已发送至您手机');
							// 在返回成功的时候启用倒计时
							
						},
						error: function(){
							alert(errorInfo);
						},
                        complete: function(){
                            //$updateCaptcha.mousedown();
                        }
					});
				}
			}
            return false;
        });

        // 即时验证表单输入项
        $fullname.bind(oninput, function(){
            verifyInput(regName, $(this));
        });
        $password.bind(oninput, function(){
            verifyInput(regPassword, $(this));
        });
        $captcha.bind(oninput, function(){
            verifyInput(regCode, $(this));
        });
        $user.bind(oninput, function(){
            verifyInput(regPhone, $(this));
        });
        $phoneCaptcha.bind(oninput, function(){
            verifyInput(regPhoneCode, $(this));
        });

        /*$repassword.bind(oninput, function(){
            verifyInput(regPassword, $(this), $password);
        });*/



        $fullname.add($password).add($captcha).add($user).add($phoneCaptcha).focusin(function(){
            var $line = $(this).parents(selLine);
            $(this).addClass(clsInputFocus);
            $line.find(selAllTips).hide();
            $line.find(selTips + ', ' + selTxttips).css({
                display: 'block'
            });
        }).focusout(function(){
            $(this).removeClass(clsInputFocus);
        }).blur(function(){
            $(this).trigger(oninput);
        });

        // 提交验证
        $registerForm.submit(function(){
        
            var notPass = [],
                postData = {};
            console.log("@@@11:");
            if ( !verifyInput(regName, $fullname) ) {
                notPass.push($fullname);
            }
            if ( !verifyInput(regPassword, $password) ) {
                notPass.push($password);
            }

 //           if ( !verifyInput(regCode, $captcha) ) {
//                notPass.push($captcha);
   //         }
             if ( !verifyInput(regPhone, $user) ) {
             notPass.push($user);
             }
			if(!$regcheckboxok.attr("checked")){
				alert('请确认已认真阅读并同意服务条款');
			}
           /* if ( !verifyInput(regPassword, $repassword) ) {
                notPass.push($repassword);
            }*/

            if ( !verifyInput(regPhoneCode, $phoneCaptcha) ) {
                notPass.push($phoneCaptcha);
            }
            if ( notPass.length > 0 ) {
                notPass[0].focus();
                return false;
            } 
            postData = $(this).serialize(); 
            $.ajax({
                type: 'POST',
                url: 'register.action',
                data: postData,
                async: false,
                //dataType: 'json',
                timeout: timer,
                success: function(msg1){
                	 alert("注册成功!");
                	 location.href='member/index.action';
                    
                },
                error: function(){
                    alert(errorInfo);
                },
                complete: function(){

                }
            });

            return false;
        });
    });
	function zc() {
			art.dialog.open('/index/zc_ok',
			  {
				title:'',
				width:550,
				lock: true,
				close:function() { 
				  location.href='/users';
				}
			  });
       }
</script>
 
</body></html>