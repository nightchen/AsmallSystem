package lc.hw.model;

/**
 *
 * @author night-chen
 */
public class Admin {
    private int id;
    private String department;
    private String name;
    private String phone;
    private String wechat;
    private String specialcode;

    @Override
    public String toString() {
        return "Admin{" + "id=" + id + ", department=" + department + ", name=" + name + ", phone=" + phone + ", wechat=" + wechat + ", specialcode=" + specialcode + '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
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

    public String getSpecialcode() {
        return specialcode;
    }

    public void setSpecialcode(String specialcode) {
        this.specialcode = specialcode;
    }
    
    

}
