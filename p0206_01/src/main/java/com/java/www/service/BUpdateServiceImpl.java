package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.BoardDao;

public class BUpdateServiceImpl implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (Exception e) { e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		String id = (String) request.getAttribute("session_id");
		int bno = Integer.parseInt(request.getParameter("bno"));
		String oldBFile = request.getParameter("oldBFile");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bfile = request.getParameter("bfile");
		
		// 첨부파일 변경이 없을 때 기존 파일을 사용
		if(bfile==null) { bfile = oldBFile; }
		
		// insert,update,delete -> return 없음 / select -> return 있음
		BoardDao bdao = new BoardDao();
		bdao.boardUpdate(bno, btitle, bcontent, bfile);
		request.setAttribute("flag", 3);
		
	}

}
