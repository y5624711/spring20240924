package com.example.spring20240924.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main9")
public class Controller09 {

    @RequestMapping("sub1")
    public String sub1(Model model) {


        return null;
    }

    @RequestMapping("sub2")
    public String sub2(Model model) {

        var map = Map.of(
                "name", "son",
                "age", 34,
                "team", "토트넘");

        model.addAttribute("attr1", map);
        model.addAttribute("attr2", List.of("java", "emmet"));
        return null;
    }

    @RequestMapping("sub3")
    public String sub3(Model model) {
        model.addAttribute("person", Map.of(
                "name", "도널드",
                "address", "뉴욕",
                "e mail", "지메일"
        ));

        return null;
    }

    @RequestMapping("sub4")
    public String sub4(Model model) {
        model.addAttribute("student", Map.of(
                "name", "Yun",
                "score", 99,
                "집 주소", "인천",
                "student number", 7
        ));

        model.addAttribute("player", Map.of(
                "email", "google.com",
                "address", "인천 서구",
                "team", "RedTeam"
        ));

        model.addAttribute("home", Map.of(
                "address", "서울",
                "location", "강남구",
                "price", 100
        ));

        return null;
    }


}
