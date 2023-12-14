package com.smhrd.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	// 회원가입 메소드
	public int join(MemberDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("join", dto);
		sqlSession.close();
		return cnt;
	}
	
	// 회원가입 체크 메소드
	public int check(MemberDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.selectOne("check", dto);
		sqlSession.close();
		return cnt;
	}
	
	// 로그인 메소드
	public MemberDTO login(MemberDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		MemberDTO result = sqlSession.selectOne("login", dto);
		sqlSession.close();
		return result;
	}
	
}
