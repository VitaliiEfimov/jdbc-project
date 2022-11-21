package com.cydeo.jdbc_tests;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO2FlexibleNavigation {

    String dbUrl="jdbc:oracle:thin:@3.88.45.34:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";



    @Test
    public void task1() throws SQLException {


        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select first_name,last_name from employees");


        //first row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));


        //second row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        /*
        ResultSet.TYPE_SCROLL_INSENSITIVE --> to do flexible navigation between rows
        ResultSet.CONCUR_READ_ONLY        --> To dont update anything from database

         */

        // What if I want to get last data
        rs.last();
        System.out.println(rs.getString(1)+" "+rs.getString(2));


        // close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
