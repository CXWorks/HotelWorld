package controller.timer;

import model.dao.BookRecordDAO;
import model.dao.PlanDAO;
import model.dao.UserCardDAO;
import model.dao.UserDAO;
import model.entity.BookRecord;
import model.entity.Plan;
import model.entity.User;
import model.entity.UserCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by cxworks on 17-3-9.
 */
@Component
public class VIPTask {
    @Autowired
    UserDAO userDAO;
    @Autowired
    UserCardDAO userCardDAO;
    @Autowired
    BookRecordDAO bookRecordDAO;
    @Autowired
    PlanDAO planDAO;


    @Transactional
    @Scheduled(fixedRate = 86400000,initialDelay = 1000)
    public void daily(){

        Date today=new Date(Calendar.getInstance().getTimeInMillis());
        List<UserCard> cards=userCardDAO.findByAmountLessThanAndOnDateBefore(1000,today);
        Iterable<User> users=userDAO.findAll(cards.stream().map(c->c.getId()).collect(Collectors.toList()));
        List<User> notmember=new ArrayList<>();
        users.forEach(u->{
            if (u.getAuthorities().contains(new SimpleGrantedAuthority("member"))){
                u.getAuthorities().remove(new SimpleGrantedAuthority("member"));
                notmember.add(u);
            }
        });
        userDAO.save(notmember);
        System.out.println("exclude "+notmember.size()+" members");
    }


    @Transactional
    @Scheduled(fixedRate = 86400000,initialDelay = 5000)
    public void confirm(){
        Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DATE,-1);
        Date date=new Date(calendar.getTimeInMillis());
        List<BookRecord> records=bookRecordDAO.findByPassedIsNullAndStartBefore(date);
        for (BookRecord bookRecord:records){
            bookRecord.setPassed(true);
            List<Plan> plans=planDAO.findByHidAndRoomAndDateBetween(bookRecord.getHid(),bookRecord.getRoom(),bookRecord.getStart(),bookRecord.getEnd());
            plans.stream().forEach(p->p.setConfirmed(true));

            planDAO.save(plans);
        }
        bookRecordDAO.save(records);
    }
}
