<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录失败</title>
<script src="${pageContext.request.contextPath}/jquery-3.2.1.min.js"></script>
</head>
<body>

	账号或密码错误，请重新登录......
	<br>
	<span id="show"></span>
	<script>
		var t = 5; //设定跳转的时间 
		function refer() {
			if (t == 0) {
				location = "${pageContext.request.contextPath}/index.jsp"; //#设定跳转的链接地址 
			}
			$("#show").html("" + t + "秒后跳转到登录页面"); 
			t--; // 计数器递减 
		};
		setInterval("refer()", 1000); //启动1秒定时
	</script>

	<br /> 点击
	<a href="${pageContext.request.contextPath}/index.jsp">这里</a>直接跳转....

</body>
</html>