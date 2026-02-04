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
			// String uploadPath = request.getSession().getServletContext().getRealPath("/upload");
			String uploadPath = "C:/upload";
			
			int size = 10*1024*1024; // 10mb=10*1024*1024, 1mb=1024kb, 1kb=1024b
			// MultipartsRequest(request, 업로드경로, 최대업로드크기, 인코딩방식, 파일이름중복처리정책)
			MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
			
			String id = multi.getParameter("id");
			String btitle = multi.getParameter("btitle");
			String bcontent = multi.getParameter("bcontent");
			String bfile = multi.getFilesystemName("bfile");
			
			out.println("작성자: "+id+"<br>");
			out.println("제목: "+btitle+"<br>");
			out.println("내용: "+bcontent+"<br>");
			out.println("파일명: "+bfile+"<br>");
		%>
		<h3></h3>
	</body>
</html>