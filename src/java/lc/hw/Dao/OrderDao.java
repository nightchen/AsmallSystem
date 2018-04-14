package lc.hw.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import lc.hw.model.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author night-chen
 */
@Repository(value = "OrderDao")
public class OrderDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    //查询未审批的
    public List<Order> selectorder(){
        String SQL = "select * from orderlist where passed= '未审批' ";
        List<Order> orders = jdbcTemplate.query(SQL, (ResultSet rs, int i) -> {
            Order order = new Order();
            order.setId(rs.getInt(1));
            order.setDepartment(rs.getString(2));
            order.setName(rs.getString(3));
            order.setDaytime(rs.getString(4).substring(5));
            order.setHour_start(rs.getString(5));
            order.setHour_over(rs.getString(6));
            order.setReason(rs.getString(7));
            order.setDecreason(rs.getString(8));
            order.setPassed(rs.getString(9));
            return order;
        });
        
        return orders;       
    }
    
    //查询已审批
    public List<Order> selectorder2(){
        String SQL = "select * from orderlist where passed != '未审批' ";
        List<Order> orders = jdbcTemplate.query(SQL, (ResultSet rs, int i) -> {
            Order order = new Order();
            order.setId(rs.getInt(1));
            order.setDepartment(rs.getString(2));
            order.setName(rs.getString(3));
            order.setDaytime(rs.getString(4).substring(5));
            order.setHour_start(rs.getString(5));
            order.setHour_over(rs.getString(6));
            order.setReason(rs.getString(7));
            order.setDecreason(rs.getString(8));
            order.setPassed(rs.getString(9));
            return order;
        });
        
        return orders;       
    }
    
    
    
    public int addorder(Order order){
        String SQL = "insert into orderlist value(?,?,?,?,?,?,?,?,?)";
        int row = jdbcTemplate.update(SQL, null,order.getDepartment(),order.getName(),order.getDaytime(),order.getHour_start(),order.getHour_over(),order.getReason(),order.getDecreason(),"未审批");
        return row;
    }
    
    public String passupdate(int id){
        String SQL = "update orderlist set passed='通过' where id = ?";
        int row = jdbcTemplate.update(SQL, id);
        if (row >= 1) {
            return "success";
        }
        else{
            return "defeated";
        }
    }
    
    public String unpassupdate(int id){
        String SQL = "update orderlist set passed='未通过' where id = ?";
        int row = jdbcTemplate.update(SQL, id);
        if (row >= 1) {
            return "success";
        }
        else{
            return "defeated";
        }
    }

}
