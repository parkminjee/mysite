package com.sds.icto.mysite.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sds.icto.mysite.vo.boardVo;

public class boardDao {
	private Connection getConnection() throws ClassNotFoundException,
			SQLException {
		Connection conn = null;
		// 1. 드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 2. connection 생성
		String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(dbURL, "webdb", "webdb");
		return conn;
	}

	public void insert(boardVo vo) throws ClassNotFoundException, SQLException {
		// 1. Connection 생성
		Connection conn = getConnection();
		// 2. Statement(SQL) 준비
		String sql = "insert into BOARD VALUES (board_no_seq.nextval,?,?,?,?,sysdate)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// 3.binding
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		pstmt.setInt(3, vo.getMember_no());
		pstmt.setString(4, vo.getMember_name());

		// 4. query 실행
		pstmt.executeUpdate();
		// 5. 자원정리
		if (pstmt != null) {
			pstmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}

	public List<boardVo> fetchList() throws ClassNotFoundException,
			SQLException {
		List<boardVo> list = new ArrayList<boardVo>();
		// 1. Connection 생성
		Connection conn = getConnection();
		// 2. statment 생성
		Statement stmt = conn.createStatement();
		// 3. SQL문 실행
		String sql = "select * from board";
		ResultSet rs = stmt.executeQuery(sql);
		// 4. 결과 처리
		while (rs.next()) {
			int no = rs.getInt(1);
			String title = rs.getString(2);
			String content = rs.getString(3);
			int member_no = rs.getInt(4);
			String member_name = rs.getString(5);
			String reg_date = rs.getString(6);

			boardVo vo = new boardVo();
			vo.setNo(no);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setMember_no(member_no);
			vo.setMember_name(member_name);
			vo.setReg_date(reg_date);

			list.add(vo);
		}
		// 5. 자원정리
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		return list;
	}

	public void delete(int no, int member_no, String member_name)
			throws ClassNotFoundException, SQLException {
		// 1. Connection 생성
		Connection conn = getConnection();
		// 2. Statement(SQL) 준비
		String sql = "delete from board where no =? and member_no = ? and member_name = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// 3.binding
		pstmt.setInt(1, no);
		pstmt.setInt(2, member_no);
		pstmt.setString(3, member_name);

		// 4. query 실행
		pstmt.executeUpdate();
		// 5. 자원정리
		if (pstmt != null) {
			pstmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}

	public void update(boardVo vo)
			throws ClassNotFoundException, SQLException {
		// 1. Connection 생성
		Connection conn = getConnection();
		// 2. Statement(SQL) 준비
		String sql = "update board set title=?, content=?, reg_date=sysdate where no=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// 3.binding
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		pstmt.setInt(3, vo.getNo());
		pstmt.executeUpdate();

		
		// 5. 자원정리
		if (pstmt != null) {
			pstmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}

	public boardVo read(int no) throws ClassNotFoundException,
			SQLException {
		boardVo read=null;
		// 1. Connection 생성
		Connection conn = getConnection();
		// 3. SQL문 실행
		String sql = "select no, title, content, member_no,	member_name, to_char(sysdate,'yyyy-mm-dd') from board where no=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, no);
		
		ResultSet rs = pstmt.executeQuery();
		
		// 4. 결과 처리
		if (rs.next()) {
			String title = rs.getString(2);
			String content = rs.getString(3);
			int member_no = rs.getInt(4);
			String member_name = rs.getString(5);
			String reg_date = rs.getString(6);

			read = new boardVo(no, title, content, member_no, member_name, reg_date);
		}
		// 5. 자원정리
		if (rs != null) {
			rs.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		
		return read;
	}
}
