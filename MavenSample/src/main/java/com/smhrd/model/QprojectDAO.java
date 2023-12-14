package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;
public class QprojectDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	public int put(QprojectDTO dto) {
	        SqlSession sqlSession = sqlSessionFactory.openSession(true);
	        try {
	            int result = sqlSession.insert("put", dto);
	            sqlSession.commit();
	            return result;
	        } finally {
	            sqlSession.close();
	        }
	    }
	
	public int ciga(QprojectDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			int result = sqlSession.insert("ciga", dto);
			sqlSession.commit();
			return result;
		} finally {
			sqlSession.close();
		}
	}
	
	public QprojectDTO come(QprojectDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		QprojectDTO result = sqlSession.selectOne("come", dto);
		sqlSession.close();
		return result;
	}
	
		public int smoking (String email) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			int result = sqlSession.update("smoking", email);
			sqlSession.close();
			return result;
		}
}
		