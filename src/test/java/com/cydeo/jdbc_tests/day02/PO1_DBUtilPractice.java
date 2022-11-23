package com.cydeo.jdbc_tests.day02;

import com.cydeo.jdbc_tests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class PO1_DBUtilPractice {

    @Test
    public void task1() {

        DB_Util.createConnection();

        DB_Util.runQuery("select first_name,last_name,salary from employees");

        System.out.println("---GET ME FIRST---");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("---Get All Column Names---");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println("--- Get All First names---");
        System.out.println(DB_Util.getColumnDataAsList(1));

        System.out.println("--- Get how many row we have---");
        System.out.println(DB_Util.getRowCount());

        System.out.println("--- Get certain row---");
        System.out.println(DB_Util.getRowMap(2));

        System.out.println("--- Get as Map row---");
        System.out.println(DB_Util.getRowMap(2));

        System.out.println("--- Get as List---");
        System.out.println(DB_Util.getRowDataAsList(2));

        System.out.println("--- Get all data as List of Map---");
        System.out.println(DB_Util.getAllRowAsListOfMap());
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String, String> stringStringMap : allRowAsListOfMap) {
            System.out.println(stringStringMap);
        }







    }
}
