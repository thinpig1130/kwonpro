package rec.kwonpro.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import rec.kwonpro.common.MyUtils;
import rec.kwonpro.dao.NoticeDAO;
import rec.kwonpro.dto.Notice;

public class NListCommand implements Command {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(request.getParameter("page"));
		String strPage = request.getParameter("page");
		int page;
		if (strPage == null || strPage.equals("")) {
			page = 1;
		}else {
			page = Integer.parseInt(strPage);			
		}
		
		SqlSession session = MyUtils.getSession(); 
		NoticeDAO dao = session.getMapper(NoticeDAO.class);
		ArrayList<Notice> dtos = dao.list(page);
		int maxP = dao.allPage();
		request.setAttribute("list", dtos);
		request.setAttribute("maxpage", maxP);
	}
}
