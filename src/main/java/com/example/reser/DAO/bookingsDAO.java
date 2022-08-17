package com.example.reser.DAO;

import com.example.reser.Controller.HomeController;
import com.example.reser.Utility.HibernateUtil;
import com.example.reser.entity.BookingsEntity;
import com.example.reser.entity.UserEntity;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.criteria.*;
import java.util.List;

//import java.util.function.Predicate;

public class bookingsDAO implements DAOInterface<BookingsEntity>{
    @Override
    public int addData(BookingsEntity data) {
        return 0;
    }

    @Override
    public int delData(BookingsEntity data) {
        Session s =HibernateUtil.getSession();
        Transaction t =s.beginTransaction();
        s.delete(data);
        t.commit();
        s.close();
        return 0;
    }

    @Override
    public int updateData(BookingsEntity data) {
        Session s =HibernateUtil.getSession();
        Transaction t =s.beginTransaction();
        s.update(data);
        t.commit();
        s.close();
        return 0;
    }

    @Override
    public ObservableList<BookingsEntity> getAll() {
        Session s= HibernateUtil.getSession();
        CriteriaBuilder builder=s.getCriteriaBuilder();
        CriteriaQuery query2=builder.createQuery(UserEntity.class);
        Root<UserEntity> root1=query2.from(UserEntity.class);
        Predicate p2=builder.equal(root1.get("username"), HomeController.name);

        List<UserEntity> uList =s.createQuery(query2.where(p2)).getResultList();
        int user= uList.get(0).getUserId();
        CriteriaQuery query=builder.createQuery(BookingsEntity.class);
        Root<BookingsEntity> root=query.from(BookingsEntity.class);
        Predicate p=builder.equal(root.get("UserId"),user);
        Predicate p3=builder.equal(root.get("reservedStatus"),"Not Booked");
        List<BookingsEntity> bList=s.createQuery(query.where(p,p3)).getResultList();
        return FXCollections.observableArrayList(bList);
    }
    @Override
    public ObservableList<BookingsEntity> get() {
//        Session s= HibernateUtil.getSession();
//        CriteriaBuilder builder=s.getCriteriaBuilder();
//        CriteriaQuery query2=builder.createQuery(UserEntity.class);
//        Root<UserEntity> root1=query2.from(UserEntity.class);
//        Predicate p2=builder.equal(root1.get("username"), HomeController.name);
//
//        List<UserEntity> uList =s.createQuery(query2.where(p2)).getResultList();
//        int user= uList.get(0).getUserId();
//        CriteriaQuery query=builder.createQuery(BookingsEntity.class);
//        Root<BookingsEntity> root=query.from(BookingsEntity.class);
//        Predicate p=builder.equal(root.get("UserId"),user);
//        Predicate p3=builder.equal(root.get("reservedStatus"),"Not Booked");
//        List<BookingsEntity> BList=s.createQuery(query.where(p,p3)).getResultList();
//        return FXCollections.observableArrayList(BList);
        return null;
    }

    @Override
    public ObservableList<BookingsEntity> getting(){
        Session s= HibernateUtil.getSession();
        CriteriaBuilder builder=s.getCriteriaBuilder();
        CriteriaQuery query = builder.createQuery(BookingsEntity.class);
        query.from(BookingsEntity.class);

        List<BookingsEntity> BookList=s.createQuery(query).getResultList();
        s.close();

        return FXCollections.observableArrayList(BookList);
    }




}
