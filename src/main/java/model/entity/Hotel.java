package model.entity;

import javax.persistence.*;

/**
 * Created by cxworks on 17-1-21.
 */
@Entity
@Table(name = "hotels")
public class Hotel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Basic
    @Column(name = "name")
    private String name;

    @Basic
    @Column(name = "city")
    private String city;

    @Basic
    @Column(name = "locationX")
    private double locationX;

    @Basic
    @Column(name = "locationY")
    private double locationY;

    @Basic
    @Column(name = "passed")
    private Boolean passed;



    @Basic
    @Column(name = "manager")
    private String manager;
    @Basic
    @Column(name = "manager_id")
    private long managerid;
    @Basic
    @Column(name = "manager_identity")
    private String manager_identity;

    @Basic
    @Column(name = "description")
    private String description;

    public Hotel() {
        passed=null;
    }



    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getLocationX() {
        return locationX;
    }

    public void setLocationX(double locationX) {
        this.locationX = locationX;
    }

    public double getLocationY() {
        return locationY;
    }

    public void setLocationY(double locationY) {
        this.locationY = locationY;
    }

    public boolean isPassed() {
        return passed==null?false:passed;
    }

    public void setPassed(Boolean passed) {
        this.passed = passed;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public long getManagerid() {
        return managerid;
    }

    public void setManagerid(long manager_id) {
        this.managerid = manager_id;
    }

    public String getManager_identity() {
        return manager_identity;
    }

    public void setManager_identity(String manager_identity) {
        this.manager_identity = manager_identity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
