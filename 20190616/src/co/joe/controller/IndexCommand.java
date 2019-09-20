package co.joe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.command.Command;

public class IndexCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// 이 부분에 실행할 명령 및 돌려줄 페이지를 기술한다.
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/main.jsp");
		dispatcher.forward(request, response);

	}

}
