package model.entity;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by cxworks on 17-1-22.
 */
@Entity
@Table(name = "plans")
public class Plan implements Cloneable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long pid;
    @Basic
    @Column(name = "hid")
    private long hid;
    @Basic
    @Column(name = "mid")
    private long mid;
    @Basic
    @Column(name = "date")
    private Date date;
    @Basic
    @Column(name = "city")
    private String city;
    @Basic
    @Column(name = "room")
    private String room;
    @Basic
    @Column(name = "people")
    private int people;
    @Basic
    @Column(name = "price")
    private double price;



    @Basic
    @Column(name = "confirmed")
    private boolean confirmed;

    @Basic
    @Column(name = "description")
    private String description;



    public boolean isConfirmed() {
        return confirmed;
    }

    public void setConfirmed(boolean confirmed) {
        this.confirmed = confirmed;
    }
    public long getPid() {
        return pid;
    }

    public void setPid(long pid) {
        this.pid = pid;
    }

    public long getHid() {
        return hid;
    }

    public void setHid(long hid) {
        this.hid = hid;
    }

    public long getMid() {
        return mid;
    }

    public void setMid(long mid) {
        this.mid = mid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date start) {
        this.date = start;
    }


    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public int getPeople() {
        return people;
    }

    public void setPeople(int people) {
        this.people = people;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Plan getNew(){
        try {
            return (Plan) this.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }
}
