<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>섹션추가</title>
	</head>
	<body>
	  <h2>섹션추가</h2>
	  <%
	    // request,response,out,session
	    String id = request.getParameter("session_id");
	    String name = request.getParameter("session_name");
	    out.println("아이디 : "+id+"<br>");
	    out.println("이름 : "+name+"<br>");
	    // 섹션추가
	    session.setAttribute("session_id", id);
	    session.setAttribute("session_name", name);
	  %>
	  
	  <a href="./j03_02.jsp"><button>섹션확인</button></a>
	
	</body>
</html>