package com.cydeo.jdbc_tests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO3_MetaDataTest {

    String dbUrl="jdbc:oracle:thin:@174.129.150.19:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";

    @Test
    public void task1() throws SQLException {

        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select * from EMPLOYEES");

        DatabaseMetaData databaseMetaData = conn.getMetaData();

        System.out.println("databaseMetaData.getUserName() = " + databaseMetaData.getUserName());
        System.out.println("databaseMetaData.getDatabaseProductName() = " + databaseMetaData.getDatabaseProductName());
        System.out.println("databaseMetaData.getDatabaseProductVersion() = " + databaseMetaData.getDatabaseProductVersion());
        System.out.println("databaseMetaData.getDriverName() = " + databaseMetaData.getDriverName());
        System.out.println("databaseMetaData.getDriverVersion() = " + databaseMetaData.getDriverVersion());

        ResultSetMetaData rsmd = rs.getMetaData();

        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);

        System.out.println("rsmd.getColumnName(3) = " + rsmd.getColumnName(3));

        for (int i = 1; i <= rsmd.getColumnCount(); i++) {
            System.out.println( rsmd.getColumnName(i));
        }


        while (rs.next()) {

            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                System.out.print(rsmd.getColumnName(i) + " = " + rs.getString(i)+" ");
            }
            System.out.println();
        }






        // close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
