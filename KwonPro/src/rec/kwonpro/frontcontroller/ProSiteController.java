package rec.kwonpro.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rec.kwonpro.command.Command;
import rec.kwonpro.command.NDetailCommand;
import rec.kwonpro.command.NListCommand;


@WebServlet("*.do")
public class ProSiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProSiteController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		request.setCharacterEncoding("UTF-8");
		
		String viewPage = null;
		Command command = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		
		
		if(com.equals("/nlist.do")) {
			command = new NListCommand();
			command.execute(request, response);
			viewPage = "notice/list.jsp";
		}else if(com.equals("/ndetail.do")){
			command = new NDetailCommand();
			command.execute(request, response);
			System.out.println(com);
			viewPage="notice/detail.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	

}
