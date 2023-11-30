package com.smhrd.db;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

	// DB 접근을 위한 SqlSession을 생성할 수 있는 공간
	// 해당하는 공장은 프로그램이 시작되면 바로 작업을 수행해야 함

	// 사용하고자하는 SqlSessionFactory를 전역변수로 지정
	public static SqlSessionFactory sqlSessionFactory;

	static {

		// static 블록 (= 초기화 블록) : 프로그램이 시작(=SqlSessionManager 클래스가 호출)되면 바로 진행되는 블록

		String resource = "com/smhrd/db/mybatis-config.xml";
		InputStream inputStream;

		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	} // static 블록의 종료 지점

	// DAO 파일에서 해당하는 기능을 불러다 쓸 수 있는 메소드 생성
	public static SqlSessionFactory getFactory() {
		return sqlSessionFactory;
	}
}
