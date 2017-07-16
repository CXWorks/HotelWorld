package controller.servlet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by cxworks on 17-2-2.
 */
@Controller
public class GetController {

    @RequestMapping(path = "/register/card",method = RequestMethod.GET)
    public String getRegisterCard(@RequestParam(name = "id")long id, Model model){
        model.addAttribute("id",id);
        return "/register/card";
    }
    @RequestMapping(path = "/register/hotel",method = RequestMethod.GET)
    public String getRegisterHotel(@RequestParam(name = "id")long id, Model model){
        model.addAttribute("id",id);
        return "/register/hotel";
    }


}
