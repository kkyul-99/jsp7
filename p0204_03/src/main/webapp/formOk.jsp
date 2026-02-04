<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>결과</h2>
		<% // post 방식 = setCharacterEncoding() 있어야 한글처리 가능
			request.setCharacterEncoding("UTF-8");
	    	int i = 10;
	    	out.println(i+100+"<br>");
		%>
		<!-- jsp 태그랑 함께 사용할 수 없음. jstl 태그를 사용하게 됨. -->
		<p>el 태그 사용: ${ param.title }</p>
		<p>el 태그 사용: ${ param.name }</p>
		<p>el 태그 session: ${ sessionScope.session_id }</p>
		<p>el 태그 session 이름만: ${ session_id }</p>
		<p>el 태그 cookie: ${ cookie.cookie_id.value }</p>
		
		<p>변수선언 i: ${i}</p>
		<p>--------------------------------</p>
		
	    <p>jsp request: <%= request.getParameter("title") %></p>
	    <p>jsp request: <%= request.getParameter("name") %></p>
	    <p>jsp 세션: <%= request.getAttribute("session_id") %></p>
	    <p>jsp 쿠키:
		    <%
		    	Cookie[] cookies = request.getCookies();
	           	for(Cookie cookie : cookies) {
	           		out.println("쿠키: "+cookie.getValue()+"<br>");
	           	}
		    %>
	    </p>
	    <p><%= i+100 %></p>
	</body>
</html>