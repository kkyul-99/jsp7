<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원전체리스트</title>
		<style>
			h2{text-align: center;}
			table,th,td{border:1px solid black; border-collapse: collapse;}
			table{width:900px; margin:20px auto;}
			th,td{width:150px; height:40px; text-align: center;}
		</style>
	</head>
	<body>
		<h2>회원전체리스트</h2>
		<table>
			<tr>
				<th>아이디</th>
				<th>패스워드</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>성별</th>
				<th>취미</th>
			</tr>
			<!-- 반복문 시작:
			member 변수에 list 컬렉션의 각 요소가 순서대로 저장됨
			list 컬렉션은 서블릿에서 바인딩한 전체회원정보 -->
			<c:forEach var = "member" items="${list}">
			<tr>
				<td>${member.id}</td>
				<td>${member.pw}</td>
				<td>${member.name}</td>
				<td>${member.phone}</td>
				<td>${member.email}</td>
				<td>${member.gender}</td>
				<td>${member.hobby}</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>