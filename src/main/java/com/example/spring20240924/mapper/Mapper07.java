package com.example.spring20240924.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface Mapper07 {
    @Select("""
            SELECT *
            FROM Customers
            """)
    List<Map<String, Object>> select1();

    @Delete("""
            DELETE FROM Customers
            WHERE CustomerID = #{id}
            """)
    int delete1(Integer id);

    @Delete("""
            DELETE FROM Products
            WHERE ProductID = #{id}
            """)
    int delete2(Integer id);

    @Insert("""
            INSERT INTO Customers
            (CustomerName, City, Country)
            VALUE (#{name}, #{city}, #{country})
            """)
    int insert1(String name, String city, String country);

    @Insert("""
            INSERT INTO Products
            (ProductName, Price)
            VALUE (#{name}, #{price})
            """)
    int insert2(String name, Double price);

    @Select("""
            SELECT CustomerID id, CustomerName name, City city, Country country
            FROM Customers
            """)
    List<Map<String, Object>> select2();

    @Insert("""
            INSERT INTO Products
            (ProductName, Unit, Price)
            VALUE (#{name}, #{unit}, #{price})
            """)
    int insert3(String name, String unit, Double price);

    @Select("""
            SELECT ProductID id, ProductName name, Unit unit, Price price
            FROM Products
            """)
    List<Map<String, Object>> select3();
}
