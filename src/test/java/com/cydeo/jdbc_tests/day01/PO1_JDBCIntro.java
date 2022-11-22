package com.cydeo.jdbc_tests;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO1_JDBCIntro {

    /*

       To create Test Method

           MAC--> CMD+N
           WIN --> CTRL+N

    */
    String dbUrl="jdbc:oracle:thin:@3.88.45.34:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";



    @Test
    public void task1() throws SQLException {


        // DriverManager Class getCOnnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement();

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select * from departments where manager_id is not null");


        // 10-Administration-200-1700
        while(rs.next()){

            System.out.println(rs.getString(1)+"-"+rs.getString(2)+"-"+rs.getString(3)+"-"+rs.getString(4));
        }

        /*
         Can we run another query in same connection ?

            YES

         */



        rs = statement.executeQuery("select * from regions");

        // 1-Europe
        // 2-Americas
        // 3-Asia

        // get me all query results dynamically
        System.out.println("----- SECOND QUERY ------");
        while(rs.next()){

            System.out.println(rs.getString(1)+"-"+rs.getString(2));
            //System.out.println(rs.getString("REGION_ID")+"-"+rs.getString("REGION_NAME"));
        }


        // close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
