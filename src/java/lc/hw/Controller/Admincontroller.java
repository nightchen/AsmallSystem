package lc.hw.Controller;

import java.util.ArrayList;
import java.util.List;
import lc.hw.Dao.AdminDao;
import lc.hw.model.Admin;
import javax.servlet.http.HttpServletRequest;
import lc.hw.Dao.OrderDao;
import lc.hw.Dao.UserDao;
import lc.hw.model.Order;
import lc.hw.model.User;
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

public class Admincontroller {
    @Autowired
    private AdminDao adminDao;
    @Autowired
    private OrderDao orderDao;
    @Autowired
    private UserDao userDao;
    
    
    //���ԤԼ,�ɹ���ת����ʾ����Ա
    @RequestMapping("/showadmin")
    public ModelAndView listadmin(){        
        List<Admin> adminlist = new ArrayList<>();
        adminlist = adminDao.selectAdmin();                
        return new ModelAndView("success","adminlist",adminlist);
    }
    
    
    //����Ա����ϯ�ŵ�¼
    @RequestMapping("/logadmin")
    public ModelAndView whichtypeadmin(String kind,String specialcode,HttpServletRequest request){
        //����Ա��¼
        if (kind.equals("admin")) {                
            int id = adminDao.adminlogin(specialcode); 
            request.setAttribute("type", 1);
            request.setAttribute("id", id);
            if (id >=1) {     
                List<Order> orders = orderDao.selectorder();                                
                return new ModelAndView("admin","orders",orders);
            }
            else return new ModelAndView("error");
        }
        //��ϯ�ŵ�¼
        else{
            int id = adminDao.presidentlogin(specialcode);
            if (id >=1) {                
                request.setAttribute("id", id);
                List<Admin> admins = adminDao.selectAdmin();
                return new ModelAndView("prisident","admins",admins);
            }
            else return new ModelAndView("error");
        }
    }
    
    //����Ա��ѯ-��������δ����
    @RequestMapping("/choseorder")
    public ModelAndView passORpassed(int id,int type,HttpServletRequest request){
        //System.out.println(type+"*"+id);
        //type=0,��ʾ��ѯ����˵�ԤԼ��ҳ�����
        if (type == 0) {
            request.setAttribute("id", id);
            request.setAttribute("type", type);
            List<Order> orders = orderDao.selectorder2();
            return new ModelAndView("admin","orders",orders);
        }
        else{
            request.setAttribute("id", id);
            request.setAttribute("type", type);
            List<Order> orders = orderDao.selectorder();
            return new ModelAndView("admin","orders",orders);
        }
    }
    
    //ajax
    //����Ա���ͨ��
    @ResponseBody
    @RequestMapping("/passupdate")
    public String passupdate(int id){
        return orderDao.passupdate(id);
    }
    
    //����Ա��˲�ͨ��
    @ResponseBody
    @RequestMapping("/unpassupdate")
    public String unpassupdate(int id){
        return orderDao.unpassupdate(id);
    }
    
    //�鿴�û���ϵ��ʽ
    @ResponseBody
    @RequestMapping("/showphone")
    public User selectphone(String name,String department){
        return userDao.selectuserphone(name,department);
    }

}
