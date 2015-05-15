package com.sds.icto.mysite.servlet.guestbook;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.dao.guestbookDao;
import com.sds.icto.mysite.vo.guestbookVo;
import com.sds.icto.web.Action;

public class InsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		System.out.println("1");
		String name = request.getParameter( "name" );
		String pwd = request.getParameter( "pwd" );
		String meg = request.getParameter( "meg" );

		guestbookVo vo = new guestbookVo();
		vo.setId( name );
		vo.setPwd(pwd);
		vo.setMeg(meg);


		guestbookDao dao = new guestbookDao();
		dao.insert( vo );

		response.sendRedirect("/mysite/guestbook");
	}

}
