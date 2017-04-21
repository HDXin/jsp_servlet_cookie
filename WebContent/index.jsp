<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>index jsp !</h2>

	<h3> Cookies </h3>

	<%
		//1.创建 cookie
		Cookie cookie = new Cookie("cookieName","cookieValue");
		cookie.setMaxAge(10);
	
		//2.调用 response 的一个方法，把 cookie 传给客户端
		response.addCookie(cookie);
	%>
	
	<%
		Cookie[] cookies = request.getCookies();
		Cookie targetCookie = null;
		for(Cookie item:cookies){
			String name = item.getName();
			if("cookieName".equals(name)){
				targetCookie = item;
			}
		}
	%>
	
	<%
		if(targetCookie != null){
	%>
	
	cookie:<%= targetCookie.getValue()%>

	<%
		}
	%>
</body>
</html>