package model.dao;

import model.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;


/**
 * Created by cxworks on 17-1-12.
 */
@Service
public interface UserDAO extends CrudRepository<User,Long> {

    public User findByUsername(String username);

}
