package com.example.spring20240924.controller;

import com.example.spring20240924.dto.c24.Customer;
import com.example.spring20240924.dto.c24.Employees;
import com.example.spring20240924.dto.c24.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main24")
public class Controller24 {

    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public void sub1() throws SQLException {
        String sql = """
                SELECT DISTINCT City
                FROM Customers
                """;
        //연결
        Connection con = dataSource.getConnection();
        //쿼리 실행 준비
        Statement stmt = con.createStatement();
        //쿼리 실행
        ResultSet rs = stmt.executeQuery(sql);

        try (con; stmt; rs) {
            //실행결과 가공
            while (rs.next()) {
                System.out.println(rs.getString("city"));
            }
        }
    }


    @GetMapping("sub2")
    public void sub2(Model model) throws SQLException {
        String sql = """
                SELECT CustomerName, ContactName, Address
                FROM Customers
                """;
        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (con; stmt; rs) {
            List<Customer> list = new ArrayList<>();
            while (rs.next()) {
                String name = rs.getString("CustomerName");
                String contact = rs.getString("ContactName");
                String address = rs.getString("Address");
                Customer customer = new Customer();
                customer.setName(name);
                customer.setContactName(contact);
                customer.setAddress(address);

                list.add(customer);

            }
            model.addAttribute("customerList", list);
        }
        // jsp로 forward
    }

    @GetMapping("sub3")
    public void sub3(Model model) throws SQLException {
        String sql = """
                SELECT EmployeeID, FirstName,LastName, BirthDate
                FROM Employees
                """;


        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        //이 메소드와 Employee, sub3 jsp 작성
        try (con; stmt; rs) {
            List<Employees> list = new ArrayList<>();
            while (rs.next()) {
                String lastName = rs.getString("LastName");
                String firstName = rs.getString("FirstName");
                String birthDate = rs.getString("BirthDate");
                Employees employees = new Employees();
                employees.setLastName(lastName);
                employees.setFirstName(firstName);
                employees.setBirthDate(birthDate);


                list.add(employees);
            }
            model.addAttribute("employList", list);
        }
    }

    @GetMapping("sub4")
    public void sub4(Model model) throws SQLException {
        String sql = """
                SELECT ProductID, ProductName, Unit, Price
                FROM Products
                """;

        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        List<Product> list = new ArrayList<>();

        try (con; stmt; rs) {
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getString(1));
                product.setName(rs.getString(2));
                product.setUnit(rs.getString(3));
                product.setPrice(rs.getDouble(4));
                list.add(product);
            }
            model.addAttribute("productList", list);
        }
    }


    @GetMapping("sub99")
    public void sub99(Model model) throws SQLException {
        String sql = """
                SELECT CustomerName, ContactName, Address
                FROM Customers
                """;

        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (con; stmt; rs) {

            List<Customer> list = new ArrayList<>();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setName(rs.getString(1));
                customer.setContactName(rs.getString(2));
                customer.setAddress(rs.getString(3));
                list.add(customer);
            }
            model.addAttribute("customerList", list);
        }


    }
}
