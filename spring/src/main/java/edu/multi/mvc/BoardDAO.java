package edu.multi.mvc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

@Repository("dao")
public class BoardDAO {
	
	// 전체 조회
	// public ArrayList<BoardVO> getList();
	public ArrayList<BoardVO> getList() {
		
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		try {
			// 1. jdbc driver load
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. db info & conn
			Connection con = DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:xe", "scott", "TIGER");
			// 3. sql define - request
			PreparedStatement pt = 
					con.prepareStatement("select * from board order by time desc");
			// 4. select : return ResultSet*
			//	  other  : return int
			ResultSet rs = pt.executeQuery();
			while(rs.next()) {
				
				BoardVO vo = new BoardVO();

				vo.setSeq(rs.getInt("seq"));
				vo.setTitle(rs.getString("title"));
				vo.setContents(rs.getString("contents"));
				vo.setWriter(rs.getString("writer"));
				vo.setTime(rs.getString("time"));
				vo.setPassword(rs.getInt("password"));
				vo.setViewcount(rs.getInt("viewcount"));
				
				list.add(vo);
				
			}

			// 5. disconn
			pt.close();
			rs.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	// 게시물 1개 저장
	public int insertBoard(BoardVO vo) {
		
		int result = 0;
		
		try {
			String insertSql = 
					"insert into board values( "
					+ "(select max(seq)+1 from board), ?, ?, ?, SYSDATE, ?, 0)";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:xe", "scott", "TIGER");
			PreparedStatement pt = 
					con.prepareStatement(insertSql);
			
			pt.setString(1, vo.getTitle());
			pt.setString(2, vo.getContents());
			pt.setString(3, vo.getWriter());
			pt.setInt(4, vo.getPassword());
			
			result = pt.executeUpdate();
			
			pt.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 1개 게시물 조회(seq 받아서)
	public BoardVO getBoardDetail(int seq) {
		
		BoardVO vo = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:xe", "scott", "TIGER");
			// viewcount +1
			PreparedStatement ptCount = 
					con.prepareStatement("update board set viewcount=viewcount+1 where seq=?");
			ptCount.setInt(1, seq);
			ptCount.executeUpdate();
			
			// get board
			PreparedStatement pt = 
					con.prepareStatement("select * from board where seq=?");
			
			pt.setInt(1, seq);	
			
			ResultSet rs = pt.executeQuery();
			
			if(rs.next()) {
				vo = new BoardVO();
				vo.setSeq(rs.getInt("seq"));
				vo.setTitle(rs.getString("title"));
				vo.setContents(rs.getString("contents"));
				vo.setWriter(rs.getString("writer"));
				vo.setTime(rs.getString("time"));
				vo.setPassword(rs.getInt("password"));
				vo.setViewcount(rs.getInt("viewcount"));
			}
			
			pt.close();
			ptCount.close();
			rs.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	// 1개 게시물 수정
	public int updateBoard(BoardVO vo) {
		
		int result = 0;
		
		try {
			String insertSql = 
					"update board set "
					+ "title=?, contents=?, writer=? "
					+ "where seq=?";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:xe", "scott", "TIGER");
			PreparedStatement pt = 
					con.prepareStatement(insertSql);
			
			pt.setString(1, vo.getTitle());
			pt.setString(2, vo.getContents());
			pt.setString(3, vo.getWriter());
			pt.setInt(4, vo.getSeq());
			
			result = pt.executeUpdate();
			
			pt.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 1개 게시물 삭제
	public int deleteBoard(int seq) {
		// delete board where seq=?
		int result = 0;
		
		try {
			String deleteSql = 
					"delete board where seq=?";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:xe", "scott", "TIGER");
			PreparedStatement pt = 
					con.prepareStatement(deleteSql);
			
			pt.setInt(1, seq);
			
			result = pt.executeUpdate();
			
			pt.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
}
