package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	
	// web_member 테이블을 실제로 접근해 sql을 수행할 수 있는 클래스 -> DB에 접근해서 사용하겠다
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	// 회원가입 메소드
	public int join(MemberDTO dto) {
		
		// 1. sqlSession 객체 빌려오기 -> DB 접속할 수 있는 기능을 가지고 있음
		// openSession(true) : true는 작업에 대한 commit을 자동으로 지정하는 기능
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 2. sql 문장 실행 -> 결과값 받아서 처리
		
		int cnt = sqlSession.insert("join", dto);
		
		// 3. sqlSession 반납 -> 종료
		
		sqlSession.close();
		
		return cnt;
	}
	
	// 로그인 메소드
	public MemberDTO login(MemberDTO dto) {
		
		// 1. SqlSession 생성 -> sqlSessionFactory를 사용하여 생성
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true); // true값을 넣어주는건 commit 하는거임 안넣어주면 매번 commit 해줘야함
		
		// 2. 만들어진 SqlSession으로 수행하고자 하는 sql문장 실행 -> sql구문의 id 활용
		
		MemberDTO result = sqlSession.selectOne("login", dto);
		
		// 3. SqlSession 반납
		
		sqlSession.close();
		
		// 4. 결과에 대한 처리
		
		return result;
		
	}
	
}
