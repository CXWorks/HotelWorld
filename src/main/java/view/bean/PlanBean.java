package view.bean;

import model.entity.Plan;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created by cxworks on 17-3-11.
 */
public class PlanBean {
    private List<Long> pids;

    private long hid;

    private long mid;

    private Map<Date,Double> date_price;

    private String city;

    private String room;

    private int people;




    private String description;
    public PlanBean(){}
    public PlanBean(Plan p){
        pids=new ArrayList<>();
        pids.add(p.getPid());
        hid=p.getHid();
        mid=p.getMid();
        city=p.getCity();
        room=p.getRoom();
        people=p.getPeople();
        description=p.getDescription();
        date_price=new ConcurrentHashMap<>();
        date_price.put(p.getDate(),p.getPrice());
    }


    public void add(Plan p){
        pids.add(p.getPid());
        date_price.put(p.getDate(),p.getPrice());
    }
    public void add(PlanBean p){
        pids.addAll(p.getPid());
        date_price.putAll(p.getDate_price());
    }
    public List<Long> getPid() {
        return pids;
    }

    public void setPid(List<Long> pid) {
        this.pids = pid;
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

    public Map<Date, Double> getDate_price() {
        return date_price;
    }

    public void setDate_price(Map<Date, Double> date_price) {
        this.date_price = date_price;
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


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String token(){
        StringBuilder builder=new StringBuilder("pid=");
        for (int i=0;i<pids.size();i++){
            builder.append(pids.get(i));
            if (i!=pids.size()-1)
                builder.append(",");
        }
        return builder.toString();
    }
}
