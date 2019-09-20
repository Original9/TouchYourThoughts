package co.joe.dto;

import java.sql.Date;

public class BoarderDto {
	private int bNum;
	private String bName;
	private String bTitle;
	private String bContent;
	private Date bWriteDate;
	private int bHit;
	private String bId;
	private String bFileName;
	




	public BoarderDto() {
		
	}
	
	
	
	public BoarderDto(String bName, String bTitle, String bContent, String bId) {
		
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bId = bId;
	}



	public int getbNum() {
		return bNum;
	}
	
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public Date getbWriteDate() {
		return bWriteDate;
	}
	public void setbWriteDate(Date bWriteDate) {
		this.bWriteDate = bWriteDate;
	}
	public int getbHit() {
		return bHit;
	}
	public void setbHit(int bHit) {
		this.bHit = bHit;
	}

	public String getbId() {
		return bId;
	}



	public void setbId(String bId) {
		this.bId = bId;
	}



	public String getbFileName() {
		return bFileName;
	}



	public void setbFileName(String bFileName) {
		this.bFileName = bFileName;
	}



	@Override
	public String toString() {
		return "BoarderDto [bNum=" + bNum + ", bName=" + bName + ", bTitle=" + bTitle + ", bContent=" + bContent
				+ ", bWriteDate=" + bWriteDate + ", bHit=" + bHit + ", bId=" + bId + ", bFileName=" + bFileName + "]";
	}
	
	
	
}
