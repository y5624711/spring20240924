package com.example.spring20240924.controller;


import com.example.spring20240924.dto.c27.Orders;
import com.example.spring20240924.dto.c28.Employees;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main99")
public class Controller99 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public void sub(@RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
                    @RequestParam(value = "page_count", defaultValue = "10") Integer pageCount,
                    Model model) throws SQLException {
        String sql = """
                SELECT *
                FROM Orders
                ORDER BY OrderID DESC
                LIMIT ?, ?
                """;

        Connection con = dataSource.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, (pageNumber - 1) * pageCount);
        pstmt.setInt(2, pageCount);
        ResultSet rs = pstmt.executeQuery();

        try (con; pstmt; rs) {
            List<Orders> ordersList = new ArrayList<>();

            while (rs.next()) {
                Orders order = new Orders();
                order.setId(rs.getString("OrderID"));
                order.setOrderDate(rs.getString("OrderDate"));
                order.setCustomerId(rs.getString("CustomerID"));
                order.setEmployeeId(rs.getString("EmployeeID"));
                order.setShipperId(rs.getString("ShipperID"));
                ordersList.add(order);
            }
            model.addAttribute("ordersList", ordersList);
        }

        String countSql = """
                SELECT COUNT(*)
                FROM Orders
                """;

        Connection con2 = dataSource.getConnection();
        PreparedStatement pstmt2 = con2.prepareStatement(countSql);
        ResultSet rs2 = pstmt2.executeQuery();

        try (con2; pstmt2; rs2) {
            Integer numberRows = rs2.next() ? rs2.getInt(1) : 0;
            Integer lastPageNumber = (numberRows - 1) / pageCount + 1;
            model.addAttribute("lastPageNumber", lastPageNumber);

            //현재페이지
            model.addAttribute("currentPageNumber", pageNumber);
            //끝페이지 (한페이지에 10개씩 페이지목록 표시)
            Integer endPageNumber = ((pageNumber - 1) / 10 + 1) * 10;
            //시작페이지
            Integer beginPageNumber = endPageNumber - 9;
            //이전버튼 다음버튼
            Integer nextPageBtn = endPageNumber + 1;
            Integer prevPageBtn = beginPageNumber - 1;

            if (nextPageBtn <= lastPageNumber) {
                model.addAttribute("nextPageBtn", nextPageBtn);
            }
            if (prevPageBtn > 0) {
                model.addAttribute("prevPageBtn", prevPageBtn);
            }

            // 마지막 페이지가 최종페이지 보다 크지 않도록
            model.addAttribute("endPageNumber", Math.min(endPageNumber, lastPageNumber));
            model.addAttribute("beginPageNumber", beginPageNumber);
        }


    }

    @GetMapping("sub2")
    public void sub2(Model model, String id) {
        String sql = """
                SELECT *
                FROM Employees
                WHERE EmployeeID = ?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt) {
                pstmt.setString(1, id);
                ResultSet rs = pstmt.executeQuery();

                if (rs.next()) {
                    Employees employee = new Employees();
                    employee.setId(rs.getString("EmployeeID"));
                    employee.setLastName(rs.getString("LastName"));
                    employee.setFirstName(rs.getString("FirstName"));
                    employee.setBirthDate(rs.getString("BirthDate"));
                    employee.setPhoto(rs.getString("Photo"));
                    employee.setNotes(rs.getString("Notes"));
                    model.addAttribute(employee);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @PostMapping("sub3")
    public String sub3(Employees employees, RedirectAttributes rttr) {
        String sql = """
                UPDATE Employees
                SET LastName =?,
                FirstName = ?,
                BirthDate = ?,
                Photo = ?,
                Notes = ?
                WHERE EmployeeID = ?
                """;
        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt) {
                pstmt.setString(1, employees.getLastName());
                pstmt.setString(2, employees.getFirstName());
                pstmt.setString(3, employees.getBirthDate());
                pstmt.setString(4, employees.getPhoto());
                pstmt.setString(5, employees.getNotes());
                pstmt.setString(6, employees.getId());
                pstmt.executeUpdate();
                rttr.addFlashAttribute("message", employees.getId() + "번 직원 정보가 수정되었습니다.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        rttr.addAttribute("id", employees.getId());

        return "redirect:/main99/sub2";
    }
}
