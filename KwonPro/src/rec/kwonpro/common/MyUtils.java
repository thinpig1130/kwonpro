package rec.kwonpro.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
// ���̹�Ƽ�� ���� ����� ��ƿ��Ƽ
public class MyUtils {
	
public static SqlSessionFactory getSqlSessionFactory() {
		String resource = "rec/kwonpro/common/SqlMapConfig.xml";
		InputStream  reader;
		try {
			reader = Resources.getResourceAsStream(resource);
		}catch (IOException e) {
			throw new IllegalArgumentException(e);
		}
		return new SqlSessionFactoryBuilder().build(reader);
	}
	
	public static SqlSession getSession() {
		return getSqlSessionFactory().openSession(true);
	}
	
}
