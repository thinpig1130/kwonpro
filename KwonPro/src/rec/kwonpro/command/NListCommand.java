package rec.kwonpro.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.ibatis.session.SqlSession;
import rec.kwonpro.common.MyUtils;
import rec.kwonpro.dao.NoticeDAO;
import rec.kwonpro.dto.Notice;

public class NListCommand implements Command {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		SqlSession session = MyUtils.getSession(); 
		NoticeDAO dao = session.getMapper(NoticeDAO.class);
		ArrayList<Notice> dtos = dao.list();
		request.setAttribute("list", dtos);
	}
}
