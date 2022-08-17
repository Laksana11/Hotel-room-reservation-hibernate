package com.example.reser.DAO;

import com.example.reser.Utility.HibernateUtil;
import com.example.reser.entity.BookingsEntity;
import com.example.reser.entity.RoomsEntity;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;

public class roomsDAO implements DAOInterface<RoomsEntity> {




    @Override
    public int addData(RoomsEntity data) {
        Session s=HibernateUtil.getSession();
        Transaction t=s.beginTransaction();
        s.save(data);
        t.commit();
        s.close();
        return 0;
    }

    @Override
    public int delData(RoomsEntity data) {
        Session s =HibernateUtil.getSession();
        Transaction t =s.beginTransaction();
        s.delete(data);
        t.commit();
        s.close();
        return 0;
    }

    @Override
    public int updateData(RoomsEntity data) {
        Session s=HibernateUtil.getSession();
        Transaction t=s.beginTransaction();
        s.update(data);
        t.commit();
        s.close();
        return 0;
    }

    @Override
    public ObservableList<RoomsEntity> getAll() {

        Session s= HibernateUtil.getSession();
        CriteriaBuilder builder=s.getCriteriaBuilder();
        CriteriaQuery query=builder.createQuery(RoomsEntity.class);
        query.from(RoomsEntity.class);

        List<RoomsEntity> rList=s.createQuery(query).getResultList();
        s.close();

        return FXCollections.observableArrayList(rList);
    }

    @Override
    public List<RoomsEntity> get() {
        return null;
    }

    @Override
    public ObservableList<BookingsEntity> getting() {
        return null;
    }
}
