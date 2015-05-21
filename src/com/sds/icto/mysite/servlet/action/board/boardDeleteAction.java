package com.sds.icto.mysite.servlet.action.board;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.dao.boardDao;
import com.sds.icto.mysite.vo.boardVo;
import com.sds.icto.web.Action;

public class boardDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		int no = Integer.parseInt(request.getParameter("no"));

		boardDao dao = new boardDao();
		
		dao.delete(no);
		System.out.println("1");
		
		response.sendRedirect("/mysite/board");
	}

}
