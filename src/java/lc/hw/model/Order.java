package lc.hw.model;

import java.sql.Date;

/**
 *
 * @author night-chen
 */
public class Order {
    private Integer id;
    private String department;
    private String name;
    private String daytime;
    private String hour_start;
    private String hour_over;
    private String reason;
    private String decreason;
    private String passed;

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

    public String getDaytime() {
        return daytime;
    }

    public void setDaytime(String daytime) {
        this.daytime = daytime;
    }

    public String getHour_start() {
        return hour_start;
    }

    public void setHour_start(String hour_start) {
        this.hour_start = hour_start;
    }

    public String getHour_over() {
        return hour_over;
    }

    public void setHour_over(String hour_over) {
        this.hour_over = hour_over;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getDecreason() {
        return decreason;
    }

    public void setDecreason(String decreason) {
        this.decreason = decreason;
    }
    
    public String getPassed() {
        return passed;
    }

    public void setPassed(String passed) {
        this.passed = passed;
    }
    

}
