package co.joe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.command.Command;

public class InsertMemberForm implements Command {

	public InsertMemberForm() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/insertMember.jsp");
		dispatcher.forward(request, response);

	}

}
