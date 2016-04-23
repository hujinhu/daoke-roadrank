<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>注册微加,开通微加账号-微加微信办公应用</title>
  <meta name="keywords" content="注册微加,开通微加账号,注册申请微加账号,微信企业号申请,微信企业账号申请" />
  <meta name="description" content="免费注册微加账号，为企业提供了基于微信的移动化办公应用服务,满足企业日常所需的工作沟通、企业文化建设、团队沟通协同、移动化销售管理、企业消息传达等。" /> 
<link rel="shortcut icon" href="/favicon.ico"/>
<link type="text/css" rel="stylesheet" href="${ctx}/css/common.css?2222">
<link type="text/css" rel="stylesheet" href="${ctx}/css/user.css?33333">
<link rel="stylesheet" href="${ctx}/css/register.css"/>


<script type="text/javascript">
var yodao_conversion_id = "282052";
var yodao_conversion_label = "landing";
</script>
<script language="JavaScript" src="http://a.youdao.com/conv/conversion.js">
</script>
<noscript>
<img height=0 width=0 border=0 src="http://a.youdao.com/conv/282052/imp.gif?value=1&label=landing">
</noscript>
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
_mvq.push(['$setAccount', 'm-43829-0']);

_mvq.push(['$logConversion']);
(function() {
var mvl = document.createElement('script');
mvl.type = 'text/javascript'; mvl.async = true;
mvl.src = ('https:' == document.location.protocol ? 'https://static-ssl.mediav.com/mvl.js' : 'http://static.mediav.com/mvl.js');
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(mvl, s);
})();

</script>
<body>

<!--头部-->
     <div class="header">
      <div class="top-nav">
        <ul>
				<li ><a href="http://www.51vj.cn/">首页</a></li>
		        <li ><a href="http://www.51vj.cn/product/suite-ydbg.html">产品</a></li>
		        <li ><a href="http://www.51vj.cn/custom.html">定制</a></li>
		        <li ><a href="http://www.51vj.cn/news/hyzx.html">资讯</a></li>
		        <li ><a href="http://www.51vj.cn/helps/helps_index.html">帮助</a></li>
		        <li ><a href="http://www.51vj.cn/about.html">关于我们</a></li>
        </ul>
    <!--已登录<p class="fl huang mt26 ml20 w110 ell f14">杭州博科思科技有限公司</p>
       <a href="javascript:void(0)" class="fl f14 bai display-ib lh36 bg-lv-cur1 br4 text-center w78 mt16 ml10">进入</a>
    -->   <a href="/register" class="fl f14 bai bg-huang-cur1 display-ib lh36  br4 text-center w78  mt16 ml30">注册</a>
       <a href="/login" class="fl f14 bai display-ib lh36 bg-lv-cur1 br4 text-center w78 mt16 ml10">登录</a>
        </div>
           <div class="logo">
    	<a href="/"><h1>微加</h1><img src="/images/logo.png" class="display-bl" /></a>
    	<a href="https://qy.weixin.qq.com/cgi-bin/3rd_info?action=getinfo&t=third%2F3rd_isp_cert&uin=591000143"><img src="https://res.wx.qq.com/mmocbiz/zh_CN/tmt/home/dist/img/cert_logo_white_l_740149be.png" alt="企业号登录"/></a>
    
    </div>
    </div>
<!--登录微加-->
<div class="user-bg">
    <div class="w1000 m0a bg-bai bd-hui br6 pb60">
        <div id="regist">
            <h2>欢迎注册微加</h2>
            <!-- <p class="text-center f16 hui09 lh24">注册成功后您将<span class="lv">免费使用</span>微加5天</p> -->
            <div class="section">
                <p class="step1 f14">1.创建账户</p>
                <p class="step2 f14">2.登记信息</p>
            </div>
            <div class="over-hidden pt20 chuangjian">
            <div class="regform">
                <div class="ui-p">
                    <input id="accountNameId" onBlur="checkAccountName()" value="${email}" class="ui-input input_field" type="text">
                    <label class="input-label">
                        <span class="label-content">账号</span>
                    </label>
                    <p class="tips pt45 f14 hui09" id="accountNameTextId"><span class="dagou"></span>请输入4~20个字符，可使用字母、数字、下划线，需以字母开头</p>
                </div>
                <div class="ui-p">
                    <input id="passwordId" onBlur="checkPassword()"  class="ui-input input_field" type="password">
                    <label class="input-label">
                        <span class="label-content">密码</span>
                    </label>
                    <p class="tips pt45 f14 hui09" id="passwordTextId"><span class="dagou t45"></span>请输入数字+英文组合的密码，密码长度为6-16个字符</p>
                </div>
                <div class="ui-p">
                    <input id="repasswordId" onBlur="checkRePassword()" class="ui-input input_field" type="password">
                    <label class="input-label">
                        <span class="label-content">确认密码</span>
                    </label>
                    <p class="tips lh50 f14 hui09" id="repasswordTextId" ><span class="dagou"></span>请再次输入密码</p>
                </div>
                <div class="ui-p">
                    <input id="phoneId"  onBlur="checkPhone()" class="ui-input input_field" type="text">
                    <label class="input-label">
                        <span class="label-content">手机号</span>
                    </label>
                    <p id="phoneTextId" class="tips lh50 f14 hui09"><span class="dagou"></span>请输入11位手机号码</p>
                </div>
                <div class="ui-p clearfix">
                    <input id="imgCode" class="ui-input input_field fl" type="text" style="width:150px" maxlength="4">
                    <label class="input-label">
                        <span class="label-content">请输入图形验证码</span>
                    </label>
                    <img class="fl" src="${ctx}/validCode/index"  onClick="this.src='${ctx}/validCode/index?'+Math.random()" alt="验证码" title="看不清？点击更换一张" width="130" height="50" style="cursor: pointer;">
                    <input id="fasong-yzm" onClick="sendMsg()" type="button" class="cur-pointer bai h50 lh50 text-center f16 bg-lv ft-yahei bdnone ml7 fl" value="获取验证码" style="width:105px">
                    <!-- <p id="codeTextId" class="tips pt45 f14 hui09 mtf40">请输入您收到的4位验证码，验证码24小时内有效</p> -->
                    <p id="codeTextId" class="tips pt45 f14 hui09 mtf40"></p>
                </div>
                
                <div class="ui-p">
                    <input id="validateCodeId"  onBlur="checkValidateCode()" class="ui-input input_field" type="text">
                    <label class="input-label">
                        <span class="label-content">请输入验证码</span>
                    </label>
                    <p id="phoneTextId" class="tips lh50 f14 hui09"><span class="dagou"></span>请输入验证码</p>
                </div>

				<p class=" over-hidden pos-rel pt20 pb20 hui"><input type="checkbox" checked="checked" class="f12 ver-2" id="yiyuedu"><label class="f14" for="yiyuedu">&nbsp;我已阅读并接受<a href="javascript:void(0)" onclick="openDiv(1)" class="blue1 f14">《微加服务条款》</a></label></p>
                <a  href="javascript:void(0);" onclick="nextPage()" class="step-btn display-bl xiayibu">下一步</a>
            </div>
            </div>
            <div class="over-hidden pt20 dengji display-no">
                <div class="regform">
                    <div class="ui-p">
                        <input id="companyName" onblur="checkCompanyName()" value="${companyName}" class="ui-input input_field" type="text">
                        <label class="input-label">
                            <span class="label-content">企业名称</span>
                        </label>
                        <p class="tips pt45 f14 hui09" id="companyNameMsg"><span class="dagou"></span>6~36个字符，可使用汉字、字母、数字或组合的方式</p>
                    </div>
                    <div class="ui-p">
                        <select id="companyDist" onchange="checCompINF('companyDist')" class="selection">
                            <option value="-1">请选择企业所在地</option>
                            	<option value="1">北京</option>
								<option value="2">上海</option>
								<option value="3">天津</option>
								<option value="4">重庆</option>
								<option value="5">河北省 </option>
								<option value="6">山西省</option>
								<option value="7">内蒙古自治区</option>
								<option value="8">黑龙江省</option>
								<option value="9">吉林省</option>
								<option value="10">辽宁省         </option>
								<option value="11">陕西省         </option>
								<option value="12">甘肃省         </option>
								<option value="13">青海省         </option>
								<option value="14">新疆维吾尔自治区</option>
								<option value="15">宁夏回族自治区 </option>
								<option value="16">山东省         </option>
								<option value="17">河南省         </option>
								<option value="18">江苏省         </option>
								<option value="19">浙江省         </option>
								<option value="20">安徽省         </option>
								<option value="21">江西省         </option>
								<option value="22">福建省         </option>
								<option value="23">台湾省         </option>
								<option value="24">湖北省         </option>
								<option value="25">湖南省         </option>
								<option value="26">广东省         </option>
								<option value="27">广西壮族自治区 </option>
								<option value="28">海南省         </option>
								<option value="29">四川省         </option>
								<option value="30">云南省         </option>
								<option value="31">贵州省         </option>
								<option value="32">西藏自治区     </option>
								<option value="33">香港           </option>
								<option value="34">澳门           </option>
                        </select>
                        <p class="tips lh50 pt27 f14 hui09 mtf70" id="companyDistMsg"><span class="dagou t45"></span>请选择企业所在地</p>
 						<div style="display:none;"><span class="dagou t45"></span>请选择企业所在地</div>
                    </div>
                    <div class="ui-p">
                        <select id="companySize" onchange="checCompINF('companySize')" class="selection">
                            <option value="-1">请选择企业规模</option>
					        <option value="1">1-10人</option>
							<option value="2">10-50人</option>
							<option value="3">50-100人</option>
							<option value="4">101-200人</option>
							<option value="5">201-500人</option>
							<option value="6">500人以上</option>
                        </select>
                        <p class="tips lh50 f14 hui09" id="companySizeMsg"><span class="dagou"></span>请选择企业规模</p>
					<div style="display:none;"><span class="dagou"></span>请选择企业规模</div>
                    </div>
                    <div class="ui-p">
                        <select onchange="checCompINF('industryType')" id="industryType" class="selection">
                            <option value="-1">请选择所属行业</option>
                            	<option value="0">互联网/电子商务</option>
								<option value="1">房地产/建筑/建材/工程</option>
								<option value="2">旅游/度假</option>
								<option value="3">酒店/餐饮</option>
								<option value="4">电子技术/半导体/集成电路</option>
								<option value="5">计算机硬件</option>
								<option value="6">IT服务(系统/数据/维护)</option>
								<option value="7">通信/电信/网络设备</option>
								<option value="8">通信/电信运营、增值服务</option>
								<option value="9">网络游戏</option>
								<option value="10">基金/证券/期货/投资</option>
								<option value="11">保险</option>
								<option value="12">银行</option>
								<option value="13">信托/担保/拍卖/典当</option>
								<option value="14">家居/室内设计/装饰装潢</option>
								<option value="15">物业管理/商业中心</option>
								<option value="16">专业服务/咨询(财会/法律/人力资源等</option>
								<option value="17">广告/会展/公关</option>
								<option value="18">中介服务</option>
								<option value="19">检验/检测/认证</option>
								<option value="20">快速消费品（食品/饮料/烟酒/日化   </option>
								<option value="21">耐用消费品（服饰/纺织/皮革/家具/家</option>电）
								<option value="22">贸易/进出口</option>
								<option value="23">零售/批发</option>
								<option value="24">租赁服务</option>
								<option value="25">教育/培训/院校 </option>
								<option value="26">礼品/玩具/工艺美术/收藏品/奢侈品  </option>
								<option value="27">汽车/摩托车</option>
								<option value="28">大型设备/机电设备/重工业 </option>
								<option value="29">加工制造（原料加工/模具） </option>
								<option value="30">仪器仪表及工业自动化</option>
								<option value="31">印刷/包装/造纸</option>
								<option value="32">办公用品及设备</option>
								<option value="33">医药/生物工程</option>
								<option value="34">医疗设备/器械</option>
								<option value="35">航空/航天研究与制造</option>
								<option value="36">交通/运输 </option>
								<option value="37">物流/仓储 </option>
								<option value="38">医疗/护理/美容/保健/卫生服务</option>
								<option value="39">媒体/出版/影视/文化传播 </option>
								<option value="40">娱乐/体育/休闲 </option>
								<option value="41">能源/矿产/采掘/冶炼</option>
								<option value="42">石油/石化/化工</option>
								<option value="43">环保</option>
								<option value="44">政府/公共事业/非盈利机构 </option>
								<option value="45">学术/科研</option>
								<option value="46">农/林/牧/渔</option>
								<option value="47">跨领域经营</option>
								<option value="48">其他 </option>
                        </select>
                        <p class="tips lh50 f14 hui09" id="industryTypeMsg"><span class="dagou"></span>请选择所属行业</p>
						<div style="display:none;"><span class="dagou"></span>请选择所属行业</div>
                    </div>
                    <div class="ui-p">
                        <input id="contactPerson" onblur="checCompINF('contactPerson')" class="ui-input input_field" type="text">
                        <label class="input-label">
                            <span class="label-content">联系人</span>
                        </label>
                        <p class="tips pt45 f14 hui09 mtf70" id="contactPersonMsg"><span class="dagou"></span>请输入联系人姓名</p>
                    	<div style="display:none;"><span class="dagou"></span>请输入联系人姓名</div>
                    </div>
                    <p class="mt30"><a id="register"  href="javascript:void(0);" class="step-btn display-bl mt6" onclick="checCompINF('all')">提交</a></p>
                </div>

            </div>
            <p class="text-right f14 hui pt18 bt-hui03 mt40">已有账号？<a class="blue1" href="/login">立即登录</a></p>
        </div>
   </div>
</div>
<!--协议-->
<div class="pop-up w540 bg-hui01" id="alertdiv1">
    <div class="fr h30 clearfix">
        <span class="icon-bg ico-line display-ib fl mr14"></span>
        <a href="javascript:closeDiv(1)" class="ico-close close-bg display-ib mt10 fl"></a>
    </div>
    <p class="hei01 f20 pt36 text-center">微+服务使用协议</p>
    <div  style="height:280px; width:480px;overflow-y:auto" class="hei01 m0a bd-hui01 mt26 plr10 lh20 pb10">
        <h3 class="text-center f14 mt14">微+服务协议</h3>
        <p><strong>1　接受条款</strong> </p>
<p>微加根据以下服务条款为您提供服务。这些条款可由微加随时更新，且毋须另行通知。微加使用协议（以下简称“使用协议”）一旦发生变动，微加将在网页上公布修改内容。修改后的使用协议一旦在网页上公布即有效代替原来的使用协议。此外，当您使用微加特殊服务时，您和微加应遵守微加随时公布的与该服务相关的指引和规则。前述所有的指引和规则，均构成本使用协议的一部分。</p>
<p>您在使用微加提供的各项服务之前，应仔细阅读本使用协议。如您不同意本使用协议及/或随时对其的修改，请您立即停止使用微加网所提供的全部服务；您一旦使用微加服务，即视为您已了解并完全同意本使用协议各项内容，包括微加对使用协议随时所做的任何修改，并成为微加用户（以下简称“用户”） </p>
<p><strong>2　服务说明</strong> </p>
<p>微加目前向用户提供如下服务：公告栏、通讯录、微社区，增加或强化目前本服务的任何新功能，包括所推出的新产品，均受到本使用协议之规范。您了解并同意，本服务仅依其当前所呈现的状况提供，对于任何用户信息或个人化设定之时效、删除、传递错误、未予储存或其它任何问题，微加均不承担任何责任。微加保留不经事先通知为维修保养、升级或其它目的暂停本服务任何部分的权利。 </p>
  <p><strong>3　遵守法律</strong> </p>
<p>您同意遵守中华人民共和国相关法律法规的所有规定，并对以任何方式使用您的密码和您的帐号使用本服务的任何行为及其结果承担全部责任。如您的行为违反国家法律和法规的任何规定，有可能构成犯罪的，将被追究刑事责任，并由您承担全部法律责任。</p>
<p>同时如果微加有理由认为您的任何行为，包括但不限于您的任何言论和其它行为违反或可能违反国家法律和法规的任何规定，微加可在任何时候不经任何事先通知终止向您提供服务。 </p>
  <p><strong>4　您的注册义务</strong> </p>
<p>为了能使用本服务，您同意以下事项：依本服务注册提示请您填写正确的注册邮箱、密码和名号，并确保今后更新的登录邮箱、名号、头像等资料的有效性和合法性。若您提供任何违法、不道德或微加认为不适合在微加上展示的资料；或者微加有理由怀疑你的资料属于程序或恶意操作，微加有权暂停或终止您的帐号，并拒绝您于现在和未来使用本服务之全部或任何部分。</p>
<p>微加无须对任何用户的任何登记资料承担任何责任，包括但不限于鉴别、核实任何登记资料的真实性、正确性、完整性、适用性及/或是否为最新资料的责任。</p>
  <p><strong>5　用户帐号、密码及安全</strong> </p>
<p>完成本服务的注册程序并成功注册之后，您可使用您的用户名、手机和密码，登录到您在微加的帐号（下称“帐号”）。保护您的帐号安全，是您的责任。</p>
  <p>您应对所有使用您的密码及帐号的活动负完全的责任。您同意：</p>
  <p>1）您的微加帐号遭到未获授权的使用，或者发生其它任何安全问题时，您将立即通知微加；</p>
  <p>2）如果您未保管好自己的帐号和密码，因此而产生的任何损失或损害，微加无法也不承担任何责任；</p>
  <p>3）每个用户都要对其帐号中的所有行为和事件负全责。如果您未保管好自己的帐号和密码而对您、微加或第三方造成的损害，您将负全部责任。</p>
   <p><strong>6　微加隐私权政策</strong> </p>
<p>您提供的登记资料及微加保留的有关您的若干其它资料将受到中国有关隐私的法律和本公司《隐私声明》之规范。<p>
  <p><strong>7　提供者之责任</strong> </p>
<p>根据有关法律法规，微加在此郑重提请您注意，任何经由本服务而发布、上传的文字、资讯、资料、音乐、照片、图形、视讯、信息或其它资料（以下简称“内容 ”），无论系公开还是私下传送，均由内容提供者承担责任。微加仅为用户提供内容存储空间，无法控制经由本服务传送之内容，因此不保证内容的正确性、完整性或品质。您已预知使用本服务时，可能会接触到令人不快、不适当或令人厌恶之内容。在任何情况下，微加均不为任何内容负责，但微加有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停用户使用本服务的全部或部分，保存有关记录，并向有关机关报告。<p>
 <p><strong>8　用户行为</strong> </p>
<p>用户同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶<p>
<p>1）发布或以其它方式传送含有下列内容之一的信息：<p>
<p>• 反对宪法所确定的基本原则的；<p>
<p>• 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<p>
<p>• 损害国家荣誉和利益的；<p>
<p>• 煽动民族仇恨、民族歧视、破坏民族团结的；<p>
<p>• 破坏国家宗教政策，宣扬邪教和封建迷信的；<p>
<p>• 散布谣言，扰乱社会秩序，破坏社会稳定的；<p>
<p>• 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<p>
<p>• 侮辱或者诽谤他人，侵害他人合法权利的；<p>
<p>• 含有虚假、诈骗、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容；<p>
<p>• 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；<p>
<p>• 含有微加认为不适合在微加展示的内容；<p>
<p>　2）以任何方式危害他人的合法权益<p>
<p>　3）冒充其他任何人或机构，或以虚伪不实的方式陈述或谎称与任何人或机构有关；<p>
<p>　4）将依据任何法律或合约或法定关系（例如由于雇佣关系和依据保密合约所得知或揭露之内部资料、专属及机密资料）知悉但无权传送之任何内容加以发布、发送电子邮件或以其它方式传送；<p>
<p>　5）将侵害他人著作权、专利权、商标权、商业秘密、或其它专属权利（以下简称“专属权利”）之内容加以发布或以其它方式传送；<p>
<p>　6）将任何广告信函、促销资料、“垃圾邮件”、““滥发信件”、“连锁信件”、“直销”或其它任何形式的劝诱资料加以发布、发送或以其它方式传送；<p>
<p>　7）将设计目的在于干扰、破坏或限制任何计算机软件、硬件或通讯设备功能之计算机病毒（包括但不限于木马程序（trojan horses）、蠕虫（worms）、定时炸弹、删除蝇（cancelbots）（以下简称“病毒”）或其它计算机代码、档案和程序之任何资料，加以发布、发送或以其它方式传送；<p>
<p>　8）干扰或破坏本服务或与本服务相连线之服务器和网络，或违反任何关于本服务连线网络之规定、程序、政策或规范；<p>
<p>　9）跟踪、人肉搜索或以其它方式骚扰他人；<p>
<p>　10）故意或非故意地违反任何适用的当地、国家法律，以及任何具有法律效力的规则；<p>
<p>　11）未经合法授权而截获、篡改、收集、储存或删除他人个人信息、站内邮件或其它数据资料，或将获知的此类资料用于任何非法或不正当目的。<p>
<p>　您已认可微加未对用户的使用行为进行全面控制，您使用任何内容时，包括依赖前述内容之正确性、完整性或实用性时，您同意将自行加以判断并承担所有风险，而不依赖于微加。但微加依其自行之考虑，拒绝和删除可经由本服务提供之违反本条款的或其它引起微加反感的任何内容。<p>
<p>　您了解并同意，微加依据法律法规的要求，或基于诚信为了以下目的或在合理必要范围内，认定必须将内容加以保存或揭露时，得加以保存或揭露：<p>
<p>　a）遵守法律程序；<p>
<p>　b）执行本使用协议；<p>
<p>　c）回应任何第三人提出的权利主张；<p>
<p>　d）保护微加、其用户及公众之权利、财产或个人安全；<p>
<p>　e）其它微加认为有必要的情况。<p>
<p><strong>9　国际使用之特别警告</strong> </p>
<p>您已了解国际互联网的无国界性，同意遵守当地所有关于网上行为及内容之法律法规。您特别同意遵守有关从中国或您所在国家或地区输出信息之传输的所有适用法律法规。 </p>
<p><strong>10　在微加发布的公开信息</strong> </p>
<p>1）在本使用协议中，“本服务公开使用区域”系指一般公众可以使用的区域；</p>
<p>2）用户在微加上传或发布的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益，用户同意授予微加所有上述内容在全球范围内的免费、不可撤销的、无期限限制的、可再许可或转让的独家使用权许可，据该许可微加将有权以展示、推广及其他不为我法律所禁止的方式使用前述内容。</p>
<p><strong>11　赔偿</strong> </p>
<p>由于您通过本服务提供、发布或传送之内容、您与本服务连线、您违反本使用协议、或您侵害他人任何权利因而衍生或导致任何第三人提出任何索赔或请求，包括合理的律师费，您同意赔偿微加及其子公司、关联企业、高级职员、代理人、品牌共有人或其它合作伙伴及员工，并使其免受损害，并承担由此引发的全部法律责任。</p>
<p><strong>12　服务之修改</strong> </p>
<p>微加有权于任何时间暂时或永久修改或终止本服务（或其任何部分），且无论通知与否。您同意对于本服务所作的任何修改、暂停或终止，微加对您和任何第三人均无需承担任何责任。 </p>
<p><strong>13　终止服务</strong> </p>
<p>您同意微加基于其自行之考虑，因任何理由，包含但不限于缺乏使用，或微加认为您已经违反本使用协议的文字及精神，终止您的帐号或本服务之使用（或服务之任何部分），并将您在本服务内任何内容加以移除并删除。您同意依本使用协议任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并同意，微加可立即关闭或删除您的帐号及您帐号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若本服务之使用被中断或终止或您的帐号及相关信息和文件被关闭或删除，微加对您或任何第三人均不承担任何责任。 </p>
<p><strong>14　与广告商及其他第三方进行交易</strong> </p>
<p>您通过本网站与广告商及其他第三方进行任何形式的通讯或商业往来，或参与促销活动，包含相关商品或服务之付款及交付，以及达成的其它任何相关条款、条件、保证或声明，完全为您与广告商及其他第三方之间之行为。您因前述任何交易或前述广告商及其他第三方而遭受的任何性质的损失或损害，微加对此不负任何法律责任。 </p>
<p><strong>15　微加之专属权利</strong> </p>
<p>您了解并同意，本服务及本服务所使用之相关软件（以下简称“软件”）含有受到相关知识产权及其它法律保护之专有保密资料。您也了解并同意，经由本服务或广告商向您呈现之赞助广告或信息所包含之内容，亦受到著作权、商标权、服务商标、专利权或其它专属权利之法律保护。未经微加或广告商明示授权，您不得修改、出租、出借、出售、散布本服务或软件之任何部份或全部，或据以制作衍生著作，或使用擅自修改后的软件，包括但不限于为了未经授权而使用本服务之目的。微加仅授予您个人、不可移转及非专属之使用权，使您得于单机计算机使用其软件之目的码，但您不得（并不得允许任何第三人）复制、修改、创作衍生著作、进行还原工程、反向组译，或以其它方式发现原始码，或出售、转让、再授权或提供软件设定担保，或以其它方式移转软件之任何权利。您同意将通过由微加所提供的界面而非任何其它途径使用本服务。</p>
<p><strong>16　担保与保证</strong> </p>
<p>您明确了解并同意∶ </p>
<p>1）本使用协议的任何规定不会免除微加对造成您人身伤害的、或因故意或重大过失造成您财产损失的任何责任； </p>
<p>2）您使用本服务之风险由您个人负担。本服务系依“现状”及“现有”基础提供。微加对本服务不提供任何明示或默示的担保或保证，包含但不限于商业适售性、特定目的之适用性及未侵害他人权利等担保或保证； </p>
<p>3）微加不保证以下事项∶ </p>
<p>• 本服务将符合您的要求；</p>
<p>• 本服务将不受干扰、及时提供、安全可靠或不会出错； </p>
<p>• 使用本服务取得之结果正确可靠；</p>
<p>• 您经由本服务购买或取得之任何产品、服务、资讯或其它信息将符合您的期望；</p>
<p>4）是否使用本服务下载或取得任何资料应由您自行考虑且自负风险，因任何资料之下载而导致的您电脑系统之任何损坏或数据流失等后果，由您自行承担； </p>
<p>5）您自微加或经由本服务取得的任何建议或信息，无论是书面或口头形式，除非本使用协议有明确规定，将不构成本使用协议以外之任何保证。 </p>
<p><strong>17　责任限制</strong> </p>
<p>您明确了解并同意，基于以下原因而造成的，包括但不限于利润、信誉、应用、数据损失或其它无形损失，微加不承担任何直接、间接、附带、特别、衍生性或惩罚性赔偿责任： </p>
<p>1）本服务之使用或无法使用；</p>
<p>2）为替换从或通过本服务购买或取得之任何商品、数据、信息、服务，收到的讯息，或缔结之交易而发生的成本；</p>
<p>3）您的传输或数据遭到未获授权的存取或变造；</p>
<p>4）任何第三方在本服务中所作之声明或行为；</p>
<p>5）与本服务相关的其它事宜，但本使用协议有明确规定的除外；</p>
<p>6）第三方以任何方式发布或投递欺诈性信息，或诱导用户受到经济损失，微加不承担任何责任。</p>
<p><strong>18　微加商标信息</strong> </p>
<p>微加网、微加以及其它微加注册商标、标志及产品、服务名称，均为微加公司之商标（以下简称“微加标记”）。未经微加事先书面同意，您同意不将微加标记以任何方式展示或使用或作其它处理，或表示您有权展示、使用或另行处理微加标记。 </p>
<p><strong>19　用户专属权利</strong> </p>
<p>微加尊重他人知识产权，呼吁用户也要同样尊重知识产权。 </p>
<p>微加之服务与资料是基于“现状”提供，而且微加明确地表示拒绝对于“服务”、“资料”或“产品”给予任何明示或暗示之保证，包括但不限于，得为商业使用或适合于特定目的之保证。微加对于因“服务”、“资料”或“产品”所生之任何直接、间接、附带的或因此而导致之衍生性损失概不负责。 </p>
<p>如果您对他人的知识产权造成了侵害，微加将依国家法律法规的规定，或在适当的情形下，将依其服务条款或其相关规范性规定，删除特定内容或以至终止您对账户的使用。 </p>
<p>微加尊重他人的任何权利（包括知识产权），同时也要求我们的使用者也尊重他人之权利。微加在适当情况下，得自行决定终止侵害或违反他人权利之使用者的帐号。 </p>
<p>若您认为您的作品的著作权遭到侵害或您的知识产权被侵犯，根据《信息网络传播权保护条例》的规定，您需及时向微加联系并提供详实的举证材料。或请到中华人民共和国国家版权局下载《要求删除或断开链接侵权网络内容的通知》（下称“删除通知”）的示范格式，如果您不明白“删除通知”的内容，请登录中华人民共和国国家版权局查看《要求删除或断开链接侵权网络内容的通知》填写说明。</p>
<p><strong>20　一般条款</strong> </p>
<p>1）本使用协议、社区指导原则和免责声明构成您与微加之全部协议，并规范您对于本服务之使用行为。在您使用相关服务、使用第三方提供的内容或软件时，亦应遵从所适用之附加条款及条件； </p>
<p>2）本使用协议及您与微加之关系，均受到中华人民共和国法律管辖。您与微加就本服务、本使用协议或其它有关事项发生的争议，应首先友好协商解决，协商不成时应提请中国国际经济贸易仲裁委员会仲裁，仲裁裁决是终局性的，对双方均有约束力；</p>
<p>3）微加未行使或执行本使用协议任何权利或规定，不构成对前述权利或权利之放弃；</p>
<p>4）倘本使用协议之任何规定因与中华人民共和国法律抵触而无效，您依然同意应依照法律，努力使该规定所反映之当事人意向具备效力，且本使用协议其它规定仍应具有完整的效力及效果；</p>
<p>5）本使用协议之标题仅供方便而设，不具任何法律或契约效果；</p>
<p>6）微加对本使用协议享有最终解释权。</p>
    </div>
    <p class="m0a w300"><a href="javascript:closeDiv(1)" class="f16 bai bg-lv-cur display-ib lh38 h38 bd-lv br4 text-center w298 mt20 mb30">已阅读并同意此协议</a></p>
</div>
<!--注册成功-->
<div class="pop-up w360 bg-hui01" id="alertdiv10">
    <div class="fr h30 clearfix">
        <a href="javascript:closeDiv(10)" class="ico-close close-bg display-ib mt10 fl"></a>
    </div>
    <p class="hei01 f36 pt36 text-center lv" id="fail">网络异常,注册失败</p>
    <div  style="width:382px;" class="hei01 m0a mt26 lh20 pb24 pt30 bb-hui bt-hui03">
        <p class="pb15 f14">企业名称：<span class="hui04" id="comName"></span></p>
        <p class="pb15 f14">公司账号：<span class="hui04" id="comAcco"></span></p>
        <p class="f14">手机号码：<span class="hui04" id="phoneMM"></span></p>
    </div>
    <p class="pt15 f14 hui pl50" id="lmsg"></p>
    <p id="but01" class="m0a mt30 mb40" style="width:382px"><a href="/login" class="step-btn display-bl">立即登录</a></p>
</div>
<!--版权-->
<!--版权-->
<div class="footer02">
    <div class="footer02-cont clearfix">
        <ul>
        
        
            <li class="li1">
                <h3>微加产品</h3>
                <p><a href="http://www.51vj.cn/product/suite-ydbg.html">套件介绍</a></p>
                <p><a href="http://www.51vj.cn/product/txl.html">产品介绍</a></p>
            </li>
            <li class="li1">
                <h3>最新资讯</h3>
                <p><a href="http://www.51vj.cn/news/hyzx.html">行业资讯</a></p>
                <p><a href="http://www.51vj.cn/news/vjdt.html">微加动态</a></p>
            </li>
            <li class="li2">
                <h3>关于我们</h3>
                <p><a href="http://www.51vj.cn/custom.html">定制服务</a></p>
                <p><a href="http://www.51vj.cn/helps/helps_index.html">帮助中心</a></p>
                <p><a href="http://www.51vj.cn/about.html">关于我们</a></p>
            </li>
            <li class="li3">
                <h3>客服热线</h3>
                <p class="tell">400-607-5151</p>
                <p class="f16 pb6 hui06">在线客服</p>
                <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=800051223&amp;site=qq&amp;menu=yes"  class="qq OnlineConsultation"><img src="http://www.51vj.cn/images/qq.png" width="16" class="ver-middle mr5" alt="微信企业号">在线咨询</a> </li>
            <li class="li4">
                <h3>扫码关注微信公众号</h3>
                <p><img src="http://www.51vj.cn/images/erweima.jpg" width="140" alt="微信企业号"></p>
            </li>
        </ul>
    </div>
    <p class="copyright"> © 2003-2015 Box Technology Co.,Ltd.    杭州博科思科技有限公司   浙ICP备05076402号 </p>
</div>
 

<script type="text/javascript" src="${ctx}/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript"  src="${ctx}/js/jquery.divbox.js"></script>
<script type="text/javascript"  src="${ctx}/js/public.js"></script>
<script src="${ctx}/js/classie.js"></script>
<script type="text/javascript" src="${ctx}/js/OnlineConsultation.js"></script>
<script>
//下一步	
function nextPage(){
	if(accountNameFlag==false){
		checkAccountName();
	}
	if(passwordFlag==false){
		checkPassword();
	}
	if(rePasswordFlag==false){
		checkRePassword();
	}
	if(phoneFlag==false){
		checkPhone();
	}
	if(validateCodeFlag==false){
		checkValidateCode();
	}
	if($("#yiyuedu").attr('checked')!='checked'){
		return;
	}
	if(accountNameFlag==true && passwordFlag==true && rePasswordFlag==true	&&	phoneFlag==true	&&	validateCodeFlag==true){
            $('.step2').addClass("step3");//显示第二步
            $(".chuangjian").hide();
            $(".dengji").show();
	} 
}
	//表单元素显示隐藏文本
	function input_field() {
		[].slice.call( document.querySelectorAll( 'input.input_field' ) ).forEach( function( inputEl ) {
			if( inputEl.value.trim() !== '' ) {
				classie.add( inputEl.parentNode, 'input--filled' );
			}
			inputEl.addEventListener( 'focus', onInputFocus );
			inputEl.addEventListener( 'blur', onInputBlur );
		} );

		function onInputFocus( ev ) {
			classie.add( ev.target.parentNode, 'input--filled' );
		}
		function onInputBlur( ev ) {
			if( ev.target.value.trim() === '' ) {
				classie.remove( ev.target.parentNode, 'input--filled' );
			}
		}
	} input_field();

			
			
			
			
			
			var accountNameFlag=false;
			var companyNameFlag=false;
			var passwordFlag=false;
			var rePasswordFlag=false;
			var phoneFlag=false;
			var validateCodeFlag=false;
			
			function tongyi(){
				closeDiv(1);
				$("#chk").attr("checked","true");
			}
			
			function checkAccountName(){
				var accountName=$('#accountNameId').val();
				var strRegex = /^[a-zA-Z]{1}[0-9a-zA-Z_]{1,}$/;
				//邮箱
				var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
				<!--验证是否符合格式-->
				if(accountName.length>=4&&accountName.length<=20){
					if(strRegex.test(accountName) || reg.test(accountName)){
						var parameters = {};
						parameters['checkParam'] = accountName;
						parameters['checkType'] = 1;
							$.ajax( {
								url : '${ctx}/register/checkIfExist',
								type : 'post',
								data : parameters,
								dataType : "text",
								async:false,
								global:true,
								success : function(response) {
									if(response>0){
										$('#accountNameId').parent().removeClass("error");
										$('#accountNameId').parent().removeClass('correct').addClass("error");
										$('#accountNameTextId').html("<span class=\"dagou\"></span>该用户名已被使用");
										accountNameFlag=false;
										return false;
									}else{
										$('#accountNameId').parent().removeClass("error").addClass("correct");
										accountNameFlag=true;
										return true;
									}
								}
							});
					}else{
						$('#accountNameId').parent().removeClass("error");
						$('#accountNameId').parent().removeClass('correct').addClass("error");
						$('#accountNameTextId').html("<span class=\"dagou\"></span>请输入4~20个字符，可使用字母、数字、下划线，需以字母开头");
						accountNameFlag=false;
						return false;
					}
				}else{
					$('#accountNameId').parent().removeClass("error");
					$('#accountNameId').parent().removeClass('correct').addClass("error");
					$('#accountNameTextId').html("<span class=\"dagou\"></span>请输入4~20个字符，可使用字母、数字、下划线，需以字母开头");
					accountNameFlag=false;
					return false;
				}
			}
			function checkCompanyName(){
				var companyName=$('#companyName').val();
				if(companyName.length>0){
					if(companyName.length>=6&&companyName.length<=36){
						var parameters = {};
						parameters['checkParam'] = companyName;
						parameters['checkType'] = 2;
							$.ajax( {
								url : '${ctx}/register/checkIfExist',
								type : 'post',
								data : parameters,
								dataType : "text",
								async:false,
								global:true,
								success : function(response) {
									if(response>0){
										$('#companyName').parent().removeClass('correct').addClass("error");
										$('#companyNameMsg').html("<span class=\"dagou\"></span>该公司已经被注册");
										companyNameFlag=false;
										return false;
									}else{
										$('#companyName').parent().removeClass("error").addClass("correct");
										companyNameFlag=true;
										return true;
									}
								}
							});
					}else{
						$('#companyName').parent().removeClass('correct').addClass("error");
						$('#companyNameMsg').html("<span class=\"dagou\"></span>6~36个字符，可使用汉字、字母、数字或组合的方式");
						companyNameFlag=false;
						return false;
					}
				}else{
					$('#companyName').parent().removeClass('correct').addClass("error");
					$('#companyNameMsg').html("<span class=\"dagou\"></span>请输入公司名称！");
					companyNameFlag=false;
					return false;
				}
				}
			function checkPassword(){
				var password=$('#passwordId').val();
				var strRegex=/^(?=.*[a-zA-Z]+)(?=.*[0-9]+)[a-zA-Z0-9]+$/;
				if(password.length==0){
					$('#passwordId').parent().removeClass('correct').addClass("error");
					$('#passwordTextId').html("<span class=\"dagou t45\"></span>请输入密码");
				}else if(password.length<6){
					$('#passwordId').parent().removeClass('correct').addClass("error");
					$('#passwordTextId').html("<span class=\"dagou t45\"></span>密码长度不得短于6位");
				}else if(password.length>16){
					$('#passwordId').parent().removeClass('correct').addClass("error");
					$('#passwordTextId').html("<span class=\"dagou t45\"></span>密码长度不得长于16位");
				}else{
					if(strRegex.test(password)){
						$('#passwordId').parent().removeClass("error").addClass('correct');
						passwordFlag=true;
						return true;
					}else{
						$('#passwordId').parent().removeClass('correct').addClass("error");
						$('#passwordTextId').html("<span class=\"dagou t45\"></span>6-16位数字，必须英文和数字的组合，区分大小写");
					}
				}
				passwordFlag=false;
				return false;
			}
			
			function checkRePassword(){
				var password=$('#passwordId').val();
				var repassword=$('#repasswordId').val();
				if(repassword.length==0){
					$('#repasswordId').parent().removeClass('correct').addClass("error");
					$('#repasswordTextId').html("<span class=\"dagou\"></span>请再次输入密码");
				}else if(repassword==password){
					$('#repasswordId').parent().removeClass("error").addClass('correct');
					rePasswordFlag=true;
					return true;
				}else{
					$('#repasswordId').parent().removeClass('correct').addClass("error");
					$('#repasswordTextId').html("<span class=\"dagou\"></span>两次输入密码不一致");
				}
				rePasswordFlag=false;
				return false;
			}
			
			function checkPhone(){
				var phone=$('#phoneId').val();
				phone=phone.trim();
				var strRegex=/^1[3|4|5|8|7][0-9]\d{8}$/;
				if(strRegex.test(phone)){
					var parameters = {};
					parameters['checkParam'] = phone;
					parameters['checkType'] = 3;
						$.ajax( {
							url : '${ctx}/register/checkIfExist',
							type : 'post',
							data : parameters,
							dataType : "text",
							async:false,
							global:true,
							success : function(response) {
								if(response>0){
									$('#phoneId').parent().removeClass('correct').addClass("error");
									$('#phoneTextId').html("<span class=\"dagou\"></span>该手机号已经被注册");
									phoneFlag=false;
									return false;
								}else{
									$('#phoneId').parent().removeClass("error").addClass('correct');
									phoneFlag=true;
									return true;
								}
							}
						});
				}else{
					$('#phoneId').parent().removeClass('correct').addClass("error");
					$('#phoneTextId').html("<span class=\"dagou\"></span>请输入正确的手机号");
					phoneFlag=false;
					return false;
				}
			}
			function checkValidateCode(){
				var validateCode=$('#validateCodeId').val();
				if(validateCode.length==0){
					$('#validateCodeId').parent().removeClass('correct').addClass("error");
					$('#validateCodeTextId').html("<span class=\"dagou\"></span>请输入验证码");
					validateCodeFlag=false;
					return false;
				}else{
					$('#validateCodeId').parent().removeClass("error").addClass('correct');
					validateCodeFlag=true;
					return true;
				}
			}
			var timeI = 60;
			var intervalId;
			function sendMsg(){
				checkPhone();
				if(phoneFlag){
					timeI=60;
					$("#fasong-yzm").val(timeI+"秒后重新获取");
					$("#fasong-yzm").css({ color: "#999", background: "#eee", border: "1px #ddd solid"});
					$("#fasong-yzm").attr("disabled", true);
					intervalId=setInterval(timedown, 1000);
					var parameters = {};
					parameters['phone'] = $('#phoneId').val().trim();
					parameters['type'] = 1;
					parameters['imgCode'] = $("#imgCode").val().trim();
						$.ajax( {
							url : '${ctx}/common/getPhoneValiCode',
							type : 'post',
							data : parameters,
							dataType : "json",
							success : function(data) {
								if(!data.success){
									$("#codeTextId").addClass("red").html(data.msg);
									timeI=1;
								}else{
									$("#codeTextId").removeClass("red").html();
								}
							}
						});
				}
			}
			function timedown() {
				timeI = timeI - 1;
				if (timeI==0) {
					$("#fasong-yzm").val("重新获取");
					$("#fasong-yzm").css({ color: "#cb3932", background:"#ccc url(${ctx}/images/btn-bg.gif) repeat-x", border: "1px #ddd solid"});
					$("#fasong-yzm").attr("disabled",false);
					clearInterval(intervalId);
				} else {
					$("#fasong-yzm").val(timeI+"秒后重新获取");
				}
			} 
			function register(){
				if(accountNameFlag==false){
					checkAccountName();
				}
				if(passwordFlag==false){
					checkPassword();
				}
				if(rePasswordFlag==false){
					checkRePassword();
				}
				if(phoneFlag==false){
					checkPhone();
				}
				if(validateCodeFlag==false){
					checkValidateCode();
				}
				if(companyNameFlag==false){
					checkCompanyName();
				}
				if(companyNameFlag==true && accountNameFlag==true && passwordFlag==true && rePasswordFlag==true	&&	phoneFlag==true	&&	validateCodeFlag==true){
					//移除注册按钮事件
					$("#register").attr("onclick","");
					var parameters = {};
					parameters['accountName'] = $('#accountNameId').val();
					parameters['password'] = $('#passwordId').val();
					parameters['phone'] = $('#phoneId').val().trim();
					parameters['validateCode'] = $('#validateCodeId').val();
					parameters['companyName'] = $('#companyName').val();
					parameters['companyDist'] = $('#companyDist').val();
					parameters['companySize'] = $('#companySize').val();
					parameters['industryType'] = $('#industryType').val();
					parameters['contactPerson'] = $('#contactPerson').val();
					parameters['tgFrom'] = getCookie("tgFrom");

					$.ajax( {
						url : '${ctx}/register/register',
						type : 'post',
						data : parameters,
						success : function(data) {
							if(data.success){
								$("#fail").html('恭喜，注册成功');
								$("#comName").html($('#companyName').val());
								$("#comAcco").html($('#accountNameId').val());
								$("#phoneMM").html($('#phoneId').val().trim());
								//$("#lmsg").html("注册信息已经发至您填写的手机号码，请查收！");
								$("#but01").show();
								openDiv(10);
							}else{
								$("#fail").html(data.msg);
								$("#but01").hide();
								openDiv(10);
							}
							//添加注册按钮事件
							$("#register").attr("onclick","checCompINF('all')");
						}
					});
				};
			}
	function checCompINF(pid){
		var b=true;
		$(".dengji").find(".ui-input").each(function(){
			if(this.id==pid || pid=='all'){
				var patrn=/[`~!@#$%^&*()_+<>?:"{},.\/;'[\]]/im;  
			    if($(this).val()=='' || patrn.test($(this).val())){  
			    	$(this).parent().removeClass('correct').addClass('error');
			    	if(this.id!='companyName'){
			    		$(this).parent().children("p").html($(this).parent().children("div").html());
			    	}
			    	b=false;
			    	if(pid!='all'){
			    		return false;
					}     
			    }else{
			    	if(this.id!='companyName'){
			    		$(this).parent().removeClass('error').addClass('correct');
			    	}
			    	if(pid!='all'){
			    		return false;
					} 
			    } 
			}
		});
		$(".dengji").find(".selection").each(function(){
			if(this.id==pid || pid=='all'){
				if($(this).val()==-1){
					$(this).parent().removeClass('correct').addClass('error');
			    	$(this).parent().children("p").html($(this).parent().children("div").html());
			    	b=false;
			    	if(pid!='all'){
			    		return false;
					}  
				}else{
					$(this).parent().removeClass('error').addClass('correct');
					if(pid!='all'){
			    		return false;
					} 
				}
			}
		});
		if(pid=='all' && b){
			register();
		}
	}
	//getCookie("tgFrom");
	//读取cookies 
	function getCookie(name) 
	{ 
	    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
	 
	    if(arr=document.cookie.match(reg))
	 
	        return unescape(arr[2]); 
	    else 
	        return -1; 
	}  
</script>
</body>
</html>
	