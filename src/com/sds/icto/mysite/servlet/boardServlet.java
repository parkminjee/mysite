package com.sds.icto.mysite.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.servlet.action.board.boardDeleteAction;
import com.sds.icto.mysite.servlet.action.board.boardDeleteformAction;
import com.sds.icto.mysite.servlet.action.board.boardIndexAction;
import com.sds.icto.mysite.servlet.action.board.boardUpdateAction;
import com.sds.icto.mysite.servlet.action.board.boardUpdateformAction;
import com.sds.icto.mysite.servlet.action.board.boardWriteAction;
import com.sds.icto.mysite.servlet.action.board.boardReadAction;
import com.sds.icto.web.Action;

/**
 * Servlet implementation class boardServlet
 */
@WebServlet("/board")
public class boardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{	
			request.setCharacterEncoding( "utf-8" );
			String a = request.getParameter( "a" );
			
			Action action = null;
			if( "delete".equals( a ) ) {
				action = new boardDeleteAction();
				
			}else if("write".equals(a)){
				System.out.println("작성1");
				action = new boardWriteAction();
				
			}else if("deleteform".equals(a)){
				action = new boardDeleteformAction();
			}else if("list".equals(a)){
				action = new boardIndexAction();
			}else if("read".equals(a)){
				action = new boardReadAction();
			}else if("update".equals(a)){
				action = new boardUpdateAction();
			}else if("updateform".equals(a)){
				action = new boardUpdateformAction();
			}
			if(action == null){
				action = new boardIndexAction();
			}
			action.execute(request, response);

			
		} catch ( Exception ex ) {
			ex.printStackTrace();
		}
	}

}
