package model.dao;

import model.entity.Plan;
import org.springframework.data.repository.CrudRepository;

import java.sql.Date;
import java.util.List;

/**
 * Created by cxworks on 17-1-22.
 */
public interface PlanDAO extends CrudRepository<Plan,Long> {

    public List<Plan> findByCityAndDateBetweenAndConfirmedFalse(String city, Date min,Date max);


    public List<Plan> findByHidAndRoomAndDateBetween(long hid,String room,Date min,Date max);
}
