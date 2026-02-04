<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보</title>
		<style>
			h2{text-align:center;}
			table,th,td{border:1px solid black; border-collapse:collapse;}
			table{width:800px; margin:20px auto;}
			th,td{width:100px; height:40px; text-align:center;}
		</style>
	</head>
	<body>
		<h2>회원정보</h2>
		<table>
			<colgroup>
				<col width="100px">
				<col width="100px">
				<col width="100px">
				<col width="100px">
				<col width="100px">
				<col width="150px">
				<col width="150px">
			</colgroup>
			<tr>
				<th>아이디</th>
				<th>패스워드</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>성별</th>
				<th>취미</th>
			</tr>
		<%
			// 오라클 member 테이블의 정보를
			// out.println()을 사용하여 출력하시오.
			Connection conn = null;         // db연결
			PreparedStatement pstmt = null; // sql구문 실행
			ResultSet rs = null;            // 결과값
			String id = "", pw = "", name = "", phone = "", email = "", gender = "", hobby = "";
			try{
				Context init = new InitialContext();
				DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/Oracle21");
				// db연결
				conn = ds.getConnection();
				String query = "select * from member";
				// sql구문 실행
				pstmt = conn.prepareStatement(query);
				// 결과값 리턴
				rs = pstmt.executeQuery();
				while(rs.next()){
					id = rs.getString("id");
	                pw = rs.getString("pw");
	                name = rs.getString("name");
	                phone = rs.getString("phone");
	                email = rs.getString("email");
	                gender = rs.getString("gender");
	                hobby = rs.getString("hobby");
	                // out.println(id+","+pw+","+name+","+phone+","+email+","+gender+","+hobby+"<br>");
		%>
				<!-- html 태그 넣기 -->
					<tr>
						<td><%= id %></td>
						<td><%= pw %></td>
						<td><%= name %></td>
						<td><%= phone %></td>
						<td><%= email %></td>
						<td><%= gender %></td>
						<td><%= hobby %></td>
					</tr>
		<%
				}
			}catch(Exception e){ e.printStackTrace();
			}finally{
				try{
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}catch(Exception e2){
					e2.printStackTrace();
				}
			}
		%>
		</table>
	</body>
</html>