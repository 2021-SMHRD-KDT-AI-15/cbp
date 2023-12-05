package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CigaretteDAO {

    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

    public void increaseCigaretteCount(String userId) {
        SqlSession sqlSession = sqlSessionFactory.openSession(true);

        try {
            // 오늘 피운 담배의 갯수를 데이터베이스에 증가시키는 쿼리를 실행
            sqlSession.update("com.smhrd.model.CigaretteMapper.increaseCigaretteCount", userId);
        } finally {
            sqlSession.close();
        }
    }

    public int getDailyCigaretteCount(String userId) {
        SqlSession sqlSession = sqlSessionFactory.openSession(true);

        try {
            // 오늘 피운 담배의 갯수를 조회하는 쿼리를 실행
            return sqlSession.selectOne("com.smhrd.model.CigaretteMapper.getDailyCigaretteCount", userId);
        } finally {
            sqlSession.close();
        }
    }
}