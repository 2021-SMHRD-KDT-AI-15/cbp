package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;
public class QprojectDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	// 정보들을 insert 하는 메소드
	
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

	//특정 사용자 값을 불러오는 메소드
	public QprojectDTO come(String email) {
		// 1. sqlSession 생성 필요
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 2. sql 문장 호출 -> Mapper를 활용하여 호출!
		QprojectDTO dto = sqlSession.selectOne("come", email);
		
		// 3. sqlSession 종료
		sqlSession.close();
		return dto;
	}
}
		