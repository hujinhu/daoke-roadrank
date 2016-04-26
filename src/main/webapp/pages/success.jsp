<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
	<link media="all" type="text/css" rel="stylesheet" href="http://oauth.daoke.me//css/frozen.css">
		<link media="all" type="text/css" rel="stylesheet" href="http://oauth.daoke.me/css/style.css">
		<title>登录成功,正在为您跳转</title>
	</head>
	<body>
    <header class="ui-header ui-header-stable ui-border-b">
		    <h1>道客账号登录</h1>
		</header>
      <div class="content">
        <div class="ui-whitespace loginHint">
            <a id="linkShop" style="color:red">正在为您连接跳转...</a>
        </div>

      </div>
   <script type="text/javascript">

		  window.onload= function (){
			  setTimeout(test1,3000);
		  }
		  function test1(){
			  if(typeof loginSuccess ==='function'){
				  setTimeout(test2,3000);
			  }else{
				  setTimeout(test3,3000);
			  }
		  }
		  function test2(){
			  var result =${requestScope.loginResult};
			  loginSuccess( "{\"accountID\":\""+result.accountID+"\",\"loginFlag\":"+result.loginFlag+"}");
		  }
		  function test3(){
			  var errCode =${requestScope.loginResult.ERRCODE};
			  if(errCode==0){
				var result =   ${requestScope.loginResult.RESULT};
				var accountId = result.accountID;
				alert(accountId);
			  }
			   
			 // obj.login( "{\"accountID\":\""+result.accountID+"\",\"loginFlag\":"+result.loginFlag+"}");
		  }
//        var domLink = document.getElementById('linkShop');
//  			var link = window.location.search.slice(1);
//  			if(link!=""){
//  				var cutdownTime=1;
//  				function countdown() {
//  					cutdownTime = cutdownTime - 1;
//  					if (cutdownTime < 0) {
//  						clearTimeout(ct);
//  						window.location.href=link;
//  						return cutdownTime=0;
//  					}
//  					domLink.innerText=cutdownTime+"秒后为您跳转至你看我拍";
//  					var ct = setTimeout("countdown()", 1000);
//  				}
//  				countdown();
//  			}
		</script>  
  </body>
</html>
