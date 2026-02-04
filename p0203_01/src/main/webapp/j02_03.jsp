<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키삭제</title>
	</head>
	<body>
	   <h2>쿠키삭제</h2>
	   
	   <h2>쿠키확인</h2>
	   <!-- 쿠키 출력 -->
	   <%
	    Cookie[] cookies = request.getCookies();
	    for(Cookie cookie:cookies){
	    	out.println(cookie.getName()+","+cookie.getValue()+"<br>");
	    }
	  
	   %>
	   
	   
	   
	   <!-- 쿠키삭제 소스 -->
	   <form action="./j02_04.jsp" method="post" name="frm">
	     <input type="text" name="cookie_key" placeholder="쿠키의 key값을 입력하세요."><br>
	     <input type="submit" value="쿠키 삭제">
	  </form>
	   
	   <a href='./j02_02.jsp'><button>쿠키확인</button></a>
	
	</body>
</html>