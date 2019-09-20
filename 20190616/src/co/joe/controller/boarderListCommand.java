package co.joe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.Dao.BoarderDao;
import co.joe.command.Command;
import co.joe.dto.BoarderDto;

public class boarderListCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ArrayList<BoarderDto> list = new ArrayList<BoarderDto>();
		BoarderDao dao = new BoarderDao();
		list = dao.select();
		request.setAttribute("list", list); //db에서 넘어온 값을 request객체에 속성으로 삽입
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/boarderList.jsp");
		dispatcher.forward(request, response);

	}

}
