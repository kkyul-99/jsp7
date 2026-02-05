package com.java.www.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;

public class MemberListServiceImpl implements MemberService {

	// execute() 메서드 재정의
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDao mdao = new MemberDao();
		// MemberDao의 memberList() 메서드를 호출하여 회원리스트를 가져옴.
		List<MemberDto> list = mdao.memberList();
		// 가져온 회원리스트를 request 객체에 "list"라는 속성명으로 저장.
		request.setAttribute("list", list);
	}

}
