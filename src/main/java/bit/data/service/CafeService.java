package bit.data.service;

import bit.data.dao.CafeDaoInter;
import bit.data.dto.CafeDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CafeService implements CafeServiceInter {

    @Autowired
    CafeDaoInter cafeDao;

    @Override
    public CafeDto selectCafe(int cf_id){
        return cafeDao.selectCafe(cf_id);
    }
}
