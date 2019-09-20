package co.joe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.Dao.BoarderDao;
import co.joe.command.Command;
import co.joe.dto.BoarderDto;

public class BoardUpdateCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BoarderDao dao = new BoarderDao();
		BoarderDto dto = new BoarderDto();
		
		dto.setbNum(Integer.parseInt(request.getParameter("bnum")));
		dto.setbTitle(request.getParameter("title"));
		dto.setbContent(request.getParameter("content"));
		
		int n = dao.update(dto);
		String path;
		if(n != 0) 
			path = "boarderList.do"; //성공시 목록보여줌
		else  
			path ="boardUpdateForm.do"; // 실패시 입력폼
		
		

		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
