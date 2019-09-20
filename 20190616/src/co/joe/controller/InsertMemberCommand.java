package co.joe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.Dao.MemberDao;
import co.joe.command.Command;
import co.joe.dto.MemberDto;

public class InsertMemberCommand implements Command {

	public InsertMemberCommand() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MemberDto dto = new MemberDto();
		MemberDao dao = new MemberDao();
		String path = null;
		
		dto.setM_id(request.getParameter("id"));
		dto.setM_pw(request.getParameter("pw"));
		dto.setM_name(request.getParameter("name"));
		dto.setM_address(request.getParameter("addr"));
		
		int n = dao.insertMember(dto);
		if(n !=  0)
		{
			path="jsp/joinOk.jsp";
		}
		else
		{
			path = "jsp/joinFail.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
