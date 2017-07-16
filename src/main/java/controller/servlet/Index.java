package controller.servlet;


import model.dao.HotelDAO;
import model.entity.Hotel;
import model.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by cxworks on 17-1-11.
 */
@Controller
public class Index{

    @Autowired
    HotelDAO hotelDAO;

    @RequestMapping(path = "/index" ,method = RequestMethod.GET)
    public String Index(Model model){
    Object obj=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    if (obj instanceof User){
            User user=(User)obj;
            model.addAttribute("logined",true);
            model.addAttribute("user",user);
            if (user.getAuthoritiesAsString().contains("manager")){
                Hotel hotel=hotelDAO.findByManagerid(user.getId());
                model.addAttribute("hotel",hotel);
            }
        }else {
            model.addAttribute("logined",false);
        }
        return "index";
    }


    @RequestMapping(path = "/index",method = RequestMethod.POST)
    public String login(Model model){
        Object obj=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (obj instanceof User){
            User user=(User)obj;
            model.addAttribute("logined",true);
            model.addAttribute("user",user);
        }else {
            model.addAttribute("logined",false);
        }
        return "redirect: /index";
    }

    @RequestMapping(path = "/pay",method = RequestMethod.GET)
    public String pay(

            Model model
    ){
        User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("user",user);


        return "pay";
    }



}