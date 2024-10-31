package com.example.spring20240924.mapper;

import com.example.spring20240924.dto.c34.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Mapper
public interface Mapper04 {
    @Select("""
            SELECT ProductName
            FROM Products
            WHERE ProductID = 1
            """)
    String getProductName();

    @Select("""
            SELECT ProductName
            FROM Products
            WHERE ProductID = 1
            """)
    String select2();

    @Select("""
            SELECT Price
            FROM Products
            WHERE ProductID = 1
            """)
    String select3();

    @Select("""
            SELECT Price
            FROM Products
            WHERE ProductID = 1
            """)
    Double select4();

    @Select("""
            SELECT LastName
            FROM Employees
            WHERE EmployeeID = 1
            """)
    String select5();

    @Select("""
            SELECT CategoryID
            FROM Products
            WHERE ProductID = 2
            
            """)
    Integer select06();

    @Select("""
                        SELECT BirthDate
                        FROM Employees
                        WHERE EmployeeID = 2
            """)
    LocalDate select07();

    @Select("""
            SELECT DISTINCT Country
            FROM Customers
            """)
    List<String> select8();

    @Select("""
            SELECT LastName
            FROM Employees
            """)
    List<String> select9();

    @Select("""
            SELECT BirthDate
            FROM Employees
            """)
    List<LocalDate> select10();

    @Select("""
            SELECT Price
            FROM Products
            ORDER BY Price DESC
            LIMIT 5
            """)
    List<Integer> select11();

    @Select("""
            SELECT CustomerName, City, Country
            FROM Customers
            WHERE CustomerID = 1
            """)
    Map<String, String> select12();

    @Select("""
            SELECT CustomerName 이름, City 도시, Country 국가
            From Customers
            WHERE CustomerID = 1
            """)
    Map<String, String> select13();

    @Select("""
            SELECT ProductName name, Price, CategoryID
            FROM Products
            WHERE ProductID =1
            """)
    Map<String, Object> select14();

    @Select("""
            SELECT FirstName, BirthDate
            FROM Employees
            WHERE EmployeeID = 1;
            """)
    Map<String, LocalDate> select15();

    @Select("""
            SELECT CustomerName 이름,Address 주소,PostalCode 우편번호
            FROM Customers
            WHERE CustomerID = 3
            """)
    Map<String, Object> select16();

    @Select("""
            SELECT CustomerName name, Address address, PostalCode post
            FROM Customers
            WHERE CustomerID = 1 
            """)
    Customer select17();

    @Select("""
            SELECT ProductID id, ProductName name, Price price
            FROM Products
            WHERE ProductID =1
            """)
    Product select18();

    @Select("""
            SELECT FirstName name, BirthDate
            FROM Employees
            WHERE EmployeeID = 3
            """)
    Employee select19();

    @Select("""
            SELECT SupplierID id, SupplierName name, Phone phone
            FROM Suppliers
            WHERE SupplierID = 2
            """)
    Supplier select20();

    @Select("""
            SELECT o.OrderID , o.OrderDate, c.CustomerName
            FROM Orders o
            JOIN Customers c
            ON o.CustomerID = c.CustomerID
            WHERE o.OrderID = 10248
            """)
    Order select21();

    @Select("""
            SELECT CustomerName, Address
            FROM Customers
            LIMIT 3
            """)
    List<Map<String, String>> select22();

    @Select("""
            SELECT p.ProductName,c.CategoryName, p.Unit, p.Price
            FROM Products p
            JOIN Categories c
            ON c.CategoryID = p.CategoryID
            ORDER BY price DESC
            LIMIT 5
            """)
    List<Map<String, Object>> select23();

    @Select("""
            SELECT p.ProductName, od.Quantity, p.Price
            FROM Products p
            JOIN OrderDetails od
            ON p.ProductID = od.ProductID
            WHERE od.OrderID = 10248
            """)
    List<Map<String, Object>> select24();

    @Select("""
            SELECT FirstName, BirthDate
            FROM Employees
            """)
    List<Employee> select25();

    @Select("""
            SELECT SupplierID id, SupplierName name, Phone phone
            FROM Suppliers
            WHERE Country ='usa'
            """)
    List<Supplier> select26();

    @Select("""
            SELECT o.OrderDate, c.CustomerName
            FROM Orders o
            JOIN Customers c
            ON o.CustomerID = c.CustomerID
            WHERE o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
            """)
    List<Order> select27();
}
