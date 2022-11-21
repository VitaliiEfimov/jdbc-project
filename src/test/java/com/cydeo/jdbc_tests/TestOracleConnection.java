package com.cydeo.jdbc_tests;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {

        String dbUrl = "jdbc:oracle:thin:@3.88.45.34:1521:XE";
        String dbUserName = "hr";
        String bdPassword = "hr";
            /*
            HOW TO INIT VARIABLES ?

                -- MAC --> OPT + ENTER
                -- WIN  --> ALT + ENTER

             */

        // DriverManager Class getCOnnection method will help to connect database

        Connection conn = DriverManager.getConnection(dbUrl, dbUserName, bdPassword);

        // It helps us to execute queries
        Statement stmt = conn.createStatement();

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = stmt.executeQuery("select * from REGIONS");

        /*
        How to run query from Java file
        - click over Query (don't choose anywhere)
        - MAC --> cmd+enter
        - Win --> ctrl+enter
         */

        // GETTING DATA

        //next() -->
        // next() ---> Moves the cursor forward one row from its current position.

           /* System.out.println("------ FIRST ROW -------");
        rs.next();
        // pointer shows the first row

        // how to get data

        // rs.getInt(index)  --> it returns integer. Index start from 1 into SQL.It refers column position

        // it returns int
        System.out.println("rs.getInt(1) = " + rs.getInt(1)); //1

        // it returns String
        System.out.println("rs.getString(1) = " + rs.getString(1)); //1

        // rs.getInt(columLabel)
        System.out.println("rs.getInt(\"REGION_ID\") = " + rs.getInt("REGION_ID"));//1
        System.out.println("rs.getString(\"REGION_ID\") = " + rs.getString("REGION_ID"));//1

        // get me Europe
        System.out.println("rs.getString(\"REGION_NAME\") = " + rs.getString("REGION_NAME"));//Europe
        System.out.println("rs.getString(2) = " + rs.getString(2));//Europe


        rs.next();
        System.out.println("rs.getInt(1) = " + rs.getInt(1));//2
        System.out.println("rs.getString(2) = " + rs.getString(2));//Americas


        // 2 SECOND ROW    2 - Americas
        System.out.println("rs.getString(1) + \" - \" + rs.getString(2) = " + rs.getString(1) + " - " + rs.getString(2));//2 - Americas
        System.out.println("rs.getString(REGION_ID) + \" - \" + rs.getString(REGION_NAME) = " + rs.getString("REGION_ID") + " - " + rs.getString("REGION_NAME"));//2 - Americas

        System.out.println("------ THIRD ROW -------");

        // 3 THIRD ROW    3 - Asia

        rs.next();
        System.out.println("rs.getString(1) + \" - \" + rs.getString(2) = " + rs.getString(1) + " - " + rs.getString(2));//3 - Asia

        System.out.println("------ 4TH ROW -------");

        // 4 TH ROW    4 - Middle East and Africa
        rs.next();
        System.out.println("rs.getString(1) + \" - \" + rs.getString(2) = " + rs.getString(1) + " - " + rs.getString(2));//4 - Middle East and Africa

        // WHAT if we have 1000 line ?*/


        while(rs.next()){
            System.out.println("-----------------");
            System.out.println(rs.getString(1)+" - "+rs.getString(2));

        }



        // close connections


        rs.close();
        stmt.close();
        conn.close();

    }
}
