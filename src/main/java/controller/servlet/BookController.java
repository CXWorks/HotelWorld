package controller.servlet;

import model.dao.BookRecordDAO;
import model.dao.PayRecordDAO;
import model.dao.PlanDAO;
import model.dao.UserCardDAO;
import model.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by cxworks on 17-1-29.
 */
@Controller
public class BookController {

    @Autowired
    BookRecordDAO bookRecordDAO;
    @Autowired
    PlanDAO planDAO;
    @Autowired
    UserCardDAO userCardDAO;
    @Autowired
    PayRecordDAO payRecordDAO;


    @RequestMapping(path = "/book/new" , method = RequestMethod.POST)
    public String storeRecord(
            @ModelAttribute("BookRecord")BookRecord bookRecord,
            Model model

    ){



        bookRecordDAO.save(bookRecord);
        UserCard card=userCardDAO.findOne(bookRecord.getCid());
        card.spend(bookRecord.getTotal());
        userCardDAO.save(card);
        model.addAttribute("url","/index");

        return "/success";
    }

    @RequestMapping(path = "/book/cancel",method = RequestMethod.GET)
    public String cancelBook(@RequestParam(name = "bid")long bid){
                BookRecord bookRecord=bookRecordDAO.findOne(bid);
                if (bookRecord.isPayed()){
                    User user= (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                    UserCard card=userCardDAO.findOne(user.getId());
                    card.setAmount(card.getAmount()+bookRecord.getTotal());
                    userCardDAO.save(card);
                    PayRecord payRecord=new PayRecord(user.getId(),user.getUsername(),-bookRecord.getTotal());
                    payRecordDAO.save(payRecord);
                }
                bookRecordDAO.delete(bookRecord);
                return "redirect: /self";
    }

    @RequestMapping(path = "/book/new" , method = RequestMethod.GET)
    public String newBook(
            @RequestParam(name = "pid") List<Long> pids,
            Model model

    ){
        User user= (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Iterable<Plan> iterable=planDAO.findAll(pids);
        List<Plan> list=new ArrayList<>();
        iterable.forEach(i->list.add(i));
        BookRecord record=new BookRecord(list,user.getId());
        model.addAttribute("record",record);
        UserCard card=userCardDAO.findOne(user.getId());
        int cut=card.getLevel()*5;
        cut=cut<10?10:cut;
        cut=cut>50?50:cut;
        record.setTotal(record.getTotal()-cut);
        model.addAttribute("card",card);
        model.addAttribute("cut",cut);
        return "new";
    }










}
