package lc.hw.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import lc.hw.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author night-chen
 */
@Repository(value = "AdminDao")
public class AdminDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    
    public List<Admin> selectAdmin(){
        String SQL = "select * from admin";
        List<Admin> admins = jdbcTemplate.query(SQL,new myRowmapper2());
        return admins;
    }
    
    public int adminlogin(String specialcode){
        String SQL = "select id from admin where specialcode = ?";
        int id = jdbcTemplate.query(SQL, rs ->rs.next() ? rs.getInt("id") : 0, specialcode);
        return id;
    }
    
    public int presidentlogin(String specialcode){
        String SQL = "select id from president where specialcode = ?";
        int id = jdbcTemplate.query(SQL, rs ->rs.next() ? rs.getInt("id") : 0, specialcode);
        return id;
    }
    
    public String deleteadmin(int id){
        String SQL ="delete from admin where id = ?";
        int row = jdbcTemplate.update(SQL, id);
        if (row >= 1) {
            return "success";
        }
        else{
            return "error";
        }
    }
    
    public String updateadmin(int id ,String specialcode){
        String SQL ="update admin set specialcode = ? where id = ?";
        int row = jdbcTemplate.update(SQL,specialcode,id);
        if (row >= 1) {
            return "success";
        }
        else{
            return "error";
        }
    }
    
    public String addadmin(Admin admin){
        String SQL = "insert into admin value(?,?,?,?,?,?)";
        int row = jdbcTemplate.update(SQL,null,admin.getDepartment(),admin.getName(),admin.getPhone(),admin.getWechat(),admin.getSpecialcode());
        System.out.println("Row:"+row);
        if (row >= 1) {
            return "success";
        }
        else{
            return "error";
        }
    }

}

class myRowmapper2 implements RowMapper<Admin>{

    @Override
    public Admin mapRow(ResultSet rs, int i) throws SQLException {
        Admin admin = new Admin();
        admin.setId(rs.getInt("id"));
        admin.setDepartment(rs.getString("department"));
        admin.setName(rs.getString("name"));
        admin.setPhone(rs.getString("phone"));
        admin.setWechat(rs.getString("wechat"));
        admin.setSpecialcode(rs.getString("specialcode"));
        return admin;
    }
    
}
    

