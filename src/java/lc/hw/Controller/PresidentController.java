package lc.hw.Controller;

import java.util.List;
import lc.hw.Dao.AdminDao;
import javax.servlet.http.HttpServletRequest;
import lc.hw.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author night-chen
 */
@Controller
public class PresidentController {
    @Autowired
    private AdminDao adminDao;
    
    
    @ResponseBody
    @RequestMapping("/logajax")
    public int loginajax(String kind,String specialcode){
        int id = adminDao.adminlogin(specialcode);
        return id;
    }
    
    @RequestMapping("/selectadmin")
    public ModelAndView selectadmin(int id,HttpServletRequest request){
        request.setAttribute("id", id);
        List<Admin> admins = adminDao.selectAdmin();
        return new ModelAndView("prisident","admins",admins);
    }
    
    @ResponseBody
    @RequestMapping("/deleteadmin")
    public String deleteadmin(int id){
        return adminDao.deleteadmin(id);
    }
    
    @ResponseBody
    @RequestMapping("/updateadmin")
    public String updateadmin(int id,String specialcode){
        System.out.println("ÐÂÃÜÂë"+specialcode);
        return adminDao.updateadmin(id, specialcode);
    }
    
    @ResponseBody
    @RequestMapping("/addadmin")
    public String addadmin(Admin admin){  
        System.out.println(admin.toString());
        String signal = adminDao.addadmin(admin);
        System.out.println(signal);
        return signal;
    }
    

}
