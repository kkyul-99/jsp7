<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 추가하기</title>
	</head>
	<body>
	  <h2>쿠키추가하기</h2>
	  <h3>request.getParameter 확인(form데이터 확인)</h3>
	  <p><%=request.getParameter("cookie_key") %></p>
	  <p><%=request.getParameter("cookie_value") %></p>
	  
	  <h3>쿠키저장</h3>
	  <%
	    String key = request.getParameter("cookie_key");
	    String value = request.getParameter("cookie_value");
	    //쿠키객체선언
	    Cookie cookie = new Cookie(key,value);
	    //쿠키시간설정
	    cookie.setMaxAge(60*60);
	    //쿠키저장
	    response.addCookie(cookie);
	    out.println(key +"쿠키가 저장되었습니다.<br>");
	  %>
	  
	  <a href="./j02_02.jsp"><button>쿠키확인</button></a>
	
	</body>
</html>