package bit.data.dao;

import bit.data.dto.CafeDto;
import bit.data.dto.CafeImgDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MypageDao implements MypageDaoInter {
    String ns = "bit.data.dao.MypageDao.";
    @Autowired
    SqlSession session;

    @Override
    public int selectCfLkCnt(int loginId) {
//        System.out.println(loginId);
        return session.selectOne(ns + "selectCfLkCnt", loginId);
    }

    @Override
    public int selectCfCmtCnt(int loginId) {
//        System.out.println(loginId);
        return session.selectOne(ns + "selectCfCmtCnt", loginId);
    }

    @Override
    public List<CafeDto> selectCfIdNm(int loginId) {
        return session.selectList(ns + "selectCfIdNm", loginId);
    }

    @Override
    public List<CafeImgDto> selectCfLkCi(int cfId) {
        return session.selectList(ns + "selectCfLkCi", cfId);
    }
}
