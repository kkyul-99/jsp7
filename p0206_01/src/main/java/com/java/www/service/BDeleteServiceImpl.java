package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;

public class BDeleteServiceImpl implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int bno = Integer.parseInt(request.getParameter("bno")) ;
		BoardDao bdao = new BoardDao();
		bdao.boardDelete(bno);
		request.setAttribute("flag", 2); // delete 성공시 플래그
	}

}
