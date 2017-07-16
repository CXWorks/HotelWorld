package model.entity;

import javax.persistence.*;
import java.sql.Date;
import java.util.Comparator;
import java.util.List;

/**
 * Created by cxworks on 17-1-26.
 */
@Entity
@Table(name = "bookrecords")
public class BookRecord {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Basic
    @Column(name = "hid")
    private long hid;
    @Basic
    @Column(name = "mid")
    private long mid;
    @Basic
    @Column(name = "cid")
    private long cid;

    @Basic
    @Column(name = "start")
    private Date start;
    @Basic
    @Column(name = "end")
    private Date end;

    @Basic
    @Column(name = "room")
    private String room;


    @Basic
    @Column(name = "price")
    private double price;

    @Basic
    @Column(name = "total")
    private double total;

    @Basic
    @Column(name = "inCash")
    private boolean inCash;

    @Basic
    @Column(name = "payed")
    private boolean payed;

    @Basic
    @Column(name = "passed")
    private Boolean passed;

    @Basic
    @Column(name = "faceChecked")
    private boolean faceChecked;

    @Basic
    @Column(name = "rooted")
    private boolean rooted;
    @Column(name = "leaved")
    private boolean leaved;

    public BookRecord(){

    }

    public boolean isLeaved() {
        return leaved;
    }

    public void setLeaved(boolean left) {
        this.leaved = left;
    }

    public boolean isRooted() {
        return rooted;
    }

    public void setRooted(boolean rooted) {
        this.rooted = rooted;
    }

    public Boolean getPassed() {
        return passed;
    }


    public BookRecord(List<Plan> plans, long cid){
        Plan p=plans.get(0);
        end=plans.stream().map(pl->pl.getDate()).max(Comparator.naturalOrder()).get();
        start=plans.stream().map(pl->pl.getDate()).min(Comparator.naturalOrder()).get();
        hid=p.getHid();
        mid=p.getMid();
        room=p.getRoom();
        total=plans.stream().mapToDouble(pl->pl.getPrice()).sum();
        price=total/plans.size();
        this.cid=cid;
    }


    public boolean isFaceChecked() {
        return faceChecked;
    }

    public void setFaceChecked(boolean faceChecked) {
        this.faceChecked = faceChecked;
    }

    public boolean isPassed() {
        return passed;
    }

    public void setPassed(boolean passed) {
        this.passed = passed;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public long getCid() {
        return cid;
    }

    public void setCid(long cid) {
        this.cid = cid;
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public boolean isInCash() {
        return inCash;
    }

    public void setInCash(boolean inCash) {
        this.inCash = inCash;
    }

    public boolean isPayed() {
        return payed;
    }

    public void setPayed(boolean payed) {
        this.payed = payed;
    }


}
