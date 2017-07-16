package model.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by cxworks on 17-3-15.
 */
@Entity
@Table(name = "people")
public class People implements Serializable
{
    @Basic
    long bid;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    long id;
    @Basic
    long cid;


    public People() {
    }

    public People(long bid, long cid) {
        this.bid = bid;
        this.cid = cid;
    }

    public long getBid() {
        return bid;
    }

    public void setBid(long bid) {
        this.bid = bid;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
