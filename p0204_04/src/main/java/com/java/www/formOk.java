package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/formOk")
public class formOk extends HttpServlet {
    
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		HttpSession session = request.getSession();
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		// id, pw 확인 - db 연결해서 확인
		if(id.equals("aaa") && pw.equals("1111")) {
			// session 추가
			session.setAttribute("session_id", id);
		}
		
		// doGet, doPost 모두 실행 가능
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>서블릿 페이지</title></head>");
		writer.println("<body>");
		writer.println("<h2>form 정보 확인</h2>");
		writer.println("<h3>"+request.getParameter("id")+"</h3>");
		writer.println("<h3>"+request.getParameter("pw")+"</h3>");
		writer.println("<a href='./main.jsp'>메인페이지 이동</a>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

}
