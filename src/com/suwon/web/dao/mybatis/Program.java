package com.suwon.web.dao.mybatis;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.suwon.web.dao.NoticeDao;
import com.suwon.web.entities.Notice;

public class Program {
	public static void main(String[] args) throws IOException, ClassNotFoundException, SQLException {
		/*//��� ��θ� ������ �ִ� ���� ����(���ҽ� ��ġ ����)
		//�� ��ġ�� �߽����� ��ġ����
		//String src = "config.xml";
		String src = "com/suwon/web/dao/mybatis/config.xml";
		InputStream is = Resources.getResourceAsStream(src);
				
		//������ ����(���������̳� ����� - ���۰� ���)
		SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(is);		
		SqlSession session = ssf.openSession();
		
		//���� �θ���
		NoticeDao noticeDao = session.getMapper(NoticeDao.class);
		
		Notice n = noticeDao.get("981");
		
		System.out.println(n.getTitle());*/
		
		
	}
}
