package com.example.reser.DAO;

import com.example.reser.entity.BookingsEntity;
import javafx.collections.ObservableList;

import java.util.List;

public interface DAOInterface<T> {
    public int addData(T data);
    public int delData(T data);
    public int updateData(T data);

    List<T> getAll();
    List<T> get();

    ObservableList<BookingsEntity> getting();
}
