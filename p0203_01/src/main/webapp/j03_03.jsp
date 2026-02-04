<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그아웃</title>
	</head>
	<body>
	 
	  <%
	    // session.setAttribute(), getAttribute(), invalidate()
	    // 섹션모두삭제
	    session.invalidate();
	    response.sendRedirect("./j03_02.jsp");
	  %>
	
	</body>
</html>