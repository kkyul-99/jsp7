<%@page import="java.sql.Timestamp"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
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
		<title>Insert title here</title>
	</head>
	<body>
	<%
	Connection conn = null;         // db연결
	PreparedStatement pstmt = null; // sql구문 실행
	ResultSet rs = null;            // 결과값
	int bno = 0, bgroup = 0, bstep = 0, bindent = 0, bhit = 0;
	String btitle = "", bcontent = "", id = "", bfile = "";
	Timestamp bdate = null;
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/Oracle21");
		conn = ds.getConnection();
		String query = "select * from board";
		pstmt = conn.prepareStatement(query);
		// insert, update, delete -> executeUpdate();
		rs = pstmt.executeQuery(); // select -> executeQuery();
		while(rs.next()){
	        bno = rs.getInt("bno");
	        btitle = rs.getString("btitle");
	        bcontent = rs.getString("bcontent");
	        id = rs.getString("id");
	        bgroup = rs.getInt("bgroup");
	        bstep = rs.getInt("bstep");
	        bindent = rs.getInt("bindent");
	        bhit = rs.getInt("bhit");
	        bfile = rs.getString("bfile");
	        bdate = rs.getTimestamp("bdate");
            out.println(bno+","+btitle+","+bcontent+","+id+","+bgroup+","+bstep+","+bindent+","+bhit+","+bfile+","+bdate+"<br>");
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
	
	</body>
</html>