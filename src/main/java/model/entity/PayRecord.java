package model.entity;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by cxworks on 17-1-19.
 */
@Entity
@Table(name = "payrecords")
public class PayRecord {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Basic
    @Column(name = "uid")
    private long uid;
    @Basic
    @Column(name = "username")
    private String username;
    @Basic
    @Column(name = "amount")
    private double amount;
    @Basic
    @Column(name = "date")
    private Date date;

    public long getId() {
        return id;
    }

    public PayRecord(){}

    public PayRecord(long id, String username, double amount) {
        this.uid = id;
        this.username = username;
        this.amount = amount;
    }

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
