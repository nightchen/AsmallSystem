package lc.hw.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author night-chen
 */
@Controller
public class RouteContorller {
    
    //Â·¾¶×ªÏò
    @RequestMapping("/login")
    public String turnLogin(){
        return "Login";
    }
    
    @RequestMapping("/turnmainpage")
    public String turnmain(){
        return "main";
    }
    
    @RequestMapping("/turnloginpage")
    public String turnlogin(){
        return "Login";
    }
    
    @RequestMapping("/addadminpage")
    public ModelAndView addadminpage(Integer id){                          
        return new ModelAndView("addadmin", "id", id);
    }


}
