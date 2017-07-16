package model.dao;

import model.entity.UserCard;
import org.springframework.data.repository.CrudRepository;

import java.sql.Date;
import java.util.List;

/**
 * Created by cxworks on 17-1-17.
 */
public interface UserCardDAO extends CrudRepository<UserCard,Long> {

    List<UserCard> findByAmountLessThanAndOnDateBefore(double line, Date today);



}
