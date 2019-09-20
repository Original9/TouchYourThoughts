package co.joe.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.joe.command.Command;


/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String,Command> map = null; // Servlet interface를 만들어야한다.
	//private HashMap<String,Command> map = new HashMap<String, Command>();
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// 이 부분이 Command를 인식하는 부분 HashMap을 통해 정의		
		map = new HashMap<String, Command>();
		map.put("/index.do",new IndexCommand());
		map.put("/login.do", new LoginFormCommand());
		map.put("/loginCheck.do", new LoginCheckCommand());
		map.put("/insertMember.do",new InsertMemberForm());
		map.put("/join.do", new InsertMemberCommand());
		map.put("/idCheck.do", new IdcheckCommand());
		map.put("/logout.do", new LogoutCommand());
		map.put("/boarderList.do",new boarderListCommand());
		          
		map.put("/boarderWriteForm.do",new boarderWriteForm());
		map.put("/boarderWrite.do", new boarderWriteCommand());
		map.put("/boarderRead.do", new boardReadCommand());
		map.put("/boardUpdateForm.do", new boardUpdateForm());
		map.put("/boardUpdate.do", new BoardUpdateCommand());
		map.put("/FileDownloadAction.do", new FileDownloadAction());
		
		
		
		
		// Map 을 추가시 켜주면 Controler 를 통제한다.
		//map.put("/index.do",new IndexCommand());
		//map.put("/index.do",new IndexCommand());
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 들어온 요청을 확인해서 실행시켜주는 부분
		request.setCharacterEncoding("EUC-KR");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		
		Command comm = map.get(path);
		comm.excute(request, response);
	}

}
