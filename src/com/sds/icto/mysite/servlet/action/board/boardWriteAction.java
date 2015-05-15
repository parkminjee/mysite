package com.sds.icto.mysite.servlet.action.board;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.dao.boardDao;
import com.sds.icto.mysite.vo.MemberVo;
import com.sds.icto.mysite.vo.boardVo;
import com.sds.icto.web.Action;

public class boardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {

		String title = request.getParameter( "title" );
		String content = request.getParameter( "content" );
		String member_name = request.getParameter( "member_name" );
		int member_no = Integer.parseInt(request.getParameter( "member_no" ));

		boardVo vo = new boardVo();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setMember_name(member_name);
		vo.setMember_no(member_no);
		
		boardDao dao = new boardDao();
		dao.insert( vo );


		response.sendRedirect("/mysite/board");
	}

}
