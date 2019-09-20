package co.joe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.command.Command;

public class LoginFormCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Login 폼이 화면에 표현 할 수 있더록 정의 
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/loginform.jsp");
		dispatcher.forward(request, response);
	

	}

}
