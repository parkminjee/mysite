package com.sds.icto.mysite.servlet.action.board;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.dao.boardDao;
import com.sds.icto.mysite.vo.boardVo;
import com.sds.icto.web.Action;

public class boardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter( "title" );
		String content = request.getParameter( "content" );
		String member_name = request.getParameter("member_name");
		int member_no = Integer.parseInt(request.getParameter("member_no"));
		String reg_date = request.getParameter("reg_date");
		
		
		boardVo vo = new boardVo();
		vo.setNo(no);
		vo.setTitle(title);
		vo.setContent(content);
		vo.setMember_name(member_name);
		vo.setMember_no(member_no);
		vo.setReg_date(reg_date);

		
		boardDao dao = new boardDao();
		dao.update( vo );


		response.sendRedirect("/mysite/board");
	}

}
