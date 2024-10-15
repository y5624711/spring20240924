package com.example.spring20240924.controller;

import com.example.spring20240924.dto.c26.Customer;
import com.example.spring20240924.dto.c26.Product;
import com.example.spring20240924.dto.c28.Suppliers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@Controller
@RequestMapping("main28")
public class Controller28 {
    @Autowired
    DataSource dataSource;

    // /main28/sub1?name=흥민&contact=득점왕
    @PostMapping("sub1")
    public void sub1(String name, String contact) {
        String sql = """
                INSERT INTO Customers
                (CustomerName,ContactName)
                VALUES(?,?)
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt) {
                pstmt.setString(1, name);
                pstmt.setString(2, contact);
                //pstmt.executeQuery //SELECT 할 때에만 - 리턴타입(ResultSet)
                pstmt.executeUpdate(); //INSERT, UPDATE, DELETE -int 리턴(행의 수를 리턴한다)
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @GetMapping("sub2")
    public void sub2() {

    }

    // get/main28/sub3은 상품입력 form이 있는 jsp로 forward
    //post/main28/sub4 은 새 상품을 insert하는 로직 실행
    @GetMapping("sub3")
    public void sub3() {

    }

    @PostMapping("sub4")
    public String sub4(String name,
                       String unit,
                       String price,
                       RedirectAttributes rttr) {
        String sql = """
                INSERT INTO Products
                (ProductName,Unit,Price)
                VALUES(?,?,?)
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt) {
                pstmt.setString(1, name);
                pstmt.setString(2, unit);
                pstmt.setString(3, price);
                pstmt.executeUpdate();
                int count = pstmt.executeUpdate();

                if (count == 1) {
                    rttr.addFlashAttribute("message", "새 상품이 등록되었다");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:/main28/sub3";
    }

    @GetMapping("sub5")
    public void sub5(Model model, String id) {
        String sql = """
                SELECT * FROM Customers
                WHERE CustomerID=?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getString("CustomerID"));
                customer.setName(rs.getString("CustomerName"));
                customer.setContactName(rs.getString("ContactName"));
                customer.setAddress(rs.getString("Address"));
                customer.setCity(rs.getString("City"));
                customer.setCountry(rs.getString("Country"));
                customer.setPostalCode(rs.getString("PostalCode"));
                model.addAttribute(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @PostMapping("sub6")
    public String sub6(String id, RedirectAttributes rttr) {
        String sql = """
                DELETE FROM Customers
                WHERE CustomerID=?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt) {
                pstmt.setString(1, id);
                int count = pstmt.executeUpdate();
                if (count == 1) {
                    rttr.addFlashAttribute("message", id + "번 고객이 삭제되었습니다.");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        rttr.addAttribute("id", id);
        return "redirect:/main28/sub5";
    }

    //상품을 상품 번호로 조회하고
    @GetMapping("sub7")
    public void sub7(String id, Model model) {
        String sql = """
                SELECT *
                FROM Products
                WHERE ProductID=?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();

            try (con; pstmt; rs) {

                if (rs.next()) {
                    Product product = new Product();

                    product.setId(rs.getString("ProductID"));
                    product.setName(rs.getString("ProductName"));
                    product.setSupplierId(rs.getString("SupplierID"));
                    product.setCategoryId(rs.getString("CategoryID"));
                    product.setUnit(rs.getString("Unit"));
                    product.setPrice(rs.getString("Price"));
                    model.addAttribute(product);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    //해당 상품을 삭제하는 로직
    @PostMapping("sub8")
    public String sub8(String id, RedirectAttributes rtts) {
        String sql = """
                DELETE
                FROM Products
                WHERE ProductID=?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);

            try (con; pstmt) {
                pstmt.setString(1, id);
                int count = pstmt.executeUpdate();
                if (count == 1) {
                    rtts.addFlashAttribute("message", id + "번 상품이 삭제됨");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return "redirect:/main28/sub7";
    }

    @PostMapping("sub9")
    public String sub9(Customer customer,
                       RedirectAttributes rttr) {
        String sql = """
                UPDATE Customers
                SET CustomerName=?,
                ContactName=?,
                Address=?,
                City=?,
                PostalCode=?,
                Country=?
                WHERE CustomerID=?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);

            try (con; pstmt) {

                pstmt.setString(1, customer.getName());
                pstmt.setString(2, customer.getContactName());
                pstmt.setString(3, customer.getAddress());
                pstmt.setString(4, customer.getCity());
                pstmt.setString(5, customer.getPostalCode());
                pstmt.setString(6, customer.getCountry());
                pstmt.setString(7, customer.getId());
                pstmt.executeUpdate();
                rttr.addFlashAttribute("message", customer.getId() + "번 고객 정보가 수정되었습니다.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        rttr.addAttribute("id", customer.getId());
        return "redirect:/main28/sub10";
    }

    @GetMapping("sub10")
    public void sub10(String id, Model model) {
        String sql = """
                SELECT *
                FROM Customers
                WHERE CustomerID=?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt;) {
                pstmt.setString(1, id);
                ResultSet rs = pstmt.executeQuery();
                if (rs.next()) {
                    Customer customer = new Customer();
                    customer.setId(rs.getString("CustomerID"));
                    customer.setName(rs.getString("CustomerName"));
                    customer.setContactName(rs.getString("ContactName"));
                    customer.setAddress(rs.getString("Address"));
                    customer.setCity(rs.getString("City"));
                    customer.setCountry(rs.getString("Country"));
                    customer.setPostalCode(rs.getString("PostalCode"));
                    model.addAttribute(customer);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @PostMapping("sub11")
    public String sub11(Suppliers supplier, RedirectAttributes rttr) {
        String sql = """
                UPDATE Suppliers
                SET SupplierName = ?,
                ContactName = ?,
                Address = ?,
                City = ?,
                PostalCode = ?,
                Country = ?,
                Phone = ?
                WHERE SupplierID=?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);

            try (con; pstmt) {
                pstmt.setString(1, supplier.getName());
                pstmt.setString(2, supplier.getContactName());
                pstmt.setString(3, supplier.getAddress());
                pstmt.setString(4, supplier.getCity());
                pstmt.setString(5, supplier.getPostalCode());
                pstmt.setString(6, supplier.getCountry());
                pstmt.setString(7, supplier.getPhone());
                pstmt.setString(8, supplier.getId());
                pstmt.executeUpdate();
                rttr.addFlashAttribute("message", supplier.getId() + "번 직원 정보가 수정되었습니다.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        rttr.addAttribute("id", supplier.getId());

        return "redirect:/main28/sub12";
    }

    @GetMapping("sub12")
    public void sub12(Model model, String id) {
        String sql = """
                SELECT *
                FROM Suppliers
                WHERE SupplierID=?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);

            try (con; pstmt) {
                pstmt.setString(1, id);
                ResultSet rs = pstmt.executeQuery();

                if (rs.next()) {
                    Suppliers supplier = new Suppliers();
                    supplier.setId(rs.getString("SupplierID"));
                    supplier.setName(rs.getString("SupplierName"));
                    supplier.setContactName(rs.getString("ContactName"));
                    supplier.setAddress(rs.getString("Address"));
                    supplier.setCity(rs.getString("City"));
                    supplier.setPostalCode(rs.getString("PostalCode"));
                    supplier.setCountry(rs.getString("Country"));
                    supplier.setPhone(rs.getString("Phone"));
                    model.addAttribute(supplier);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
