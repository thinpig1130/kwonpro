package rec.kwonpro.dao;

import java.util.ArrayList;
import rec.kwonpro.dto.Notice;

public interface NoticeDAO {
	public void write(Notice vo);
	public ArrayList<Notice> list();
	public void upHit(int id);
	public Notice contentView(int id);
}
