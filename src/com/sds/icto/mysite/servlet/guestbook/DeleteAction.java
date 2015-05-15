package com.sds.icto.mysite.servlet.guestbook;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sds.icto.mysite.dao.guestbookDao;
import com.sds.icto.mysite.vo.guestbookVo;
import com.sds.icto.web.Action;

public class DeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		String pwd = request.getParameter("pwd");
		int no = Integer.parseInt(request.getParameter("no"));

		guestbookVo vo = new guestbookVo();
		vo.setPwd(pwd);
		vo.setNo(no);
		
		guestbookDao dao = new guestbookDao();


		if (pwd.equals(vo.getPwd())) {
			dao.delete(no, pwd);
		}

		response.sendRedirect("/mysite/guestbook");
	}

}
