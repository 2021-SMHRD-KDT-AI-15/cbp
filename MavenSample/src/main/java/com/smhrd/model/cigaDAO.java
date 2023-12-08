package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class cigaDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	ArrayList<cigaDTO> q_list = new ArrayList<>();

	// 시가 테이블 가져오는 메소드
	public ArrayList<cigaDTO> log(String email) {
		// 1. sqlSession 생성 필요
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		q_list = (ArrayList) sqlSession.selectList("log", email);
		// 3. sqlSession 종료
		sqlSession.close();

		return q_list;
	}

}
