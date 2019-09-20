package co.joe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.Dao.MemberDao;
import co.joe.command.Command;
import co.joe.dto.MemberDto;

public class IdcheckCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ID중복확인
		MemberDao dao = new MemberDao();
		
		String id = request.getParameter("id");
		boolean chk = dao.isIdCheck(id);
		//false 가 이미 존재 true가 생성 가능 
		String path;
		if(chk)
		{
			path = "jsp/idOK.jsp"; // 사용가능한 아이디
		}
		else
		{
			path = "jsp/idNo.jsp"; //사용 불가능한 아이디
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		

	}

}
