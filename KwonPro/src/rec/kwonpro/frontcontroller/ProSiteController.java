package rec.kwonpro.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rec.kwonpro.command.Command;
import rec.kwonpro.command.NDeleteCommand;
import rec.kwonpro.command.NDetailCommand;
import rec.kwonpro.command.NEditCommand;
import rec.kwonpro.command.NListCommand;
import rec.kwonpro.command.NRegCommand;
import rec.kwonpro.command.NUpdateCommand;


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
		
		if(com.equals("/index.do")) {
			command = new NListCommand();
			command.execute(request, response);
			viewPage = "home.jsp";
		}else if(com.equals("/nlist.do")) {
			command = new NListCommand();
			command.execute(request, response);
			viewPage = "notice/list.jsp";
		}else if(com.equals("/ndetail.do")){
			command = new NDetailCommand();
			command.execute(request, response);
			System.out.println(com);
			viewPage="notice/detail.jsp";
		}else if(com.equals("/nwrite.do")){
			viewPage="notice/reg.jsp";
		}else if(com.equals("/nreg.do")) {
			command = new NRegCommand();
			command.execute(request, response);
			viewPage="nlist.do";
		}else if(com.equals("/nedit.do")) {
			command = new NEditCommand();
			command.execute(request, response);
			viewPage="notice/edit.jsp";
		}else if(com.equals("/ndelete.do")) {
			command = new NDeleteCommand();
			command.execute(request, response);
			viewPage="nlist.do";
		}else if(com.equals("/nupdate.do")) {
			command = new NUpdateCommand();
			command.execute(request, response);
			viewPage="ndetail.do?nid="+request.getParameter("id");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	

}
