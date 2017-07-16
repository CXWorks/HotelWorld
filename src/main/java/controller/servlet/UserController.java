package controller.servlet;

import model.dao.BookRecordDAO;
import model.dao.PayRecordDAO;
import model.dao.UserCardDAO;
import model.dao.UserDAO;
import model.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

/**
 * Created by cxworks on 17-1-14.
 */
@Controller
public class UserController {

    @Autowired
    UserDAO userDAO;
    @Autowired
    UserCardDAO userCardDAO;
    @Autowired
    PayRecordDAO payRecordDAO;
    @Autowired
    BookRecordDAO bookRecordDAO;

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute("User")User user, Model model){
        user.setDefault();
        userDAO.save(user);
        model.addAttribute("user",user);
        return "/register/choice";
    }
    @RequestMapping(value = "/register/card", method = RequestMethod.POST)
    public String card(@ModelAttribute("UserCard") UserCard userCard,Model model){
        User user= userDAO.findOne(userCard.getId());
        userCard.setUsername(user.getUsername());
        userCard.setDefault();
        userCardDAO.save(userCard);
        model.addAttribute("url","/index");
        return "/success";
    }

    @Transactional
    @RequestMapping(value = "/pay/confirm" , method = RequestMethod.GET)
    public String pay(@RequestParam(value = "amount",required = true)double amount
    ,Model model){
        User user= (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("user",user);
        model.addAttribute("amount",amount);
        payRecordDAO.save(new PayRecord(user.getId(),user.getUsername(),amount));
        UserCard card=userCardDAO.findOne(user.getId());
        card.addAmount(amount);
        if (card.getAmount()>=1000&&!user.getAuthorities().contains(new SimpleGrantedAuthority("member"))){
            user.getAuthorities().add(new SimpleGrantedAuthority("member"));
            Calendar calendar=Calendar.getInstance();
            calendar.add(Calendar.YEAR,1);
            card.setOnDate(new Date(calendar.getTimeInMillis()));
            userDAO.save(user);
        }


        userCardDAO.save(card);
        model.addAttribute("url","/index");
        return "/success";
    }

    @RequestMapping(value = "/member/cancel", method = RequestMethod.GET)
    public String cancel(Model model){
        User user= (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        user.getAuthorities().remove(new SimpleGrantedAuthority("member"));

        UserCard card=userCardDAO.findOne(user.getId());
        card.setOnDate(new Date(Calendar.getInstance().getTimeInMillis()-10000));
        userDAO.save(user);
        userCardDAO.save(card);
        model.addAttribute("url","/index");
        return "/success";
    }

    @RequestMapping(path = "/member/grade2money",method = RequestMethod.GET)
    public String grade2money(@RequestParam(value = "grades",required = true)int change,Model model){
        User user= (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        UserCard card=userCardDAO.findOne(user.getId());
        if (change>card.getGrades())
            return "error";
        else {
            card.grade2money(change);
            userCardDAO.save(card);
            model.addAttribute("url","/self");
            return "/success";
        }
    }
    @RequestMapping(path = "/self" , method = RequestMethod.GET)
    public String self(Model model){
        User user1= (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user=userDAO.findOne(user1.getId());
        UserCard card=userCardDAO.findOne(user.getId());
        model.addAttribute("user",user);
        model.addAttribute("card",card);
        List<BookRecord> unpassed=bookRecordDAO.findByCidAndPassedIsNull(user.getId());
        List<BookRecord> doing=bookRecordDAO.findByCidAndPassedAndFaceChecked(user.getId(),true,false);
        List<BookRecord> success=bookRecordDAO.findByCidAndPassedAndFaceChecked(user.getId(),true,true);
        List<BookRecord> failure=bookRecordDAO.findByCidAndPassedAndFaceChecked(user.getId(),false,false);
        List<PayRecord> payRecords=payRecordDAO.findByUid(user.getId());
        model.addAttribute("unpassed",unpassed);
        model.addAttribute("doing",doing);
        model.addAttribute("success",success);
        model.addAttribute("failure",failure);
        model.addAttribute("payrecords",payRecords);
        return "user/member";
    }

    @RequestMapping(path = "/user/modify",method = RequestMethod.POST)
    public String modifyInfo(@ModelAttribute("User")User u){
        User user=userDAO.findOne(u.getId());
        user.setFirstname(u.getFirstname());
        user.setSecondname(u.getSecondname());
        user.setPassword(u.getPassword());
        userDAO.save(user);

        return "redirect: /self";
    }

    @RequestMapping(path = "/card/modify",method = RequestMethod.POST)
    public String modifyCardInfo(@RequestParam(name = "id") long uid,@RequestParam("pay") String pay){
        UserCard card=userCardDAO.findOne(uid);
        card.setPay_password(pay);
        userCardDAO.save(card);
        return "redirect: /self";
    }

}
