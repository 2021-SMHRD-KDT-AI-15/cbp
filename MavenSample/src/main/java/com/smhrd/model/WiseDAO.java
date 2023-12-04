package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class WiseDAO {

	// DB에 접근할 수 있는 클래스!
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	// 게시판 내용을 담을 수 있는 ArrayList 생성
	ArrayList<WiseDTO> WISE_list = new ArrayList<>();    // b_list는 변수이름임
	
	// 게시판의 내용을 읽어올 수 있는 메소드!
	public ArrayList<WiseDTO> list() {
		// 1. DB 접속 권한/통로 필요!
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
												// 기본적으로 작업해야하니까 openSession안에 true넣어줘야함
		// 2. Sql에 대한 내용 필요!
		// selectOne() : 결과가 하나의 행만 돌아오는 것!
		// selectList() : 결과가 여러개의 행을 돌아오게 하는 것!
		WISE_list = (ArrayList) sqlSession.selectList("list"); // 전체행을 싹다 불러올거라 재료값은 필요없음 selectList(아이디,재료값)
									   			// 오른쪽은 오브젝트 형태고 왼쪽은 arraylist 형태임 그래서 다운이필요함.
												// BoardMapper.xml 쪽 하고왔음
		
		// 3. 결과를 진행할 내용 필요!
		
		// 4. DB접속 종료 내용 필요!
		sqlSession.close(); 
		
		return WISE_list; 
		
	}
	
		   // 해당하는 void도 BoardDTO 타입으로 바꿔줘야함
	public WiseDTO detail(int num) {
		// 1. sqlSession 생성 필요!
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 2. sql문장 호출 -> Mapper를 활용하여 호출!
		WiseDTO dto = sqlSession.selectOne("detail", num);  
		// 3. sqlSession 종료
		sqlSession.close(); 
		return dto;
		// 대충 하나의 것만 확인하겠다 라는뜻 
		// selectOne을 하기 때문에 돌아오는 return값이 있을거임 그걸 저장해줘야함
	}
	
	
	
}
