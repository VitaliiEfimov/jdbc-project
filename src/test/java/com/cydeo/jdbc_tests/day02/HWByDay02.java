package com.cydeo.jdbc_tests.day02;

import com.cydeo.jdbc_tests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.sql.*;

public class HWByDay02 {
    // HOMEWORK

    /*
    Do same task for user count
        - Get data from database to see how many user we have
        - Get data from UI to see how many user we have
        - Assertions
     */

    /*
    Do same task for borrowed book
        - Get data from database to see how many book-borrowed
        - Get data from UI to see how many book-borrowed
        - Assertions
    */

    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY" ;

    @Test
    public void taskForUserCount() throws SQLException {

//        Connection conn = DriverManager.getConnection(url, username, password);
//        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
//        statement.executeQuery("select count(*) from users");

        DB_Util.createConnection(url,username,password);
        // Run Query
        DB_Util.runQuery("select count(*) from users");
        int actual = Integer.parseInt(DB_Util.getFirstRowFirstColumn());
        int expected = 1413;

        Assertions.assertEquals(expected,actual);

        DB_Util.destroy();
    }

    @Test
    public void borrowedBook() throws SQLException {

//        Connection conn = DriverManager.getConnection(url, username, password);
//        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
//        statement.executeQuery("select count(*) from users");

        DB_Util.createConnection(url,username,password);
        // Run Query
        DB_Util.runQuery("select count(*) from book_borrow");
        int actual = Integer.parseInt(DB_Util.getFirstRowFirstColumn());
        int expected = 513;

        Assertions.assertEquals(expected,actual);
        DB_Util.destroy();
    }




}
