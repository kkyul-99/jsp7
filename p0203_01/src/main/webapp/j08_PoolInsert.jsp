<%@page import="java.sql.Timestamp"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>커넥션 풀 연결</title>
		<style>
		  table,th,td{border:1px solid #ccc; border-collapse: collapse; text-align:center;}
		  table{width:1000px; margin:30px auto;}
		  th,td{width:100px; height:40px; }
		</style>
	</head>
	<body>
	
	<%
	  Connection conn = null;
	  PreparedStatement pstmt = null;
	  ResultSet rs = null;
	  String query = "";
	  int bno = 0,bgroup=0,bstep=0,bindent=0,bhit=0;
	  String btitle="",bcontent="",id="",bfile="";
	  Timestamp bdate = null;
	  
	  try{
		  Context init = new InitialContext();
		  DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/Oracle21");
		  conn = ds.getConnection();
		  query = "insert into mem values (?,?,?,?,?,?,?,?)";
		  pstmt = conn.prepareStatement(query);
		  pstmt.setString(1, "abc");
		  pstmt.setString(2, "1111");
		  pstmt.setString(3, "홍홍홍");
		  pstmt.setString(4, "홍홍스");
		  pstmt.setString(5, "010-1111-1111");
		  pstmt.setString(6, "abc@naver.com");
		  pstmt.setString(7, "M");
		  pstmt.setString(8, "조깅");
		  pstmt.executeUpdate();
		  out.println("insert 완료!");
		  	
	  }catch(Exception e){ e.printStackTrace();
	    out.println("db연결 실패");
	  }finally{
		  try{
			  if(rs!=null) rs.close();
			  if(pstmt!=null) pstmt.close();
			  if(conn!=null) conn.close();
		  }catch(Exception e2){ e2.printStackTrace(); }
	  }
	%>
	</body>
</html>