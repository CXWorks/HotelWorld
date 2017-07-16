package controller.middle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;


import javax.sql.DataSource;

/**
 * Created by cxworks on 17-1-12.
 */
@EnableWebSecurity
public class SecurityFilter extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService myAuthenticationProvider;
    @Autowired
    private DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        JdbcTokenRepositoryImpl daoSupport=new JdbcTokenRepositoryImpl();
        daoSupport.setDataSource(dataSource);
        http
                .authorizeRequests()
                .antMatchers("/js/*","/fonts/*","/css/*","/images/*","/druid/**","/register/**").permitAll()
//                .antMatchers("/hotel/*").hasRole("manager")
//                .antMatchers("/member/*").hasRole("member")
                .anyRequest().authenticated()

                .and().rememberMe().alwaysRemember(true).tokenRepository(daoSupport).and()
                .csrf().disable()
                .formLogin().loginPage("/index").loginProcessingUrl("/index")
                .successForwardUrl("/index").usernameParameter("j_username").passwordParameter("j_password")
                .successForwardUrl("/index")

                .permitAll();        //注2
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(myAuthenticationProvider);
    }

}
