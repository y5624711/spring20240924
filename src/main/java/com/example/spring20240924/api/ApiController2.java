package com.example.spring20240924.api;

import com.example.spring20240924.dto.a2.Book;
import com.example.spring20240924.dto.a2.Person;
import com.example.spring20240924.dto.a2.Player;
import com.example.spring20240924.dto.a2.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

@Controller
@RequestMapping("/api/main2")
public class ApiController2 {
    @PostMapping("sub1")
    public void sub1(@RequestBody Person person) {
        System.out.println("person = " + person);
    }

    @PostMapping("sub2")
    public void sub2(@RequestBody Book book) {
        System.out.println("book = " + book);
    }

    @PostMapping("sub3")
    public void sub3(@RequestBody Player player) {
        System.out.println("player = " + player);
    }

    @PostMapping("sub4")
    public void sub4(@RequestBody Product product) {
        System.out.println("product = " + product);
    }

    @PostMapping("sub5")
    public void sub5(@RequestBody List<String> items) {
        System.out.println("items = " + items);
    }

    @PostMapping("sub6")
    public void sub6(@RequestBody List<Person> people) {
        System.out.println("people = " + people);
    }

    @PostMapping("sub7")
    public void sub7(@RequestBody List<Book> books) {
        System.out.println("books = " + books);
    }

    //c : post
    //r : get
    //u :put
    //d : delete
}
