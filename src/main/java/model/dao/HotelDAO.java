package model.dao;

import model.entity.Hotel;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by cxworks on 17-1-21.
 */
public interface HotelDAO extends CrudRepository<Hotel,Long> {


    public List<Hotel> findByPassedIsNull();


    @Modifying
    @Query("UPDATE Hotel h SET h.passed = true WHERE h.id = ?1")
    public int passHotel(long id);

    @Modifying
    @Query("UPDATE Hotel h SET h.passed = false WHERE h.id = ?1")
    public int denyHotel(long id);

    public Hotel findByManagerid(long id);


}
