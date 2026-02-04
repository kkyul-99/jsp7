<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 확인</title>
	</head>
	<body>
	  <h2>쿠키확인</h2>
	  <!-- 쿠키 출력 -->
	  <%
	    Cookie[] cookies = request.getCookies();
	    for(Cookie cookie:cookies){
	    	out.println(cookie.getName()+","+cookie.getValue()+"<br>");
	    }
	  
	  %>
	  
	  
	  <a href="./j02_03.jsp">쿠키 삭제</a>
	  <a href="./j02.jsp">쿠키 추가</a>
	
	</body>
</html>