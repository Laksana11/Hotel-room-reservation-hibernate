package com.example.reser;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class DatabaseConnection {
    public Connection databaseLink;
    private java.lang.String password;
    private java.lang.String username;

    public Connection getConnection(){
        java.lang.String databaseName = "userlogin";
        java.lang.String databaseUser = "root";
        java.lang.String databasePassword= "";
        java.lang.String url = "jdbc:mysql://localhost/"+databaseName;


        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            databaseLink= DriverManager.getConnection(url, databaseUser, databasePassword);
            Statement stmt=databaseLink.createStatement();

        }catch(Exception e){
            e.printStackTrace();
        }

        return databaseLink;
    }}
