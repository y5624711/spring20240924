package com.example.spring20240924.controller;

import com.example.spring20240924.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("main33")
public class Controller33 {

    private final Mapper03 mapper03;

    @GetMapping("sub1")
    public void sub1() {
        String description = mapper03.selectCategory();
        System.out.println("description = " + description);
    }
}
