package com.example.spring20240924.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main23")
public class Controller23 {

    @RequestMapping("sub1")
    public void sub1(Model model) throws SQLException {
        String sql = "SELECT FirstName FROM Employees";

        String databaseUrl = "jdbc:mariadb://localhost:3306/w3schools";
        String databaseUserName = "root";
        String databasePassWord = "1234";

        //1. db에 연결
        Connection con = DriverManager.getConnection(databaseUrl, databaseUserName, databasePassWord);
        //2. 실행준비
        Statement stmt = con.createStatement();
        //3. 쿼리(테이블)실행
        ResultSet rs = stmt.executeQuery(sql);

        //5. 자원 닫기
        try (con; stmt; rs) {
            //4. 실행결과 가공
//            rs.next(); //첫번째 행으로 커서를 이동
//            String name1 = rs.getString("FirstName");//커서가 가리키는 행의 FirstName
//            rs.next();
//            String name2 = rs.getString("FirstName");

            List<String> names = new ArrayList<>();
            while (rs.next()) {
                String name = rs.getString("firstName");
                names.add(name);
            }
            model.addAttribute("nameList", names);
        }
    }

    @RequestMapping("sub2")
    public void sub2(Model model) throws SQLException {
        String sql = "SELECT CustomerName FROM Customers";
        String databaseUrl = "jdbc:mariadb://localhost:3306/w3schools";
        String databaseUserName = "root";
        String databasePassWord = "1234";

        Connection con = DriverManager.getConnection(databaseUrl, databaseUserName, databasePassWord);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        List<String> list = new ArrayList<>();

        while (rs.next()) {
            String name = rs.getString("CustomerName");
            list.add(name);
        }
        model.addAttribute("nameList", list);
    }

    //상품명들을 조회하는 세번째 메소드 jps 작성
    @RequestMapping("sub3")
    public void sub3(Model model) throws SQLException {
        String sql = "SELECT ProductName FROM Products";
        String url = "jdbc:mariadb://localhost:3306/w3schools";
        String userName = "root";
        String passWord = "1234";

        Connection con = DriverManager.getConnection(url, userName, passWord);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        List<String> list = new ArrayList<>();

        while (rs.next()) {
            String name = rs.getString("ProductName");
            list.add(name);
        }

        model.addAttribute("nameList", list);
    }


    // 고객이 있는 국가명들 조회
    @GetMapping("sub4")
    public void sub4(Model model) throws SQLException {
        String sql = """
                SELECT DISTINCT Country
                FROM Customers
                """;

        String url = "jdbc:mariadb://localhost:3306/w3schools";
        String userName = "root";
        String password = "1234";
        Connection con = DriverManager.getConnection(url, userName, password);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (con; stmt; rs) {
            List<String> list = new ArrayList<>();
            while (rs.next()) {
                String name = rs.getString("Country");
                list.add(name);
            }
            model.addAttribute("countryList", list);
        }

    }

    // 다섯번째 메소드 작성
    // 공급자(Suppliers) 테이블 조회해서 국가명(Country) 목록 출력하기
    // sub4.jsp 재사용하기
    @GetMapping("sub5")
    public String sub5(Model model) throws SQLException {
        String sql = """
                SELECT DISTINCT Country
                FROM Suppliers
                """;
        String url = "jdbc:mariadb://localhost:3306/w3schools";
        String userName = "root";
        String password = "1234";
        Connection con = DriverManager.getConnection(url, userName, password);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (con; stmt; rs) {
            List<String> list = new ArrayList<>();
            while (rs.next()) {
                list.add(rs.getString("Country"));
            }

            model.addAttribute("countryList", list);
        }

        return "/main23/sub4";

    }
}
