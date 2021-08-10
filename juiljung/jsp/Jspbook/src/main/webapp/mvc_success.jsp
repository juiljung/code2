<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>MVC</title>
</head>
<body>
	<p>로긴 성공
	<p><%
		LoginBean bean= (LoginBean) request.getAttribute("bean");
		out.println("아이디:" + bean.getId());
	%>
</body>
</html>