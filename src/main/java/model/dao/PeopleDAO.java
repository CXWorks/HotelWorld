package model.dao;

import model.entity.People;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by cxworks on 17-3-15.
 */
public interface PeopleDAO extends CrudRepository<People,Long> {


}
