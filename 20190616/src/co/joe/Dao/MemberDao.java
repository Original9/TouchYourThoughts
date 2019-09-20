package co.joe.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import co.joe.dto.MemberDto;

public class MemberDao extends Dao{
	private PreparedStatement pstmt;
	private ResultSet rs;
	

	public MemberDao() {
		super();
	}
	
	public MemberDto loginCheck(MemberDto dto) // 로그인 체크 
	{
		boolean chk = false;
		String sql = "select * from member where m_id = ? and m_pw=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getM_id());
			pstmt.setString(2, dto.getM_pw());
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				dto = new MemberDto();
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pw(rs.getString("m_pw"));
				dto.setM_grant(rs.getString("mgrant"));
				dto.setM_name(rs.getString("m_name"));// 재대로 들어갔고!! 확인함
				
				
				
//				chk = true;
//				return chk;
			}
			else
			{
				
//				chk = false;
//				return chk;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		close();
		return dto;
		
	}
	
	public int insertMember(MemberDto dto) // 회원추가
	{
		
		String sql = "insert into member values(?,?,?,?,)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getM_id());
			pstmt.setString(2, dto.getM_pw());
			pstmt.setString(3, dto.getM_name());
			pstmt.setString(4, dto.getM_address());
			
			
			int n = pstmt.executeUpdate();
			
			return n;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;		
	}
	
	public boolean isIdCheck(String id) {
		
		boolean chk = false;
		String sql = "select m_id from member where m_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				chk = false; // 아이디가 이미 존재한다. 
			}
			else
			{
				chk = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close();
		return chk;
		
	}
	private void close() {
		try {
			if(rs !=null){
				rs.close();
			}
			if(pstmt !=null) {
				pstmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
