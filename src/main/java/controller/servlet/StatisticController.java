package controller.servlet;

import model.dao.BookRecordDAO;
import model.dao.HotelDAO;
import model.dao.PayRecordDAO;
import model.dao.UserCardDAO;
import model.entity.BookRecord;
import model.entity.Hotel;
import model.entity.PayRecord;
import model.entity.UserCard;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Created by cxworks on 17-3-12.
 */
@Controller
@RequestMapping(path = "/statistic")
public class StatisticController {
    @Autowired
    HotelDAO hotelDAO;
    @Autowired
    BookRecordDAO bookRecordDAO;
    @Autowired
    UserCardDAO userCardDAO;
    @Autowired
    PayRecordDAO payRecordDAO;

    @RequestMapping(value = "hotel",method = RequestMethod.GET)
    public String hotel(
            @RequestParam("hid")long hid,
            Model model){
        Hotel hotel=hotelDAO.findOne(hid);
        Date now=new Date(Calendar.getInstance().getTimeInMillis());
        List<BookRecord> ondoing=bookRecordDAO
                .findByHidAndPassedAndFaceChecked(hid,true,true);


        UserCard card=userCardDAO.findOne(hotel.getManagerid());
        model.addAttribute("hotel",hotel);
        model.addAttribute("ondoing",ondoing);
        model.addAttribute("card",card);

        return "hotel";
    }

    @RequestMapping(path = "root",method = RequestMethod.GET)
    public String root(Model model){

        List<BookRecord> bookRecords=bookRecordDAO.findByPassedIsTrueAndFaceCheckedIsTrue();
        Iterable<PayRecord> iterable=payRecordDAO.findAll();
        List<PayRecord> payRecords=new ArrayList<>();
        iterable.forEach(i->payRecords.add(i));
        List<PayRecord> pays=payRecords.stream().distinct().collect(Collectors.toList());
        Iterable<Hotel> hotels=hotelDAO.findAll();
        Map<Long,Hotel> hmap=new HashMap<>();
        hotels.forEach(h->hmap.put(h.getId(),h));
        model.addAttribute("bookrecords",bookRecords);
        model.addAttribute("payrecords",pays);
        model.addAttribute("bookjson",new JSONArray(bookRecords));
        model.addAttribute("payjson",new JSONArray(pays));
        model.addAttribute("hotels",new JSONObject(hmap));
        return "root";

    }


}
