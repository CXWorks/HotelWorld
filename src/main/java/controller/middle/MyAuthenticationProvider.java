package controller.middle;

import model.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Created by cxworks on 17-1-12.
 */
@Service("AuthenticationProvider")
public class MyAuthenticationProvider implements UserDetailsService {

    @Autowired
    UserDAO userDAO;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserDetails userDetails= userDAO.findByUsername(username);
        return userDetails;
    }
}
