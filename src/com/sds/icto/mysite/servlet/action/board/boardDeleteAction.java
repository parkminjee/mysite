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

public class boardDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		MemberVo mvo = new MemberVo();
		
		
		int no = Integer.parseInt(request.getParameter("no"));
		int member_no = mvo.getNo();
		String member_name = mvo.getName();
		
		
		boardVo vo = new boardVo();
		vo.setNo(no);
		vo.setMember_name(member_name);
		vo.setMember_no(member_no);
		
		boardDao dao = new boardDao();
		int mvo_no=mvo.getNo();
		String mvo_name = mvo.getName();

		if (member_no == mvo_no && member_name.equals(mvo_name)) {
			dao.delete(no, mvo_no, mvo_name);
		}

		response.sendRedirect("/mysite/board");
	}

}
