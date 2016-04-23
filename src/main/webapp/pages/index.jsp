<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>微加(51vj.cn）- 专业企业文化交流沟通的微信平台，企业文化建设交流专家,微加、微jia。</title>
	<meta name="keywords" content="微加,微加，微jia，专业，51vj.cn,企业文化，企业内部交流沟通，微信，微信公众平台，微信公众号，微加官网，微信营销" />
	<meta name="description" content="微加(51vj.cn)，专业微信企业员工文化交流平台，腾讯战略合作伙伴，提供“平台搭建+运营+推广”服务！中国首家以微信公众平台为基础，针对企业内部交流，文化活动建设为基础服务，打造一个高效的企业内部文化交流平台。微加,在全国已拥有100+家中小企业加入并成功使用。微＋，工作生活方式。" />
	<link rel="canonical" href="http://www.51vj.cn/"/>
	<link rel="shortcut icon" href="/favicon.ico"/>
	<link type="text/css" rel="stylesheet" href="http://www.51vj.cn/css/index.min.css" />
</head>
<body>
	<div class="bg-hui h80 bb-hui02">
	  <div class="w1000 m0a clearfix pos-rel">
	  <div class="fr">
	    <div class="top-nav fl">
	    <ul>
	      <li id="index"><a href="http://www.51vj.cn">首页</a></li>
	      <li id="product"><a href="http://www.51vj.cn/about/product">产品服务</a></li>
	      <li id="help"><a href="http://www.51vj.cn/about/helpo">帮助</a></li>
	    </ul>
	    </div>
	    </div>
	    <div class="fl mt20 logo"><a href="http://www.51vj.cn"><h1>微加</h1><img src="http://www.51vj.cn/images/logo.png"  class="display-bl"></a></div>
	  </div>
	</div>
	<div class="flexslider">
		<ul class="slides">
			<li><a href="javascript:void(0);"
				style="background:url(http://www.51vj.cn/images/banner.jpg) 50% 0 no-repeat;"></a></li>
			<li><a href="javascript:void(0);"
				style="background:url(http://www.51vj.cn/images/banner01.jpg) 50% 0 no-repeat;"></a></li>
		</ul>
	</div>
	<div class="w1000 m0a feature clearfix pos-rel">
		<ul>
			<li>
				<div class="item text-center">
					<div class="feature-pic index-sprite ico-goutong"></div>
					<p class="f24 hei01 bold">沟通</p>
					<p class="f20 hui mt6">移动沟通无时无刻</p>
				</div>
			</li>
			<li>
				<div class="item text-center">
					<div class="feature-pic index-sprite ico-anquan"></div>
					<p class="f24 hei01 bold">安全</p>
					<p class="f20 hui mt6">海量通讯录云存储</p>
				</div>
			</li>
			<li>
				<div class="item text-center">
					<div class="feature-pic index-sprite ico-fx"></div>
					<p class="f24 hei01 bold">信息分享</p>
					<p class="f20 hui mt6">提高企业凝聚力</p>
				</div>
			</li>
		</ul>
		<!--登录弹框-->
		<input type="hidden" value="" id="_name" />
		<div class="pop-up01 w370 bg-hui01" style="display: block" id="div_login">
			<p class="hei01 f24 pt36 text-center ft-yahei">登录</p>
			<div class=" pt18 pb20 w300 m0a">
				<p id="msg" class="red01 text-center f14 pb10"></p>
					<input name="drexvcd" id="drexvcd" class="w278 h38 lh38 bd-hui01 br4 f14 plr10 hei01 mb10 ft-yahei" id="drexvcd" type="text" value="" placeholder="账号/手机号码"/> 
					<input name="xdsevfx" id="xdsevfx" type="password" class="  w278 h38 lh38 bd-hui01 br4 f14 plr10 hei01 ft-yahei" id="xdsevfx" placeholder="密码"/>
					<p class="f14 mt6 hui">
						<label><input type="checkbox" id="autologin" name="autologin" checked="checked" class="f12 ver-2">&nbsp;记住用户名</input></label>
					</p>
					<input id="submit_" type="button" class="f20 bai bg-lv-cur display-ib lh38 h38 bd-lv br4 text-center w298 mt16 mb16 cur-pointer ft-yahei"value="登录" />
					<p class="text-center">
						<a hrehttp://www.51vj.cn080/login/forget" class="blue f14">忘了密码?</a>
						<span class="hui02 plr10">|</span>
						<a href="http://www.51vj.cn/about/opinion" class="blue f14">意见反馈</a>
						<span class="hui02 plr10">|</span>
						<a href="http://www.51vj.cn/register/" class=" f14" style="color: #ff9900">注册新帐号</a>
					</p>
			</div>
		</div>
		<!--登录过后-->
		<div class="pop-up01 w370 bg-hui01" style="display: none" id="div_index">
			<p class="hei01 f24 pt36 text-center bb-hui01 ptb16  w300 m0a">欢迎使用微加</p>
			<div class="pb40 w300 m0a">
				<div class="clearfix mt30">
					<img src="" width="60" height="60" id="logo" class="display-bl br100 fl ml25" />
					<div class="fl  pl28">
						<p class="f14 lh30">您现在使用的账户是：</p>
						<p class="f16 lh30 huang bold" id="loginName"></p>
					</div>
				</div>
				<a href="http://www.51vj.cn/login/index"
					class="f20 bai bg-huang-cur display-ib lh38 h38 bd-huang01 br4 text-center w298  mb16 mt40">进入我的微加</a>
			</div>
		</div>
	</div>
	<div class="w1000 footer bt-hui02 m0a text-center">
	    <p class="hui">杭州博科思科技有限公司    ©版权所有    浙ICP备05076402号-17</p>
	    <p class="mt12 hui">Copyright© 2003-2014 Box Technology Co.,Ltd. All Rights Reserved</p>
	  </div>
  <script type="text/javascript" src="http://www.51vj.cn/js/index.min.js"></script>
  <script type="text/javascript">
	$(document).ready(function() {
		$("#xdsevfx").val("");
		$('.flexslider').flexslider({
			directionNav : true,
			pauseOnAction : false
		});
		document.onkeydown = function(){  if(event.keyCode==13) document.getElementById("submit_").click(); }
		$("#submit_").click(sub);
		getLoginStat();
	}); 
	
	function getLoginStat(){
		$.ajax({
			url:"http://localhost:8080/login/login_x",
			type : "post",
			data:{drexvcd:$("#drexvcd").val(),xdsevfx:$("#xdsevfx").val(),autologin:$("#autologin").val(),},
			success:function(data){
				aaa=data;
				var msg = data.msg;
				if(msg==1||msg=="1"){
					$("#div_login").hide();
					$("#div_index").show();
					$("#loginName").html(data.name);
					$("#logo").attr("src","http://192.168.1.209:8888/images/"+data.logo);
				}
			}
		})
	}
	function sub() {
		if ($.trim($("#drexvcd").val()).length <= 0) {
			$("#drexvcd").addClass("inp-error");
			$("#msg").html("用户名不能为空!");
			return false;
		}
		if ($.trim($("#xdsevfx").val()).length <= 0) {
			$("#drexvcd").removeClass("inp-error");
			$("#xdsevfx").addClass("inp-error");
			$("#msg").html("密码不能为空!");
			return false;
		}
		if($.trim($("#xdsevfx").val()).length<30){
		    $("#xdsevfx").val($.md5($.trim($("#xdsevfx").val())));
			$("#drexvcd").removeClass("inp-error");
			$("#xdsevfx").removeClass("inp-error");
			$.ajax({
				url:"${webPath}login/login_x",
				type : "post",
				data:{drexvcd:$("#drexvcd").val(),xdsevfx:$("#xdsevfx").val(),autologin:$("#autologin").val(),},
				success:function(data){
					var msg = data.msg;
					if(msg==3||msg=="3"){
						$("#msg").html("用户名或密码错误!");
						return false;
					}
					if(msg==1||msg=="1"||msg==2||msg=="2"){
						$("#msg").html("登陆成功!");
					}
					window.location.href="${webPath}login/main";
				}
			})
		}
	}
	//eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('j A(){c($.d($("#6").4()).h<=0){$("#6").m("8-9");$("#7").e("用户名不能为空!");f g}c($.d($("#5").4()).h<=0){$("#6").i("8-9");$("#5").m("8-9");$("#7").e("密码不能为空!");f g}c($.d($("#5").4()).h<u){$("#5").4($.w($.d($("#5").4())));$("#6").i("8-9");$("#5").i("8-9");$.y({z:"F://B.n.o/k/q",r:"s",t:{6:$("#6").4(),5:$("#5").4(),l:$("#l").4(),},v:j(a){x b=a.7;c(b==3||b=="3"){$("#7").e("用户名或密码错误!");f g}c(b==1||b=="1"||b==2||b=="2"){$("#7").e("登陆成功!")}C.D.E="/k/p"}})}}',42,42,'||||val|xdsevfx|drexvcd|msg|inp|error|||if|trim|html|return|false|length|removeClass|function|login|autologin|addClass|51vj|cn|main|login_x|type|post|data|30|success|md5|var|ajax|url|sub|www|window|location|href|http'.split('|'),0,{}))
</script>
</body>
</html>
