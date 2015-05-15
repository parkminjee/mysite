package com.sds.icto.mysite.servlet.action.board;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.dao.boardDao;
import com.sds.icto.mysite.vo.boardVo;
import com.sds.icto.web.Action;
import com.sds.icto.web.WebUtil;

public class boardUpdateformAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		boardDao dao = new boardDao();
		boardVo vo = new boardVo();
		
		int no = Integer.parseInt(request.getParameter( "no" ));
		vo.setNo(no);
		
		boardVo update = dao.read(no);

		request.setAttribute("update", update);
		WebUtil.forward( "/views/board/boardupdate.jsp" , request, response);
	}

}
