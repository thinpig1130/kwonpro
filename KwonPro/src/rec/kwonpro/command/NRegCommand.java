package rec.kwonpro.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import rec.kwonpro.common.MyUtils;
import rec.kwonpro.dao.NoticeDAO;
import rec.kwonpro.dto.Notice;

public class NRegCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		SqlSession session = MyUtils.getSession(); 
		NoticeDAO dao = session.getMapper(NoticeDAO.class);
		Notice vo = new Notice();
		vo.setTitle(request.getParameter("title"));
		vo.setFiles(request.getParameter("file"));
		vo.setContent(request.getParameter("content"));
		vo.setWriterId(request.getParameter("writerid"));
		System.out.println("여기가 보를 찍음");
		System.out.println(vo);
		dao.write(vo);
		session.close();
	}

}
