<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
		<h2>메인페이지</h2>
		<c:set var="i" value="100" />
		<p>${ no }</p>
		<%
		for(int i=0;i<=10;i++){
			
		}
		%>
		<%-- ArrayList 객체를 items로 받아 var 변수에 전달해서 사용 --%>
		<c:forEach var="i" begin="0" end="10" step="1">
			<p>${ i }</p>
		</c:forEach>
	</body>
</html>