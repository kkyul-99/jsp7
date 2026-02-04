<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>섹션확인</title>
	</head>
	<body>
	  <h2>섹션확인</h2>
	  <h3>섹션에서 가져온 아이디 : <%= session.getAttribute("session_id") %></h3>
	  <h3>섹션에서 가져온 이름 : <%= session.getAttribute("session_name") %></h3>
	  <ul>
	    <% if( session.getAttribute("session_id") == null){ %>
	    <li><a href="./j03.jsp">처음으로</a></li>
	    <li>회원가입</li>
	    <%}else{ %>
	    <li><a href="./Logout">로그아웃</a></li>
	    <li>회원정보</li>
	    <%} %>
	  </ul>
	
	</body>
</html>