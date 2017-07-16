package model.dao;

import model.entity.BookRecord;
import org.springframework.data.repository.CrudRepository;

import java.sql.Date;
import java.util.List;

/**
 * Created by cxworks on 17-1-26.
 */
public interface BookRecordDAO extends CrudRepository<BookRecord,Long> {

    public List<BookRecord> findByCid(long cid);


    public List<BookRecord> findByMidAndPassedIsNull(long mid);

    public List<BookRecord> findByMidAndPassedAndFaceChecked(long cid,boolean passed,boolean faceChecked);

    public List<BookRecord> findByCidAndPassedIsNull(long cid);

    public List<BookRecord> findByCidAndPassedAndFaceChecked(long cid,boolean passed,boolean faceChecked);

    public List<BookRecord> findByHidAndPassedIsNull(long hid);

    public List<BookRecord> findByHidAndPassedAndFaceChecked(long hid, boolean passed, boolean faceChecked);

    public List<BookRecord> findByHidAndPassedAndFaceCheckedAndLeaved(long hid, boolean passed, boolean faceChecked,boolean leaved);


    public List<BookRecord> findByHidAndPassedAndFaceCheckedAndStartBeforeAndEndAfter(long hid, boolean passed, boolean faceChecked, Date now1,Date now2);

    public List<BookRecord> findByPassedIsTrueAndFaceCheckedIsTrueAndRootedIsFalse();


    public List<BookRecord> findByPassedIsTrueAndFaceCheckedIsTrue();
    public List<BookRecord> findByPassedIsNullAndStartBefore(Date date);

}
