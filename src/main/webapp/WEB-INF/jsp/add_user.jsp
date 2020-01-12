<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en" class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html;charset="utf-8">
<title>用户注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS -->
<link rel="stylesheet" href="<%=basePath%>assets/css/reset.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/supersized.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/style.css">

</head>

<body>

	<div class="page-container">
		<h1>注册</h1>
		<form action="addUser" method="post" name="form1" id="form1">
			<input type="text" id="username" name="username" class="username" maxlength="11" minlength="11"
				placeholder="请输入电话号码" pattern="[0-9]{11,11}" required="required" >	
			<input type="text" id="email" name="email" class="email"
				 required="required" placeholder="请输入email">
			<input type="password" id="password" name="password" class="password"
				pattern="[A-Za-z0-9]{6,12}" required="required" placeholder="请输入密码">
			<input type="password" id="password2" name="password2" class="password2"
				pattern="[A-Za-z0-9]{6,12}" required="required" placeholder="确认密码">
			<!-- <input type="button" id="ckcode" value="获取验证码"  onclick="submitYouFrom('verify')" > -->
			<a href="#" id="ckcode"  >获取验证码</a>
			<input type="text" maxlength="6" id="code" name="code" class="code" placeholder="请输入验证码,暂时验证码为 5555">
			<button type="submit" id="regbtn" onclick="submitYouFrom('addUser')">注册</button>
			<div id="login-error" style="color: #F00">${requestScope.message}</div>
		</form>
	</div>

	<!-- Javascript -->
	<script src="<%=basePath%>assets/js/jquery-1.8.2.min.js"></script>
	<script src="<%=basePath%>assets/js/supersized.3.2.7.min.js"></script>
	<script src="<%=basePath%>assets/js/supersized-init.js"></script>
	<script src="<%=basePath%>assets/js/scripts.js"></script>
	<script type="text/javascript">
		/* $("#regbtn").click(function(){
			var params=$("#form1").seralize();
			console.log(params);
			$.get("addUser",params,function(result){
				
			});
		}); */
		function aa(){
			
			
		}
		
		$("#ckcode").click(function(){
			//$.get(url,params,function(result){});
			/* $.get("verify",{"phone":$("#username").val()},function(result){
				alert("发送成功，请查看手机");
			}); */
			
			/* var res = [];
			for(var i=0;i<=6;i++){
				var id = Math.random()*9;
				id = parseInt(id,10);
				res.push(num);
			} 
			consonle.log(res); */
			/*
			$.ajax({
				url:"verify",
				data:{"username":$("#username").val()},
				dataType:"json",
				type:"GET",
				success:function(result){
					alert("发送成功，请查看手机");
				},
				error:function(){
					console.log(result);
					alert("发送失败，稍后再试");
				}
			})
		});
		
		//判断验证码
		$('code').keyup(codelook);
		function codelook(){
			var code = $("#code").val();
			var code = $Ab.
			
		}
		*/
		
		// 判断两次输入的密码是否一致
		$('#password2').keyup(passwords2);
		function passwords2() {
	        var password = $("#password").val();
	        var password2 = $("#password2").val();
	        
			if(!password2 || password2.length < password.length){
				return;
			}
	 
	        if (password != password2){
	            alert("两次输入的密码不匹配");
	            document.getElementById("password2").focus();
	            return;
	        }
	    }

	</script>
</body>

</html>
