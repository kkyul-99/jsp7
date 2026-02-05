package com.java.www.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;

public class MemberList implements MemberService {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		List<MemberDto> list = new ArrayList<MemberDto>();
		MemberDao mdao = new MemberDao();
		list = mdao.memberList();
		System.out.println("MemberList service: "+list.size());

		// member 라는 이름으로 MemberDto 객체를 request 영역에 저장
		// request 영역에 저장된 member 객체를 member.jsp 페이지에서 사용 가능
		// request.setAttribute("member",m); // 객체 1개
		request.setAttribute("list",list); // 객체 여러개
	}

}
