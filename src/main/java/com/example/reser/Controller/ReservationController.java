package com.example.reser.Controller;

import com.example.reser.DAO.bookingsDAO;
//import com.example.reser.DAO.reservationDAO;
import com.example.reser.DAO.reservationDAO;
import com.example.reser.entity.BookingsEntity;
//import com.example.reser.entity.ReservationEntity;
import com.example.reser.entity.ReservationEntity;
import com.example.reser.entity.UserEntity;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class ReservationController implements Initializable {

    ObservableList<BookingsEntity> bList;
    @FXML
    private TableView reservetbl;
    @FXML
    private Label lb1;


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        lb1.setText(HomeController.name);
        bookingsDAO dao4 = new bookingsDAO();
        bList = dao4.getAll();
        reservetbl.setItems(bList);


        TableColumn col1 = (TableColumn) reservetbl.getColumns().get(0);
        col1.setCellValueFactory(new PropertyValueFactory("bookingId"));
        TableColumn col2 = (TableColumn) reservetbl.getColumns().get(1);
        col2.setCellValueFactory(new PropertyValueFactory("UserId"));
        TableColumn col3 = (TableColumn) reservetbl.getColumns().get(2);
        col3.setCellValueFactory(new PropertyValueFactory("RoomNoId"));
        TableColumn col4 = (TableColumn) reservetbl.getColumns().get(3);
        col4.setCellValueFactory(new PropertyValueFactory("checkIn"));
        TableColumn col5 = (TableColumn) reservetbl.getColumns().get(4);
        col5.setCellValueFactory(new PropertyValueFactory("checkOut"));
        TableColumn col6 = (TableColumn) reservetbl.getColumns().get(5);
        col6.setCellValueFactory(new PropertyValueFactory("totalDays"));
        TableColumn col7 = (TableColumn) reservetbl.getColumns().get(6);
        col7.setCellValueFactory(new PropertyValueFactory("price"));

    }


    @FXML
    void ConfirmBookingOnAction(ActionEvent event) throws SQLException, IOException {

        reservationDAO dao = new reservationDAO();
        ReservationEntity data = new ReservationEntity();
        Double sum = 0.00;
        String totalrooms = "";


        for (int i = 0; i < bList.size(); i++) {
            String res = String.valueOf(bList.get(i).getRoomNoId());
            String numDays = String.valueOf(bList.get(i).getTotalDays());
            String checkIn = String.valueOf(bList.get(i).getCheckIn());
            String checkOut = String.valueOf(bList.get(i).getCheckOut());
            totalrooms += "RoomNo " + res + " ("+ numDays + " days) \n[CheckIn : " +checkIn+"] [CheckOut : "+checkOut+"]\n\n";

            Double user = bList.get(i).getPrice();
            sum = sum + user;
        }
        String customer_name = HomeController.name;
        UserEntity userId = bList.get(0).getUserId();

        data.setCustomerId(userId);
        data.setCustomerName(customer_name);
        data.setRoomNumbers(totalrooms);
        data.setTotalBill(BigDecimal.valueOf(sum));
        data.setPaidStatus("Not paid");

        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setContentText("Successfully Updated");
        alert.showAndWait();
        dao.addData(data);

        String win = "bill";
        Closing.closeWindow(event, win);
        refreshView();

    }

    @FXML
    void back(ActionEvent event) throws IOException {
        String win = "home";
        Closing.closeWindow(event, win);

    }

    @FXML
    void next(ActionEvent event) throws IOException {
        String win = "bill";
        Closing.closeWindow(event, win);

    }
    public void refreshView() {
       bookingsDAO r=new bookingsDAO();
        bList =r.getAll();
        reservetbl.setItems(bList);
        reservetbl.refresh();
    }

}