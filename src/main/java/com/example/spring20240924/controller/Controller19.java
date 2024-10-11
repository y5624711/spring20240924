package com.example.spring20240924.controller;

import com.example.spring20240924.dto.c12.Book;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;

@Controller
@RequestMapping("main19")
public class Controller19 {

    @RequestMapping("sub1")
//    public void sub1(String address, String nick)
    public void sub1(WebRequest request) {
        String address = request.getParameter("address");
        String nick = request.getParameter("nick");
        System.out.println("address = " + address);
        System.out.println("nick = " + nick);
    }

    @RequestMapping("sub2")
    public void sub2(String name, String age) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }

    @RequestMapping("sub3")
    public void sub3(String food, String email, String city) {
        System.out.println("food = " + food);
        System.out.println("age = " + email);
        System.out.println("city = " + city);
    }

    @RequestMapping("sub4")
    public void sub4(String food, String name, String memo) {
        System.out.println("food = " + food);
        System.out.println("name = " + name);
        System.out.println("memo = " + memo);
    }

    @RequestMapping("sub5")
    public void sub5(String[] city) {
        System.out.println("city = " + Arrays.toString(city));
    }

    @RequestMapping("sub6")
    public void sub6(Boolean accept) {
        System.out.println("accept = " + accept);
    }

    @RequestMapping("sub7")
    public void sub7(String location) {
        System.out.println("location = " + location);
    }

    @RequestMapping("sub8")
    public void sub8(LocalDate birth, LocalDateTime now, String some) {
        System.out.println("birth = " + birth);
        System.out.println("now = " + now);
        System.out.println("some = " + some);
    }

    @RequestMapping("sub10")
    public void sub10(String address,
                      String[] foods,
                      String choice,
                      LocalDate birthDate,
                      LocalDateTime startDateTime,
                      String select,
                      String note
    ) {
        System.out.println("address = " + address);
        System.out.println("checkbox = " + Arrays.toString(foods));
        System.out.println("choice = " + choice);
        System.out.println("birthDate = " + birthDate);
        System.out.println("startDateTime = " + startDateTime);
        System.out.println("select = " + select);
        System.out.println("note = " + note);
    }

}
