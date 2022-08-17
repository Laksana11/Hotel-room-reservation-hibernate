package com.example.reser.Controller;

import com.example.reser.DatabaseConnection;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.control.Label;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class HelloController {
    @FXML
    private TextField nametext;

    @FXML
    private PasswordField pswtext;
    private static String  encPw=null;

    @FXML
    private Label loginMessageLable;

    public static boolean isValidUsername(String name)
    {
        String regex = "^[A-Z]\\w{4,29}$";
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(name);
        return m.matches();
    }


    @FXML
    void CreateAccountbtnOnAction(ActionEvent event) throws IOException {
            String win = "regi";
            Closing.closeWindow(event,win);
        }


    @FXML
    void adminLogin(ActionEvent event) throws IOException {
        String win = "adminlogin";
        Closing.closeWindow(event,win);
    }

    @FXML
    void loginbtnOnAction(ActionEvent event) throws IOException {

            if (nametext.getText().isBlank() == false && pswtext.getText().isBlank() == false) {
                if (isValidUsername(nametext.getText())) {
                validateLogin(event);
            } else {
                loginMessageLable.setText("Username should start with capital letter!");
            }
        } else {
            loginMessageLable.setText("Please enter username and password");
        }
    }

    void validateLogin(ActionEvent event){
        DatabaseConnection connection = new DatabaseConnection();
        Connection connectDB = connection.getConnection();


// for password encryption
        String password=pswtext.getText();
        MessageDigest m = null;
        try {
            m = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
        m.update(password.getBytes());
        byte[] bytes = m.digest();
        StringBuilder s = new StringBuilder();
        for(int i=0; i< bytes.length ;i++)
        {
            s.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
        }
        encPw = s.toString();



        String verifyLogin = "SELECT count(1) FROM user WHERE username = '" + nametext.getText() + "' AND password  = '" + encPw+ "'";
        HomeController.name=nametext.getText();

        try {
            Statement statement = connectDB.createStatement();
            ResultSet queryResult = statement.executeQuery(verifyLogin);

            while (queryResult.next()) {
                if (queryResult.getInt(1)==1) {
                    String win = "home";
                    Closing.closeWindow(event,win);

                } else {
                    loginMessageLable.setText("please enter valid user name and password");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            e.getCause();
        }
    }
}
