package bit.data.dao;

import bit.data.dto.ComTourAnsDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public class ComTourAnsDao implements ComTourAnsDaoInter{
    @Autowired
    SqlSession session;

    String ns = "bit.data.dao.ComTourAnsDao.";

    @Override
    public int getMaxNum() {
        return 0;
    }

    @Override
    public List<ComTourAnsDto> getAllAnsList(int tr_id) {
        return null;
    }

    @Override
    public void insertAns(ComTourAnsDto dto) {
        session.insert(ns+"insertAns",dto);
    }

    @Override
    public ComTourAnsDto getAnsData(int tm_id) {
        return null;
    }

    @Override
    public void deleteAns(int tm_id) {

    }

    @Override
    public void updateRestep(Map<String, Integer> map) {

    }
}
