package com.example.spring20240924.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Mapper01 {

    @Select("""
            SELECT CustomerName
            FROM Customers
            WHERE CustomerID = 1
            """)
    public String selectName();

    @Select("""
            SELECT ProductName
            FROM Products
            WHERE Productid = 10
            """)
    String getProductName();

    @Select("""
            SELECT FirstName
            FROM Employees
            WHERE EmployeeID = 3
            """)
    String getEmployeeName();
}
