package co.joe.controller;

import java.io.Console;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.joe.Dao.MemberDao;
import co.joe.command.Command;
import co.joe.dto.MemberDto;

public class LoginCheckCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 전달된 ID, Password를 받아서 DB에서 확인 해서 인증하는 루틴 
	//	RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/loginform.jsp");
	//	dispatcher.forward(request, response);
		
		MemberDao dao = new MemberDao();
		MemberDto dto = new MemberDto();
		HttpSession session = request.getSession(false); // 세션을 없으면 굳이 만들지 말라 (false)
				
		boolean chk;
		String path = null;	
		
		dto.setM_id(request.getParameter("id"));
		dto.setM_pw(request.getParameter("pw"));
		
	//	dto.setM_name(request.getParameter("name"));
		
		
		dto = dao.loginCheck(dto);
		//System.out.println(dto);
		if(dto.getM_grant() != null)
		{
			session.setAttribute("id", dto.getM_id()); // 세션객체를 사용
			session.setAttribute("grant", dto.getM_grant());
			session.setAttribute("name", dto.getM_name());			
			//session.setAttribute("pw", request.getParameter("pw"));
			path = "jsp/loginOk.jsp";
		}
		else
		{			
			path = "jsp/loginFail.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}

}
