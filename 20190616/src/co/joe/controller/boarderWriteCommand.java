package co.joe.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.joe.Dao.BoarderDao;
import co.joe.command.Command;
import co.joe.dto.BoarderDto;
import javafx.application.Application;


public class boarderWriteCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 글 추가 루틴 만들기
		BoarderDto dto = new BoarderDto();
		BoarderDao dao = new BoarderDao();
		
		// 첨부파일 업로드 루틴
		String file1 =null; // 파일명
		String orgfileName1 ="";
		String upfilepath = request.getSession().getServletContext().getRealPath("uploadfile"); // 파일 저장공간
		int filesize = 100*1024; // file size =  10m byte   defalut값은 200MB이다
		MultipartRequest mul = new MultipartRequest(request, upfilepath,filesize,"utf-8",new DefaultFileRenamePolicy());
		
		
		dto.setbId(mul.getParameter("uid"));
		dto.setbName(mul.getParameter("writer"));
		dto.setbWriteDate(Date.valueOf(mul.getParameter("wdate")));
		dto.setbTitle(mul.getParameter("title"));
		dto.setbContent(mul.getParameter("content")); // 이 파라메터 값을 jsp파일에서 가지고 오는거 같은데
		dto.setbFileName(mul.getOriginalFileName("fileName"));
		
		
		
		int n = dao.insert(dto);
		String path;
		if(n != 0) {
			////////////
			file1 = mul.getFilesystemName("fileName"); // name=file1의 업로드된 시스템 파일명을 구함(중복된 파일이 있으면, 중복 처리 후 파일 이름)
			orgfileName1 = mul.getOriginalFileName("fileName"); // name=file1의 업로드된 원본파일 이름을 구함(중복 처리 전 이름)
			////////////			
			path = "boarderList.do"; //성공시 목록보여준다.			
		}			
		else {
			path = "boarderWriteForm.do"; //실패시 입력폼을 보여준다.			
		}
			
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}

}
