package co.joe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.Dao.BoarderDao;
import co.joe.command.Command;
import co.joe.dto.BoarderDto;


public class boardUpdateForm implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BoarderDto dto = new BoarderDto();
		BoarderDao dao = new BoarderDao();
		int key =Integer.parseInt(request.getParameter("key"));
		
		dto = dao.select(key);
		
		request.setAttribute("list", dto);
		request.setAttribute("key", request.getParameter("key"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/boarderUpdate.jsp");
		dispatcher.forward(request, response);

	}

}
