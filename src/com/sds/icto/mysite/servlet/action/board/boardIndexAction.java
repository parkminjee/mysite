package com.sds.icto.mysite.servlet.action.board;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.dao.boardDao;
import com.sds.icto.mysite.vo.boardVo;
import com.sds.icto.web.Action;
import com.sds.icto.web.WebUtil;

public class boardIndexAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		boardDao dao = new boardDao();
		List<boardVo> list = dao.fetchList();

		request.setAttribute( "list", list );
		WebUtil.forward( "/views/board/board.jsp", request, response);
	}

}
