<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>구구단 출력</title>
		<style>
			table,th,td{border:1px solid black; border-collapse:collapse;}
			table{width:500px; margin:20px auto;}
			th,td{width:100px; height:40px; text-align:center;}
		</style>
	</head>
	<body>
		<h2>구구단</h2>
		<!-- jstl태그 -->
		<table>
			<c:forEach var="i" begin="2" end="9" step="1">
			    <c:if test="${ i % 2==1 }">
				<tr><th colspan="5">[ ${ i } 단 ]</th></tr>
					<c:forEach var="j" begin="1" end="9" step="1">
						<tr>
							<td>${i}</td>
							<td>X</td>
							<td>${j}</td>
							<td>=</td>
							<td>${i*j}</td>
						</tr>
					</c:forEach>
                   </c:if>
			</c:forEach>
		</table>
		<hr>
		<!-- jsp태그 -->
    	<table>
			<% for(int i=2;i<=9;i++){
				if(i%2==0) continue;
			%>
           		<tr><th colspan="5">[ <%=i %>단 ]</th></tr>
           		<% for(int j=1;j<=9;j++){ %>
		    		<tr>
		    			<td><%=i %></td>
		    			<td>X</td>
		    			<td><%=j %></td>
		    			<td>=</td>
		    			<td><%=i*j %></td>
		    		</tr>
			<% // out.println(i+" X "+j+" = "+(i*j)+"<br>");
			} } %>
    	</table>
	</body>
</html>