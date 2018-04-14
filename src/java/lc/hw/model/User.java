package lc.hw.model;

/**
 *
 * @author night-chen
 */
public class User {
    private Integer id;
    private String group;
    private String name;
    private String phone;
    private String wechat;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getWechat() {
        return wechat;
    }

    public void setWechat(String wechat) {
        this.wechat = wechat;
    }
    

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", group=" + group + ", name=" + name + ", phone=" + phone + '}';
    }
    
  
}
