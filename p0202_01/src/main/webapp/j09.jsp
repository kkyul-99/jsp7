<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>현재 ip주소</title>
	</head>
	<body>
	<%
		out.println("서버네임 : "+request.getServerName()+"<br>");
		out.println("서버URL : "+request.getRequestURL()+"<br>");
		out.println("컨텍스트 패스 : "+request.getContextPath()+"<br>");
		out.println("서버URI : "+request.getRequestURI()+"<br>");
		out.println("서버URI에서 컨텍스패스를 뺀 나머지 가져오기 <br>");
		out.println("컨텍스트 패스 길이 : "+request.getContextPath().length()+" <br>");
		int num = request.getContextPath().length();
		String uri = request.getRequestURI();
		String fileName = uri.substring(num+1);
		out.println("서버파일명만 추출 : "+uri.substring(num+1) +"<br>");
		out.println(".jsp 뺀 파일이름 : "+fileName.substring(0,fileName.length()-4) +"<br>");
		out.println("ip주소 : "+request.getRemoteAddr()+"<br>");
	
	%>
	
	</body>
</html>