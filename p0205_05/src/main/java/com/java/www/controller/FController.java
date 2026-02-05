package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.MemberListServiceImpl;
import com.java.www.service.MemberService;

@WebServlet("*.do")
public class FController extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String fileName = uri.substring(contextPath.length());
		String viewPage = "";
		// MemberService 객체선언
		MemberService mService = null;
		
		switch(fileName) {
		case "/member.do":
			// MemberListServiceImpl 객체 생성하여 mService에 대입
			// Interface(MemberService) 다형성 적용
			// => 이후에 다른 서비스가 추가되더라도 같은 방식으로 처리 가능
			mService = new MemberListServiceImpl();
			// MemberListServiceImpl의 execute() 메서드 호출
			mService.execute(request, response);
			viewPage = "./member.jsp";
			break;
		}
		
		// RequestDispatcher 객체 생성 후, viewPage로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

}
