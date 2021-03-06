package rec.kwonpro.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import rec.kwonpro.common.MyUtils;
import rec.kwonpro.dao.NoticeDAO;
import rec.kwonpro.dto.Notice;

public class NDetailCommand implements Command {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int nid = Integer.parseInt(request.getParameter("nid"));
		SqlSession session = MyUtils.getSession(); 
		NoticeDAO dao = session.getMapper(NoticeDAO.class);
		dao.upHit(nid);
		Notice dto = dao.curNotice(nid);
		Notice preDto = dao.preNotice(nid);
		Notice nextDto = dao.nextNotice(nid);
		request.setAttribute("notice", dto);
		request.setAttribute("nextNotice", nextDto);
		request.setAttribute("preNotice", preDto);
		
		session.close();
	}

}
