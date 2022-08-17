package com.example.reser.Controller;

import com.example.reser.Controller.MyListener;
import com.example.reser.DatabaseConnection;
import com.example.reser.entity.RoomsEntity;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.RadioButton;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.control.Button;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ResourceBundle;


public class RoomController {
    public static String username;

    public static LocalDate inDate, outDate;

    @FXML
    private Label no, ac;

    private RoomsEntity room;
    private MyListener myListener;

    @FXML
    private AnchorPane roomPane;


    public void setData(RoomsEntity rooms, MyListener myListener) {
        this.room = rooms;
        this.myListener = myListener;
        no.setText(String.valueOf(room.getRoomNo()));  // for show room number
        ac.setText(room.getAcStatus());
        roomPane.setDisable(orderingBtn(room.getAvailability()));     // for disable the radio button
    }


    @FXML
    private void click(MouseEvent mouseEvent) {
        myListener.onClickListener(room);
    }
    public boolean orderingBtn(String availability){
        if(availability.equals("YES")){
            roomPane.setStyle("-fx-background-color: #74b9ff");
            return false;
        }else{
            roomPane.setDisable(true);
            roomPane.setStyle("-fx-background-color: #636e72");

            return true;
        }
    }
}
