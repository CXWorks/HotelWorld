package controller.servlet;

import model.dao.BookRecordDAO;
import model.dao.HotelDAO;
import model.dao.UserCardDAO;
import model.entity.BookRecord;
import model.entity.Hotel;
import model.entity.UserCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Created by cxworks on 17-3-11.
 */
@Controller()
@RequestMapping(path = "/root")
public class RootController {
    @Autowired
    HotelDAO hotelDAO;
    @Autowired
    BookRecordDAO bookRecordDAO;
    @Autowired
    UserCardDAO userCardDAO;

    @RequestMapping(path = "passList",method = RequestMethod.GET)
    public String checkHotel(Model model){
        List<Hotel> hotels=hotelDAO.findByPassedIsNull();
        model.addAttribute("hotels",hotels);
        return "../register/passHotel";
    }

    @RequestMapping(path = "hotel/pass",method = RequestMethod.GET)
    public String hotel_pass(@RequestParam(name = "id")long id){
        Hotel hotel=hotelDAO.findOne(id);
        hotel.setPassed(true);
        hotelDAO.save(hotel);
        return "redirect: /root/passList";
    }

    @RequestMapping(path = "hotel/deny",method = RequestMethod.GET)
    public String hotel_deny(@RequestParam(name = "id")long id){
        Hotel hotel=hotelDAO.findOne(id);
        hotel.setPassed(false);
        hotelDAO.save(hotel);
        return "redirect: /root/passList";
    }

    @Transactional
    @RequestMapping(path = "sum",method = RequestMethod.GET)
    public String sum(Model model){
        List<BookRecord> records=bookRecordDAO.findByPassedIsTrueAndFaceCheckedIsTrueAndRootedIsFalse();
        Map<Long,Double> map=records.stream().collect(Collectors.toConcurrentMap(r->r.getHid(), r->r.getTotal(),(r1, r2)->r1+r2));
        Iterable<Hotel> iterable=hotelDAO.findAll(map.keySet());
        List<UserCard> cards=new ArrayList<>(map.size());

        iterable.forEach(h->{
            UserCard card=userCardDAO.findOne(h.getManagerid());
            card.setAmount(card.getAmount()+map.get(h.getId())*0.9);

            cards.add(card);
        });
        userCardDAO.save(cards);
        records.stream().forEach(r->r.setRooted(true));
        bookRecordDAO.save(records);
        int count=map.size();
        double total=map.values().stream().mapToDouble(d->d).sum();
        model.addAttribute("url","/index");
        return "/success";
    }
}
