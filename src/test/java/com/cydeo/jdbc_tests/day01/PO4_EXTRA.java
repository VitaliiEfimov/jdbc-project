package com.cydeo.jdbc_tests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.*;

public class PO4_EXTRA {
    String dbUrl="jdbc:oracle:thin:@174.129.150.19:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";


    @Test
    public void task4() {

        Map<String, Object> rowMap1 = new HashMap<>();

        System.out.println("---ROW MAP---");

        rowMap1.put("first_name", "Steven");
        rowMap1.put("last_name", "King");
        rowMap1.put("salary", 24000);

        System.out.println(rowMap1);

        Map<String, Object> rowMap2 = new HashMap<>();

        System.out.println("---ROW MAP---");

        rowMap2.put("first_name", "Neena");
        rowMap2.put("last_name", "Kochhar");
        rowMap2.put("salary", 17000);

        System.out.println(rowMap2);

        List<Map<String, Object>> dataList = new ArrayList<>();

        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);

        System.out.println("dataList.get(0).get(\"last_name\") = " + dataList.get(0).get("last_name"));
    }

    @Test
    public void task2() throws SQLException {

        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES");

        ResultSetMetaData rmsd = rs.getMetaData();

        rs.next();
        Map<String, Object> rowMap1 = new HashMap<>();
        System.out.println("---ROW MAP 1---");
        rowMap1.put(rmsd.getColumnName(1), rs.getString(1));
        rowMap1.put(rmsd.getColumnName(2), rs.getString(2));
        rowMap1.put(rmsd.getColumnName(3), rs.getInt(3));
        System.out.println(rowMap1);

        rs.next();
        Map<String, Object> rowMap2 = new HashMap<>();
        System.out.println("---ROW MAP 2---");
        rowMap2.put(rmsd.getColumnName(1), rs.getString(1));
        rowMap2.put(rmsd.getColumnName(2), rs.getString(2));
        rowMap2.put(rmsd.getColumnName(3), rs.getInt(3));
        System.out.println(rowMap2);

        List<Map<String, Object>> dataList = new ArrayList<>();

        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);

        System.out.println("dataList.get(0).get(rmsd.getColumnName(2)) = " + dataList.get(0).get(rmsd.getColumnName(2)));

        // close connections
        rs.close();
        statement.close();
        conn.close();
    }

    @Test
    public void task3() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES");
        ResultSetMetaData rsmd = rs.getMetaData();

        List<Map<String, Object>> dataList = new ArrayList<>();
        while (rs.next()) {

            Map<String, Object> rowMap = new HashMap<>();

            for (int i = 1; i <= rsmd.getColumnCount(); i++) {

                rowMap.put(rsmd.getColumnName(i), rs.getString(i));

            }

            dataList.add(rowMap);


        }
        for (int i = 0; i < dataList.size(); i++) {
            System.out.println("dataList" + (i+1) + " = " + dataList.get(i));
        }


        rs.close();
        statement.close();
        conn.close();


    }
}
