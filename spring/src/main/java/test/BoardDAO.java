package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	
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
					con.prepareStatement("select * from board");
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

//			System.out.println("	BoardDAO " + list.size());
//			for(BoardVO vo : list) {
//				System.out.println("		" + vo);
//			}
			
			// 5. disconn
			pt.close();
			rs.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
}
