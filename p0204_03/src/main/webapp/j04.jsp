<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form</title>
	</head>
	<body>
		<%
			// 세션 추가 - 서버에 저장
			session.setAttribute("session_id", "session_aaa");
			// 쿠키 추가 - 로컬 유저 컴퓨터에 저장
			Cookie cookie = new Cookie("cookie_id", "cookie_bbb");
			cookie.setMaxAge(60*60); // 1시간 = 60초*60분
			response.addCookie(cookie);
			
		%>
	<h2>폼</h2>
	<form action="./formOk.jsp" method="post" name="frm">
		<input type="text" name="title" placeholder="제목을 입력하세요.">
		<br>
		<input type="text" name="name" placeholder="이름을 입력하세요.">
		<br>
		<input type="submit" value="전송">
	</form>
	</body>
</html>