package lc.hw.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import lc.hw.model.Order;
import lc.hw.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author night-chen
 */
@Repository(value = "UserDao")
public class UserDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    //根据部门名查询用户，
    public List<User> selectusername(String department){
        String SQL = "select * from user where department=?";
        List<User> nameList = jdbcTemplate.query(SQL, new myRowmapper(), department);
        return nameList;        
    }
    
    
    //根据id查找联系方式
    public User selectuserphone(String name,String department){
        String SQL = "select * from user where name=? and department=?";        
        User user = jdbcTemplate.query(SQL, (ResultSet rs) -> {
            User user1 =new User();
            while (rs.next()) {
                user1.setName(rs.getString("name"));
                user1.setPhone(rs.getString("phone"));
                user1.setWechat(rs.getString("wechat"));
            }
            return user1;
        }, name,department);
        
        return user;
    }

}

class myRowmapper implements RowMapper<User>{

    @Override
    public User mapRow(ResultSet rs, int i) throws SQLException {
       User user = new User();
       user.setId(rs.getInt(1));
       user.setGroup(rs.getString(2));
       user.setName(rs.getString(3));
       user.setPhone(rs.getString(4));
       user.setWechat(rs.getString(5));
       return user;
    }
}
