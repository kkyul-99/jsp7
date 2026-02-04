<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일업로드</title>
	</head>
	<body>
		<h2>파일업로드완료</h2>
		<%
			// request.getParameter("title");
			// String uploadPath = "C:/workspace/jsp7/p0204_01/src/main/webapp/upload";
			String uploadPath = request.getSession().getServletContext().getRealPath("/upload");
			int size = 10*1024*1024; // 10mb=10*1024*1024, 1mb=1024kb, 1kb=1024b
			
			MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
		%>
		<h3></h3>
	</body>
</html>