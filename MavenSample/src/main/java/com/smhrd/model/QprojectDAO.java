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
	
	//특정 사용자 값을 불러오는 메소드
	public QprojectDTO come(QprojectDTO dto) {
		// 1. sqlSession 생성 필요
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 2. sql 문장 호출 -> Mapper를 활용하여 호출!
		QprojectDTO result = sqlSession.selectOne("come", dto);
		
		// 3. sqlSession 종료
		sqlSession.close();
		return result;
	}
	
	//특정 사용자의 흡연을 추가하는 메소드
		public int smoking (String email) {
			
			System.out.println("실행 : " + email);
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			int result = sqlSession.update("smoking", email);
			System.out.println("결과 : " + result);
			sqlSession.close();
			return result;
			
		}
}
		