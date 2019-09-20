package co.joe.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.joe.dto.BoarderDto;

public class BoarderDao extends Dao {

	PreparedStatement pstmt;
	ResultSet rs;
	public BoarderDao()
	{
		super();
	}
	
	public ArrayList<BoarderDto> select() // 전체리스트
	{
		ArrayList<BoarderDto> list = new ArrayList<BoarderDto>();
		BoarderDto dto;
		String sql ="select * from boarder";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				dto = new BoarderDto();
				dto.setbNum(rs.getInt("bnum"));
				dto.setbName(rs.getString("bname"));
				dto.setbTitle(rs.getString("btitle"));
				dto.setbWriteDate(rs.getDate("bwritedate"));
				dto.setbHit(rs.getInt("bhit"));
				dto.setbFileName(rs.getString("filename"));
				list.add(dto);
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close();
		return list;
	}
	private void close() {
		
			
				try {
					if(rs != null)	rs.close();
					if(pstmt !=null) pstmt.close();
					if(conn != null) conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		
	}

	public BoarderDto select(int key) {//글하나 내용보기
		BoarderDto dto = new BoarderDto();
		String sql="select * from boarder where bnum = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, key);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setbNum(rs.getInt("bnum"));
				dto.setbName(rs.getString("bname"));
				dto.setbContent(rs.getString("bcontent"));
				dto.setbHit(rs.getInt("bhit"));
				dto.setbTitle(rs.getString("btitle"));
				dto.setbWriteDate(rs.getDate("bwritedate"));
				dto.setbFileName(rs.getString("filename"));
				readCount(key);
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		close();
		return dto;
	}
	private void readCount(int key) {
		String sql = "update boarder set bhit = bhit + 1 where bnum = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, key);
			pstmt.execute();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		close();
	}
	public int insert(BoarderDto dto) { //글내용추가
		int n = 0;
		String sql = "insert into boarder values(b_seq.nextval, ?, ?, ?, ?, 0, ?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getbName());
			pstmt.setString(2, dto.getbTitle());
			pstmt.setString(3, dto.getbContent());
			pstmt.setDate(4, dto.getbWriteDate());
			pstmt.setString(5, dto.getbId());
			pstmt.setString(6, dto.getbFileName());
			n = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return n;
	}
	public int update(BoarderDto dto) {// 글수정
		int n = 0;
		String sql = "update boarder set btitle=?, bcontent=? where bnum = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getbTitle());
			pstmt.setString(2, dto.getbContent());
			pstmt.setInt(3, dto.getbNum());
			n = pstmt.executeUpdate();
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return n;
		
	}
	
	
	
}
