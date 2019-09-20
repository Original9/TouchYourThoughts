package co.joe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.Dao.BoarderDao;
import co.joe.command.Command;
import co.joe.dto.BoarderDto;


public class boardReadCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BoarderDao dao = new BoarderDao();
		BoarderDto dto = new BoarderDto();
		int key = Integer.parseInt(request.getParameter("key"));
		
		dto = dao.select(key);
		request.setAttribute("list", dto);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/boarderRead.jsp");
		dispatcher.forward(request, response);		
		

	}

}
