package com.example.spring20240924.controller;

import com.example.spring20240924.dto.c35.Dto59;
import com.example.spring20240924.mapper.Mapper05;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("main35")
public class Controller35 {
    private final Mapper05 mapper05;

    @GetMapping("sub1")
    public void sub1() {
        List<Dto59> r1 = mapper05.select1();
        System.out.println("r1 = " + r1);
    }

    @GetMapping("sub2")
    public void sub2() {
        List<Dto59> r1 = mapper05.select2();
        System.out.println("r1 = " + r1);
    }

}
