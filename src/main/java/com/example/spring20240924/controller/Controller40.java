package com.example.spring20240924.controller;

import com.example.spring20240924.mapper.Mapper10;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main40")
@RequiredArgsConstructor
public class Controller40 {
    private final Mapper10 mapper10;

    @GetMapping("sub1")
    public void method1() {
        System.out.println("두 개 값 모두");
        mapper10.select1("abc", "def");

        System.out.println("name 만");
        mapper10.select1("abc", null);

        System.out.println("contact만");
        mapper10.select1(null, "def");
    }

    @GetMapping("sub2")
    public void sub2() {
        // SELECT * FROM Employees WHERE EmployeeId = 3 AND LastName ="abc" AND FirstName ="DEF"
        System.out.println("두개 값 모두");
        mapper10.select2("abc", "def");
        // SELECT * FROM Employees WHERE EmployeeId = 3 AND LastName ="abc"
        System.out.println("lastName 만");
        mapper10.select2("abc", null);
        // SELECT * FROM Employees WHERE EmployeeId = 3 AND FirstName ="DEF"
        System.out.println("firstName 만");
        mapper10.select2(null, "def");
    }

    @GetMapping("sub3")
    public void sub3() {
        mapper10.select3("abc", "def");
        mapper10.select3("abc", null);
        mapper10.select3(null, "def");
        mapper10.select3(null, null);
    }

    @GetMapping("sub4")
    public void sub4() {
        mapper10.select4("abc", "def");
        mapper10.select4("abc", null);
        mapper10.select4(null, "def");
        mapper10.select4(null, null);
    }

    @GetMapping("sub5")
    public void sub5() {
        // SELECT * FROM Customers
        // WHERE Country IN ('germany', 'usa', 'uk')
        mapper10.select5(List.of("germany", "usa", "uk"));

        // SELECT * FROM Customers
        // WHERE Country IN ('germany', 'usa')
        mapper10.select5(List.of("germany", "usa"));

        // SELECT * FROM Customers
        // WHERE Country IN ('germany')
        mapper10.select5(List.of("germany"));

        // SELECT * FROM Customers
        mapper10.select5(List.of());
    }

    @GetMapping("sub6")
    public void sub6() {
        //SELECT * FROM Suppliers WHERE City IN (?,?,?)
        mapper10.select6(List.of("seoul", "busan", "jeju"));
        //SELECT * FROM Suppliers WHERE City IN (?,?)
        mapper10.select6(List.of("seoul", "busan"));
        //SELECT * FROM Suppliers WHERE City IN (?)
        mapper10.select6(List.of("seoul"));
    }

    @GetMapping("sub7")
    public void sub7() {
        mapper10.select7();
    }
}
