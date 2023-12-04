// CigaretteCounter.java

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CigaretteCounter {

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
}