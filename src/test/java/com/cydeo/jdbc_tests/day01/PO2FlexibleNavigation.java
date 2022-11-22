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

        System.out.println("--- GET ROW ---");
        // how many row we have
        // getRow() --> the current row number; 0 if there is no current row
        int rowNumber = rs.getRow();
        System.out.println(rowNumber);  // 107

        System.out.println("--- ABSOLUTE ---");
        // jump into specified row
        //rs.absolute(rowNumber)
        rs.absolute(10);//David Bernstein -->true if the cursor is moved to a position in this ResultSet object; false if the cursor is before the first row or after the last row
        System.out.println(rs.getString(1)+" "+rs.getString(2));
        System.out.println(rs.getRow());//10

        System.out.println("--- PREVIOUS ---");

        rs.previous();
        System.out.println(rs.getRow());
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        // go first
        rs.first();
        rs.beforeFirst();
//        System.out.println(rs.getRow());//1
//        System.out.println(rs.getString(1)+" "+rs.getString(2));//Ellen Abel



        System.out.println("--- PRINT ALL TABLE CONTENT DYNAMICALLY ---");

        rs.previous();
        while (rs.next()){
        System.out.println(rs.getString(1)+" "+rs.getString(2));}






        // close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
