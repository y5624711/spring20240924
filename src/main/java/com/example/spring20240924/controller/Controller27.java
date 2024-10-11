package com.example.spring20240924.controller;


import com.example.spring20240924.dto.c27.Customer;
import com.example.spring20240924.dto.c27.Orders;
import com.example.spring20240924.dto.c27.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main27")
public class Controller27 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public void sub1(Model model, String id) throws SQLException {
        //SQL injection
        String sql = STR."""
                SELECT *
                FROM Customers
                WHERE CustomerID = \{id}
                """;

        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (con; stmt; rs) {
            List<Customer> customers = new ArrayList<>();

            while (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getString("CustomerID"));
                customer.setName(rs.getString("CustomerName"));
                customer.setContactName(rs.getString("ContactName"));
                customer.setAddress(rs.getString("Address"));
                customer.setCity(rs.getString("City"));
                customer.setCountry(rs.getString("Country"));
                customer.setPostalCode(rs.getString("PostalCode"));
                customers.add(customer);
            }
            model.addAttribute("customerList", customers);
        }
    }

    //statement 객체는 SQL injection 당할 위험 있음
    // ->PreparedStatement 객체를 사용해야함
    @GetMapping("sub2")
    public String sub2(Model model, String id) throws SQLException {
        String sql = """
                SELECT *
                FROM Customers
                WHERE CustomerID = ?
                """;

        Connection con = dataSource.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, id);
        ResultSet rs = pstmt.executeQuery();

        try (con; pstmt; rs) {
            List<Customer> customers = new ArrayList<>();

            while (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getString("CustomerID"));
                customer.setName(rs.getString("CustomerName"));
                customer.setContactName(rs.getString("ContactName"));
                customer.setAddress(rs.getString("Address"));
                customer.setCity(rs.getString("City"));
                customer.setCountry(rs.getString("Country"));
                customer.setPostalCode(rs.getString("PostalCode"));
                customers.add(customer);
            }
            model.addAttribute("customerList", customers);
        }

        return "/main27/sub1";
    }

    @GetMapping("sub3")
    public String sub3(Model model, String min, String max) throws SQLException {
        String sql = """
                SELECT *
                FROM Products
                WHERE Price BETWEEN ? AND ?
                ORDER BY Price
                """;
        Connection con = dataSource.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, min);
        pstmt.setString(2, max);
        ResultSet rs = pstmt.executeQuery();

        try (con; pstmt; rs) {
            List<Product> products = new ArrayList<>();

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getString("ProductID"));
                product.setName(rs.getString("ProductName"));
                product.setSupplierId(rs.getString("SupplierID"));
                product.setCategoryId(rs.getString("CategoryID"));
                product.setUnit(rs.getString("Unit"));
                product.setPrice(rs.getString("Price"));
                products.add(product);
            }
            model.addAttribute("productList", products);
        }

        return "/main26/sub5";
    }

    @GetMapping("sub4")
    public void sub4(Model model, String begin, String end) throws SQLException {
        String sql = """
                SELECT *
                FROM Orders
                WHERE OrderDate  BETWEEN ? AND ?
                """;

        Connection con = dataSource.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, begin);
        pstmt.setString(2, end);
        ResultSet rs = pstmt.executeQuery();

        try (con; pstmt; rs) {
            List<Orders> list = new ArrayList<>();

            while (rs.next()) {
                Orders order = new Orders();
                order.setId(rs.getString("OrderID"));
                order.setCustomerId(rs.getString("CustomerID"));
                order.setEmployeeId(rs.getString("EmployeeID"));
                order.setOrderDate(rs.getString("OrderDate"));
                order.setShipperId(rs.getString("ShipperID"));
                list.add(order);
            }
            model.addAttribute("orderList", list);
        }

    }


    @GetMapping("sub5")
    public void sub5(Model model,
                     @RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
                     @RequestParam(value = "page_count", defaultValue = "10") Integer pageCount) throws SQLException {
        // 총 레코드 수 조회
        String numberOfRowSQL = """
                SELECT COUNT(*)
                FROM Customers
                """;
        Connection conn2 = dataSource.getConnection();
        PreparedStatement pstmt2 = conn2.prepareStatement(numberOfRowSQL);
        ResultSet rs2 = pstmt2.executeQuery();

        try (conn2; pstmt2; rs2;) {
            // 총 레코드 수
            Integer numberOfRows = rs2.next() ? rs2.getInt(1) : 0;
            // 마지막 페이지 번호
            Integer lastPageNumber = (numberOfRows - 1) / pageCount + 1;

            model.addAttribute("lastPageNumber", lastPageNumber);

            // 현재 페이지 번호
            model.addAttribute("currentPageNumber", pageNumber);
            // 페이지 번호의 끝(맨 오른쪽)값 (10개씩 보여줄 때)
            Integer endPageNumber = ((pageNumber - 1) / 10 + 1) * 10;
            // 페이지 번호의 시작(맨 왼쪽)값 (10개씩 보여줄 때)
            Integer beginPageNumber = endPageNumber - 9;

            // 다음버튼 클릭시 사용될 페이지 번호
            Integer nextPageNumber = endPageNumber + 1;
            // 이전버튼 클릭시 사용될 페이지 번호
            Integer prevPageNumber = beginPageNumber - 1;

            if (nextPageNumber <= lastPageNumber) {
                model.addAttribute("nextPageNumber", nextPageNumber);
            }

            if (prevPageNumber > 0) {
                model.addAttribute("prevPageNumber", prevPageNumber);
            }

            model.addAttribute("endPageNumber", Math.min(endPageNumber, lastPageNumber));
            model.addAttribute("beginPageNumber", beginPageNumber);
        }

        // 고객 목록 조회
        String sql = """
                SELECT *
                FROM Customers
                ORDER BY CustomerId
                LIMIT ?, ?
                """;

        Integer offset = (pageNumber - 1) * pageCount;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, offset);
        pstmt.setInt(2, pageCount);
        ResultSet rs = pstmt.executeQuery();

        try (conn; pstmt; rs) {
            List<Customer> list = new ArrayList<>();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getString("CustomerId"));
                customer.setName(rs.getString("CustomerName"));
                customer.setContactName(rs.getString("ContactName"));
                customer.setAddress(rs.getString("Address"));
                customer.setCity(rs.getString("City"));
                customer.setCountry(rs.getString("Country"));
                customer.setPostalCode(rs.getString("PostalCode"));
                list.add(customer);
            }
            model.addAttribute("customerList", list);
        }
    }

    // 6번째 메소드
    // 최신 주문 순 (ORDER BY OrderID DESC)
    // 각 페이지에 20개씩 주문이 조회되는 코드 작성

    // 마지막 페이지 구해서 Model로 넘겨주고
    // jsp에서 마지막 페이지 번호까지 출력

    // 페이지 번호 나열을 페이징 하기

    // 이전 버튼, 다음 버튼 만들기

    //마지막 페이지 목록이 최종페이지보다 크지 않도록
    @GetMapping("sub6")
    public void sub6(Model model,
                     @RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
                     @RequestParam(value = "count", defaultValue = "20") Integer rowCount) throws SQLException {
        String countSql = """
                SELECT COUNT(*)
                FROM Orders
                """;

        Connection conn2 = dataSource.getConnection();
        PreparedStatement pstmt2 = conn2.prepareStatement(countSql);
        ResultSet rs2 = pstmt2.executeQuery();
        try (conn2; pstmt2; rs2;) {
            Integer numberOfRows = rs2.next() ? rs2.getInt(1) : 0;
            Integer lastPageNumber = (numberOfRows - 1) / rowCount + 1;
            model.addAttribute("lastPageNumber", lastPageNumber);


            // 현재 페이지
            model.addAttribute("currentPageNumber", pageNumber);
            // 끝페이지
            Integer endPageNumber = ((pageNumber - 1) / 5 + 1) * 5;
            // 시작페이지
            Integer beginPageNumber = endPageNumber - 4;

            //이전 다음 버튼
            Integer nextPageNumber = endPageNumber + 1;
            Integer prevPageNumber = beginPageNumber - 1;

            if (nextPageNumber <= lastPageNumber) {
                model.addAttribute("nextPageNumber", nextPageNumber);
            }

            if (prevPageNumber > 0) {
                model.addAttribute("prevPageNumber", prevPageNumber);
            }

            //마지막 페이지 목록이 최종페이지보다 크지 않도록
            model.addAttribute("endPageNumber", Math.min(endPageNumber, lastPageNumber));
            model.addAttribute("beginPageNumber", beginPageNumber);
        }

        String sql = """
                SELECT *
                FROM Orders
                ORDER BY OrderID DESC
                LIMIT ?, ?
                """;

        Connection con = dataSource.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, (pageNumber - 1) * rowCount);
        pstmt.setInt(2, rowCount);
        ResultSet rs = pstmt.executeQuery();

        try (con; pstmt; rs) {
            List<Orders> list = new ArrayList<>();
            while (rs.next()) {
                Orders order = new Orders();
                order.setId(rs.getString("OrderID"));
                order.setOrderDate(rs.getString("OrderDate"));
                order.setCustomerId(rs.getString("CustomerID"));
                order.setEmployeeId(rs.getString("EmployeeID"));
                order.setShipperId(rs.getString("ShipperID"));
                list.add(order);
            }
            model.addAttribute("orderList", list);
        }
    }
}
