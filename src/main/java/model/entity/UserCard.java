package model.entity;

import org.springframework.context.annotation.Bean;

import javax.persistence.*;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;

/**
 * Created by cxworks on 17-1-14.
 */
@Entity
@Table(name = "usercards")
public class UserCard {

    public UserCard(){}

    public UserCard(long id, String username, String pay_password, List<String> bankid) {
        this.id = id;
        this.username = username;
        this.pay_password = pay_password;
        this.bankid = bankid;
    }
    public void spend(double s){
        amount-=s;
        cost+=s;
    }

    public void setDefault(){
        amount=level=0;
        grades=0;
        cost=0;
    }

    public void addAmount(double amount){
        this.amount+=amount;
        cost+=amount;
        grades+=amount*10;
        level=grades/100;
        if (onDate==null||onDate.getTime()< Calendar.getInstance().getTimeInMillis()){
            Calendar now=Calendar.getInstance();
            now.add(Calendar.YEAR,1);
            onDate=new Date(now.getTimeInMillis());
        }
    }

    public void grade2money(int change){
        synchronized (this) {
            grades -= change;
            amount += change / 100;
        }
    }

    @Id
    @Column(name = "id")
    private long id ;
    @Basic
    @Column(name = "username")
    private String username;

    @Basic
    @Column(name = "pay_password")
    private String pay_password;

    @ElementCollection(targetClass = String.class)
    @CollectionTable(
            name = "bankcard",
            joinColumns = @JoinColumn(name = "id")
    )
    @Column(name = "bankid")
    private List<String> bankid;

    @Basic
    @Column(name = "onDate")
    private Date onDate;

    @Basic
    @Column(name = "amount")
    private double amount;

    @Basic
    @Column(name = "level")
    private int level;

    @Basic
    @Column(name = "grades")
    private int grades;

    @Basic
    @Column(name = "cost")
    private double cost;


    public long getId() {
        return id;
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

    public String getPay_password() {
        return pay_password;
    }

    public void setPay_password(String pay_password) {
        this.pay_password = pay_password;
    }

    public List<String> getBankid() {
        return bankid;
    }

    public void setBankid(List<String> bankid) {
        this.bankid = bankid;
    }

    public Date getOnDate() {
        return onDate;
    }

    public void setOnDate(Date onDate) {
        this.onDate = onDate;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getGrades() {
        return grades;
    }

    public void setGrades(int grades) {
        this.grades = grades;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }


}
