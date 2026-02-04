<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  table{width:500px; text-align: center;}
		  th,td{width:100px; height:40px; }
		</style>
	</head>
	<body>
	  <h2>스크립트릿</h2>
	  <table>
	    <% for(int i=2;i<=9;i++){ %>
		    <tr>
		      <td colspan="5"><%out.println(i+" 단"); %></td>
		    </tr>
		    <% for(int j=1;j<=9;j++){ %>
			    <tr>
			      <td><% out.println(i); %></td>
			      <td><% out.println("*"); %></td>
			      <td><% out.println(j); %></td>
			      <td><% out.println("="); %></td>
			      <td><% out.println(2*j); %></td>
			    </tr>
		    <%} %>
	    <%} %>
	  </table>
	
	</body>
</html>