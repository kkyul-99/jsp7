<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인확인</title>
	</head>
	<body>
	  <!-- 스크립트릿,표현식,선언식,지시자,주석,액션태그 -->
	  <%--  : jsp주석 
	      <% %> : 스크립트릿
	      <%= %> : 표현식
	      <%! %> : 선언식
	      <%@ %> : 지시자
	      
	      request.getParameter : 1개 데이터 받기
	      getParameterValues : checkbox 여러개 받기
	  --%>
	  
	  <h2>로그인결과</h2>
	  <p>아이디 :  <%= request.getParameter("id") %></p>
	  <p>패스워드 : <%= request.getParameter("pw") %> </p>
	  <%
	     String cookie_id = request.getParameter("id");
	     String cook_save="아이디 저장을 하지 않습니다.";
	     if(request.getParameterValues("cook_save")!=null){
	    	 cook_save = request.getParameterValues("cook_save")[0];
	    	 // 쿠키저장을 시켜주면 됨.
	    	 //쿠키객체선언
	    	 Cookie cookie = new Cookie("cookie_id",cookie_id);
	    	 //쿠키시간설정
	    	 cookie.setMaxAge(60*60); //1시간설정
	    	 //쿠키저장
	    	 response.addCookie(cookie);
	     }else{
	    	 // 쿠키삭제를 시켜주면 됨.
	    	 Cookie[] cookies = request.getCookies();
	    	 for(Cookie cookie:cookies){
	    	 // 쿠키 key만 삭제
	    	    if(cookie.getName().equals("cookie_id")){
	    	 	//시간설정
	    	 	cookie.setMaxAge(0);
	    	 	//쿠키저장
	    	 	response.addCookie(cookie);
	    	    }
	    	 }
	     }
	  %>
	  
	  <p>아이디저장 체크박스확인 : <%= cook_save %> </p>
	  <%-- 아이디저장이 클릭이 되어 있으면 쿠키저장 --%>
	  <%-- cookie_id --%>
	  
	  <a href="./login.jsp"><button>로그인</button></a>
	
	</body>
</html>