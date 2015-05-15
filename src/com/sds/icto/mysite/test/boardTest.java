package com.sds.icto.mysite.test;

import java.sql.SQLException;
import java.util.List;

import com.sds.icto.mysite.dao.boardDao;
import com.sds.icto.mysite.vo.boardVo;

public class boardTest {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		boardDao dao = new boardDao();
		List<boardVo> list = dao.fetchList();
		
		for(boardVo vo : list){
			System.out.println(vo.getNo());
			System.out.println(vo.getTitle());
			System.out.println(vo.getMember_name());
			System.out.println(vo.getReg_date());
		}
	}

}
