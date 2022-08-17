package com.example.reser.DAO;

import com.example.reser.Controller.HomeController;
import com.example.reser.Utility.HibernateUtil;
import com.example.reser.entity.BookingsEntity;
import com.example.reser.entity.UserEntity;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.List;


    public class usersDAO implements DAOInterface<UserEntity>{
        @Override
        public int addData(UserEntity data) {
            return 0;
        }

        @Override
        public int delData(UserEntity data) {
            Session s = HibernateUtil.getSession();
            Transaction t =s.beginTransaction();
            s.delete(data);
            t.commit();
            s.close();
            return 0;
        }

        @Override
        public int updateData(UserEntity data) {
            return 0;
        }

        @Override
        public ObservableList<UserEntity> getAll() {

            Session s= HibernateUtil.getSession();
            CriteriaBuilder builder=s.getCriteriaBuilder();
            CriteriaQuery query=builder.createQuery(UserEntity.class);
            query.from(UserEntity.class);

            List<UserEntity> uList=s.createQuery(query).getResultList();
            s.close();

            return FXCollections.observableArrayList(uList);
        }

        @Override
        public List<UserEntity> get() {
            return null;
        }

        @Override
        public ObservableList<BookingsEntity> getting() {
            return null;
        }


    }


