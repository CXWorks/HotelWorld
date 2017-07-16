package model.dao;

import model.entity.PayRecord;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by cxworks on 17-1-19.
 */
public interface PayRecordDAO extends CrudRepository<PayRecord,Long> {


    public List<PayRecord> findByUid(long uid);
}
