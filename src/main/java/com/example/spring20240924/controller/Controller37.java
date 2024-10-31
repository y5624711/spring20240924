package com.example.spring20240924.controller;

import com.example.spring20240924.mapper.Mapper07;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("main37")
public class Controller37 {
    private final Mapper07 mapper07;

    @GetMapping("sub1")
    public void sub1(Integer id) {
        int cnt = mapper07.delete1(id);
        System.out.println(cnt + "개 행 삭제됨");
    }

    @GetMapping("sub2")
    public void sub2(Integer id) {
        int del = mapper07.delete2(id);
        System.out.println(del + " 행 삭제");
    }

    @GetMapping("sub3")
    public void sub3(String name,
                     String city,
                     String country) {

        int cnt = mapper07.insert1(name, city, country);
        System.out.println(cnt + "명 고객 정보 입력됨");
    }

    @GetMapping("sub4")
    public void sub4(String name, Double price) {
        int cnt = mapper07.insert2(name, price);

        System.out.println(cnt + "개 상품 등록");
    }

    @GetMapping("sub5")
    public void sub5(Model model) {
        List<Map<String, Object>> customers = mapper07.select2();
        model.addAttribute("customerList", customers);
    }

    @PostMapping("sub5")
    public String sub5(String name,
                       String city,
                       String country,
                       RedirectAttributes rttr) {
        int c = mapper07.insert1(name, city, country);
        rttr.addFlashAttribute("message", c + "명 고객 정보 등록됨");
        return "redirect:/main37/sub5";
    }

    //새 상품 등록
    @PostMapping("sub6")
    public String sub6(String name, String unit, Double price, RedirectAttributes rttr) {

        int c = mapper07.insert3(name, unit, price);
        rttr.addFlashAttribute("message", c + "개 상품 등록");

        return "redirect:/main37/sub6";
    }

    @GetMapping("sub6")
    public void sub6(Model model) {
        List<Map<String, Object>> product = mapper07.select3();
        model.addAttribute("productList", product);
    }
}
