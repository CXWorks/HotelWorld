package controller.servlet;

import com.sun.org.apache.xpath.internal.operations.Mod;
import model.dao.*;
import model.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import view.bean.PlanBean;

import java.sql.Date;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Created by cxworks on 17-1-21.
 */
@Controller
public class HotelController {

    @Autowired
    HotelDAO hotelDAO;

    @Autowired
    UserDAO userDAO;

    @Autowired
    PlanDAO planDAO;

    @Autowired
    BookRecordDAO bookRecordDAO;
    @Autowired
    UserCardDAO userCardDAO;
    @Autowired
    PeopleDAO peopleDAO;




    @RequestMapping(path = "/register/hotel",method = RequestMethod.POST)
    public String hotel_register(@ModelAttribute("Hotel")Hotel hotel,
                                 @RequestParam("pay_password")String paypass,
                                 @RequestParam("bankid")String bankid,
                                 Model model){
        User user= userDAO.findOne(hotel.getManagerid());
        UserCard card=new UserCard(user.getId(),user.getUsername(),paypass, Arrays.asList(bankid));
        card.setDefault();
        userCardDAO.save(card);
        hotel.setManagerid(user.getId());
        user.getAuthorities().add(new SimpleGrantedAuthority("manager"));
        userDAO.save(user);
        hotelDAO.save(hotel);
        model.addAttribute("url","/index");
        return "/success";
    }





    @RequestMapping(path = "/hotel/newPlan",method = RequestMethod.GET)
    public String newPlan(@RequestParam(name = "managerid" ,required = true)long id,Model model){
        Hotel hotel=hotelDAO.findByManagerid(id);
        model.addAttribute("hotel",hotel);
        return "/plan/new";
    }

    @RequestMapping(path = "/hotel/newPlan",method = RequestMethod.POST)
    public String newPaln(
            @ModelAttribute("Plan")Plan plan,
            @RequestParam(name = "start") @DateTimeFormat(pattern = "yyyy-MM-dd")Calendar start,
            @RequestParam(name = "end") @DateTimeFormat(pattern = "yyyy-MM-dd")Calendar end,Model model
    ){
        List<Plan> list=new ArrayList<>();
        start.add(Calendar.DATE,1);
        end.add(Calendar.DATE,1);
        while (start.before(end)){
            Plan p=plan.getNew();
            p.setDate(new Date(start.getTimeInMillis()));
            list.add(p);
            start.add(Calendar.DATE,1);

        }
        planDAO.save(list);
        model.addAttribute("url","/index");
        return "/success";
    }

    @RequestMapping(path = "/book/avaliable",method = RequestMethod.GET)
    public String avaliable(@RequestParam(name = "city") String city,
                            @RequestParam(name = "start") @DateTimeFormat(pattern = "yyyy-MM-dd")Calendar start,
                            @RequestParam(name = "end") @DateTimeFormat(pattern = "yyyy-MM-dd")Calendar end,
                            Model model){
                start.add(Calendar.DATE,1);
                end.add(Calendar.DATE,1);
        List<Plan> avaliables=planDAO.findByCityAndDateBetweenAndConfirmedFalse(city,new Date(start.getTimeInMillis()),new Date(end.getTimeInMillis()));
        Map<String,PlanBean> ava=avaliables.stream().collect(Collectors.toConcurrentMap(pk->pk.getHid()+pk.getRoom(), pv -> new PlanBean(pv),
                (a, b)->{
                    a.add(b);
                    return a;
                }));
        model.addAttribute("avaliable",ava);
        return "/book/searchResult";
    }



    @RequestMapping(path = "/hotel/manage",method = RequestMethod.GET)
    public String bookManage(Model model){
        User user= (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Hotel hotel=hotelDAO.findByManagerid(user.getId());
        List<BookRecord> bookRecords=bookRecordDAO.findByMidAndPassedIsNull(user.getId());
        List<BookRecord> bookRecors=bookRecordDAO.findByMidAndPassedAndFaceChecked(user.getId(),true,false);
        List<BookRecord> bookRecords1=bookRecordDAO.findByHidAndPassedAndFaceCheckedAndLeaved(hotel.getId(),true,true,false);
        model.addAttribute("hotel",hotel);
        model.addAttribute("checks",bookRecords);
        model.addAttribute("faces",bookRecors);
        model.addAttribute("unleave",bookRecords1);
        return "manage";
    }

    @RequestMapping(path = "/hotel/manage/pass",method = RequestMethod.GET)
    public String checkIn(@RequestParam("id") long bookid){
        BookRecord bookRecord=bookRecordDAO.findOne(bookid);
        bookRecord.setPassed(true);
        List<Plan> plans=planDAO.findByHidAndRoomAndDateBetween(bookRecord.getHid(),bookRecord.getRoom(),bookRecord.getStart(),bookRecord.getEnd());
        plans.stream().forEach(p->p.setConfirmed(true));
        bookRecordDAO.save(bookRecord);
        planDAO.save(plans);
        return "redirect: /hotel/manage";
    }

    @RequestMapping(path = "/hotel/manage/deny",method = RequestMethod.GET)
    public String checkIndeny(@RequestParam("id") long bookid){
        BookRecord bookRecord=bookRecordDAO.findOne(bookid);
        bookRecord.setPassed(false);
        bookRecordDAO.save(bookRecord);
        return "redirect: /hotel/manage";
    }


    @RequestMapping(path = "/hotel/change" ,method = RequestMethod.GET)
    public String changeInfo(
            @RequestParam(name = "hid")long hid,
            Model model){
        Hotel hotel=hotelDAO.findOne(hid);
        model.addAttribute("hotel",hotel);
        return "hotel";
    }
    @RequestMapping(path = "/hotel/leave",method = RequestMethod.GET)
    public String leave(@RequestParam("bid")long bid,Model model){

        BookRecord bookRecord=bookRecordDAO.findOne(bid);
        bookRecord.setLeaved(true);
        bookRecordDAO.save(bookRecord);
        return "redirect: /hotel/manage";
    }

    @RequestMapping(path = "/hotel/change" ,method = RequestMethod.POST)
    public String changeInfoP(
            @ModelAttribute("Hotel") Hotel hotel,
            Model model){

        hotel.setPassed(null);
        hotelDAO.save(hotel);
        return "redirect: /index";
    }


    @RequestMapping(path = "/hotel/face",method = RequestMethod.GET)
    public String face(@RequestParam(name = "id")long bid){
        BookRecord bookRecord=bookRecordDAO.findOne(bid);
        bookRecord.setFaceChecked(true);
        bookRecord.setPayed(true);
        bookRecordDAO.save(bookRecord);
        return "redirect: /hotel/peoplein?bid="+bookRecord.getId();
    }


    @RequestMapping(path = "/hotel/peoplein",method = RequestMethod.GET)
    public String p(@RequestParam("bid")long bid, Model model){
        model.addAttribute("bid",bid);
        return "checkin";
    }

    @RequestMapping(path = "/hotel/people",method = RequestMethod.GET)
    public String pp(@RequestParam("bid")long bid,
                     @RequestParam("cuid")List<Long> idnums
                     ,Model model){
        List<People> peoples=idnums.stream().filter(i->i!=0).map(id->new People(bid,id)).collect(Collectors.toList());
        peopleDAO.save(peoples);
        return "redirect: /hotel/manage";
    }

}
