<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<script>
		if(${flag == 1}){ // board Insert 성공시
			alert("게시글이 저장되었습니다.");
			location.href="./board.do";
		}else if (${flag == 2}){ // board Delete 성공시
            alert("게시글이 삭제되었습니다.");
            location.href="./board.do";
        }else if (${flag == 3}){ // board Update 성공시
        	alert("게시글이 수정되었습니다.");
            location.href="./board.do";
        }
	</script>
	
	</body>
</html>