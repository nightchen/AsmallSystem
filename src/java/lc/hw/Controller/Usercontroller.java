package lc.hw.Controller;

import java.util.ArrayList;
import java.util.List;
import lc.hw.Dao.AdminDao;
import lc.hw.Dao.OrderDao;
import lc.hw.Dao.UserDao;
import lc.hw.model.Admin;
import lc.hw.model.Order;
import lc.hw.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


/**
 *
 * @author night-chen
 */
@Controller
public class Usercontroller {
    @Autowired
    private UserDao userDao;
    @Autowired
    private AdminDao adminDao;
    @Autowired
    private OrderDao orderDao;
    
    
    @ResponseBody
    @RequestMapping("/selectuser")
    public List<User> slectusername(String department){
        System.out.println(department);
        List<User> users = new ArrayList<>();
        users = userDao.selectusername(department);
        return users;
    }
    
    
    @RequestMapping("/addorder")
    public String addorder(Order order,String daydate){        
        if (order.getDaytime() == null) {
            order.setDaytime(daydate);
        }
        int row = orderDao.addorder(order);
        if (row > 0) {
            return "forward:showadmin.action";
        }
        return "error";
    }
    
    /*
    直接方法，不需要页面转发。
    @RequestMapping("/addordershow")
    public ModelAndView addandshow(Order order){
        
        int row = orderDao.addorder(order);
        if (row > 0) {
            List<Admin> adminlist = new ArrayList<>();
            adminlist = adminDao.selectAdmin();                
            return new ModelAndView("success","adminlist",adminlist);
        }
            return new ModelAndView("success","adminlist",null);
    }
    */
       
}
