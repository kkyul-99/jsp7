package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.MemberDto;

// db연결정보
public class MemberDao {
	
	// db연결정보 선언
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource dataSource;
	String query;
	// dto에 맞는 변수
	String id,pw,name,phone,email,gender,hobby;
	
	public MemberDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle21");
		}catch (Exception e) { e.printStackTrace(); }
	}
	
	// 회원 전체리스트 가져오기
	public List<MemberDto> memberList() {
		List<MemberDto> list = new ArrayList<MemberDto>();
		try {
			conn = dataSource.getConnection();
			// 회원 전체리스트
			query = "select * from member";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				phone = rs.getString("phone");
				email = rs.getString("email");
				gender = rs.getString("gender");
				hobby = rs.getString("hobby");
				list.add(new MemberDto(id, pw, name,phone, email, gender, hobby));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) rs.close();
				if(conn != null) conn.close();
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
}
