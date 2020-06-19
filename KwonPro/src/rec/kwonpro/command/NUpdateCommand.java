package rec.kwonpro.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import rec.kwonpro.common.MyUtils;
import rec.kwonpro.dao.NoticeDAO;
import rec.kwonpro.dto.Notice;

public class NUpdateCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		SqlSession session = MyUtils.getSession(); 
		NoticeDAO dao = session.getMapper(NoticeDAO.class);
		Notice vo = new Notice();
		vo.setId(Integer.parseInt(request.getParameter("id")));
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		String file = request.getParameter("newfile");
		if(file.equals("")) {
			vo.setFiles(request.getParameter("file"));
		}else {
			vo.setFiles(file);
		}
		
		System.out.println(vo);
		dao.update(vo);
		session.close();
	}

}
