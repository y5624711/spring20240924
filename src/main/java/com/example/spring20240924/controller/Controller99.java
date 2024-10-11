package com.example.spring20240924.controller;

import com.example.spring20240924.dto.c27.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
}
