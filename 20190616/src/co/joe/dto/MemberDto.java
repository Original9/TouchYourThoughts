package co.joe.dto;

public class MemberDto {

	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_address;
	private String m_grant;
	
	
	public String getM_grant() {
		return m_grant;
	}


	public void setM_grant(String m_grant) {
		this.m_grant = m_grant;
	}


	public MemberDto() 
	{		
		
	}


	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
	}


	public String getM_pw() {
		return m_pw;
	}


	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}


	public String getM_name() {
		return m_name;
	}


	public void setM_name(String m_name) {
		this.m_name = m_name;
	}


	public String getM_address() {
		return m_address;
	}


	public void setM_address(String m_address) {
		this.m_address = m_address;
	}


	@Override
	public String toString() {
		return "MemberDto [m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_address=" + m_address
				+ ", m_grant=" + m_grant + "]";
	}
	
	

}
