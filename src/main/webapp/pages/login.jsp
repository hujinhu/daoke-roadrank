<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="/favicon.ico" />
<title>登陆微加-微加微信办公应用</title>
<meta name="keywords" content="登陆微加,登陆微加账号,登陆使用微加" />
<meta name="description"
	content="登陆微加账号,体验和使用企业日常所需的工作沟通、企业文化建设、团队沟通协同、移动化销售管理、企业消息传达等移动化办公应用服务。" />
<link type="text/css" rel="stylesheet" href="${webPath}css/common.css">
<link type="text/css" rel="stylesheet"
	href="${webPath}css/user.css?11111">
</head>
<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?53ff79e4c39c9c53314767a66eb85cea";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>
<script type="text/javascript">
	var _mvq = _mvq || [];
	_mvq.push([ '$setAccount', 'm-43829-0' ]);

	_mvq.push([ '$logConversion' ]);
	(function() {
		var mvl = document.createElement('script');
		mvl.type = 'text/javascript';
		mvl.async = true;
		mvl.src = ('https:' == document.location.protocol ? 'https://static-ssl.mediav.com/mvl.js'
				: 'http://static.mediav.com/mvl.js');
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(mvl, s);
	})();
</script>
<style>
.kslogo {
	position: absolute;
	right: -1px;
	top: -1px;
	width: 114px;
	height: 115px;
	background: url(/images/kslogo.png) no-repeat;
}
</style>
<body>
	<!--头部-->
	<div class="header">
		<div class="top-nav">
			<ul>
				<li><a href="http://www.51vj.cn/">首页</a></li>
				<li><a href="http://www.51vj.cn/product/suite-ydbg.html">产品</a></li>
				<li><a href="http://www.51vj.cn/custom.html">定制</a></li>
				<li><a href="http://www.51vj.cn/news/hyzx.html">资讯</a></li>
				<li><a href="http://www.51vj.cn/helps/helps_index.html">帮助</a></li>
				<li><a href="http://www.51vj.cn/about.html">关于我们</a></li>

			</ul>
			<!--已登录<p class="fl huang mt26 ml20 w110 ell f14">杭州博科思科技有限公司</p>
       <a href="javascript:void(0)" class="fl f14 bai display-ib lh36 bg-lv-cur1 br4 text-center w78 mt16 ml10">进入</a>
    -->
			<a href="/register"
				class="fl f14 bai bg-huang-cur1 display-ib lh36  br4 text-center w78  mt16 ml30">注册</a>
			<a href="/login" onclick="openDiv(4)"
				class="fl f14 bai display-ib lh36 bg-lv-cur1 br4 text-center w78 mt16 ml10">登录</a>
		</div>
		<div class="logo">
			<a href="/"><h1>微加</h1>
				<img src="/images/logo.png" class="display-bl" /></a> <a
				href="https://qy.weixin.qq.com/cgi-bin/3rd_info?action=getinfo&t=third%2F3rd_isp_cert&uin=591000143"><img
				src="https://res.wx.qq.com/mmocbiz/zh_CN/tmt/home/dist/img/cert_logo_white_l_740149be.png"
				alt="企业号登录" /></a>

		</div>
	</div>
	<!--登录微加-->
	<div class="user-bg">
		<div class="w1000 m0a">
			<div class="login-cont m0a pos-rel">
				<a class="kslogo"
					href="https://qy.weixin.qq.com/cgi-bin/loginpage?corp_id=wxd1165b872e863a03&redirect_uri=http%3a%2f%2fwww.51vj.cn%2flogin%2fredrURL&state=1"></a>
				<h2>登录微加</h2>
				<div class="login-form">
					<div class="ui-p">
						<input class="ui-input input_field" type="text" id="drexvcd"
							name="drexvcd" value="${drexvcd}"> <label
							class="input-label"> <span class="label-content">账号</span>
						</label>
					</div>
					<div class="ui-p">
						<input class="ui-input input_field" type="password" id="xdsevfx"
							name="xdsevfx"> <label class="input-label"> <span
							class="label-content">密码</span>
						</label>
					</div>
					<div class="mt30 clearfix f14">
						<label> <input id="autologin" name="autologin"
							type="checkbox" checked="checked" class="ver-2 mr8">记住账号
						</label> <a class="fr blue1" href="/login/forget">忘记密码 </a>
					</div>
					<a href="javascript:void(0);" class="step-btn display-bl mt20"
						id="nextbtn">登录</a>
					<p class="text-right f14 hui pt18 bt-hui03 mt40">
						还没有账号？立即<a class="blue1" href="/register">免费注册</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!--版权-->
	<!--版权-->
	<div class="footer02">
		<div class="footer02-cont clearfix">
			<ul>


				<li class="li1">
					<h3>微加产品</h3>
					<p>
						<a href="http://www.51vj.cn/product/suite-ydbg.html">套件介绍</a>
					</p>
					<p>
						<a href="http://www.51vj.cn/product/txl.html">产品介绍</a>
					</p>
				</li>
				<li class="li1">
					<h3>最新资讯</h3>
					<p>
						<a href="http://www.51vj.cn/news/hyzx.html">行业资讯</a>
					</p>
					<p>
						<a href="http://www.51vj.cn/news/vjdt.html">微加动态</a>
					</p>
				</li>
				<li class="li2">
					<h3>关于我们</h3>
					<p>
						<a href="http://www.51vj.cn/custom.html">定制服务</a>
					</p>
					<p>
						<a href="http://www.51vj.cn/helps/helps_index.html">帮助中心</a>
					</p>
					<p>
						<a href="http://www.51vj.cn/about.html">关于我们</a>
					</p>
				</li>
				<li class="li3">
					<h3>客服热线</h3>
					<p class="tell">400-607-5151</p>
					<p class="f16 pb6 hui06">在线客服</p> <a
					href="http://wpa.qq.com/msgrd?v=3&amp;uin=800051223&amp;site=qq&amp;menu=yes"
					class="qq OnlineConsultation"><img
						src="http://www.51vj.cn/images/qq.png" width="16"
						class="ver-middle mr5" alt="微信企业号">在线咨询</a>
				</li>
				<li class="li4">
					<h3>扫码关注微信公众号</h3>
					<p>
						<img src="http://www.51vj.cn/images/erweima.jpg" width="140"
							alt="微信企业号">
					</p>
				</li>
			</ul>
		</div>
		<p class="copyright">© 2003-2015 Box Technology Co.,Ltd.
			杭州博科思科技有限公司 浙ICP备05076402号</p>
	</div>

	<script type="text/javascript" src="${webPath}js/login.min.js"></script>
	<script type="text/javascript" src="${webPath}js/OnlineConsultation.js"></script>
	<script src="${webPath}js/classie.js"></script>
	<script>
		var webpath_x = '${webPath}';
		//登录验证
		function input_val(val) {
			$(val).parent().addClass('input--error');//添加错误红边框线红文字的状态
			$('#nextbtn').addClass('step-btn-error');//按钮变红色
		}
		
		$(function() {
			$('#nextbtn').click(function() {
				var c = this;
				if ($.trim($("#drexvcd").val()).length <= 0) {
					$("#drexvcd").focus();
					input_val('#drexvcd');
					$(this).text('用户名不能为空');
					setTimeout(function() {
						$('#nextbtn').text('登录');
						$('#nextbtn').removeClass('step-btn-error')
					}, 1000);
					return
				}
				$("#drexvcd").parent().removeClass('input--error');
				if ($.trim($("#xdsevfx").val()).length <= 0) {
					$("#xdsevfx").focus();
					input_val('#xdsevfx');
					$(this).text('密码不能为空');
					setTimeout(function() {
						$('#nextbtn').text('登录');
						$('#nextbtn').removeClass('step-btn-error')
					}, 1000);
					return
				}
				$("#drexvcd").parent().removeClass('input--error');
				if ($.trim($("#xdsevfx").val()).length < 30) $("#xdsevfx").val($.md5($.trim($("#xdsevfx").val())));
				$.ajax({
					url: webpath_x + "/login/login_x",
					type: "post",
					data: {
						drexvcd: $("#drexvcd").val(),
						xdsevfx: $("#xdsevfx").val(),
						autologin: $("#autologin").val()
					},
					timeout: 10 * 1000,
					success: function(a) {
						var b = a.msg;
						if (b == 3 || b == "3") {
							$(c).addClass('step-btn-error');
							$(c).text("用户名或密码错误!");
							setTimeout(function() {
								$('#nextbtn').text('登录');
								$('#nextbtn').removeClass('step-btn-error')
							}, 1000);
							return false
						}
						if (b == 1 || b == "1" || b == 2 || b == "2") {
							$(c).text("登陆成功，正在跳转...")
						}
						window.location.href = webpath_x + "/login/main"
					},
					error: function() {
						$(this).text("网络异常，请稍后重试。");
						return false
					}
				})
			})
		});
		
		//表单元素显示隐藏文本
		
		function input_field() {
			if(!document.querySelectorAll) return;
			
			[].slice.call(document.querySelectorAll('input.input_field'))
					.forEach(function(inputEl) {
						if (inputEl.value.trim() !== '') {
							classie.add(inputEl.parentNode, 'input--filled');
						}
						inputEl.addEventListener('focus', onInputFocus);
						inputEl.addEventListener('blur', onInputBlur);
					});

			function onInputFocus(ev) {
				classie.add(ev.target.parentNode, 'input--filled');
			}
			function onInputBlur(ev) {
				if (ev.target.value.trim() === '') {
					classie.remove(ev.target.parentNode, 'input--filled');
				}
			}
		}
		input_field();

		$(document).ready(function() {
			$("#xdsevfx").val("");
			document.onkeydown = function() {
				if (event.keyCode == 13)
					document.getElementById("nextbtn").click();
			}
		});
	</script>
</body>
</html>
