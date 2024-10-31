package com.example.spring20240924.controller;

import com.example.spring20240924.mapper.Mapper02;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {
    private final Mapper02 mapper02;

    @GetMapping("sub1")
    public void sub1() {
        String name = mapper02.selectSupplierName();
        System.out.println("name = " + name);
    }

    
}
