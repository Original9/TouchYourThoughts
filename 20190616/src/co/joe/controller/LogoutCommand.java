package co.joe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.joe.command.Command;

public class LogoutCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(false);
		session.invalidate();//세션삭제
		String path;
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/logout.jsp");
		dispatcher.forward(request, response);
	}

}
