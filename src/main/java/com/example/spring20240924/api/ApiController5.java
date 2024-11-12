package com.example.spring20240924.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/api/main5")
public class ApiController5 {

    @GetMapping("sub1")
    @ResponseBody
    public String sub1() {
        System.out.println("ApiController5.sub1");
        return "sub1";
    }

    @GetMapping("sub3")
    @ResponseBody
    public String method3() {
        System.out.println("ApiController5.method3");
        return "seoul";
    }

    @GetMapping("sub4")
    @ResponseBody
    public Map<String, Object> sub4() {
        return Map.of("name", "kim", "age", 44);
    }

    @GetMapping("sub5")
    @ResponseBody
    public Map<String, Object> sub5() {
        return Map.of("title", "책제목", "content", "책 내용", "price", 15000, "available", true);
    }

    @GetMapping("sub6")
    @ResponseBody
    public Map<String, Object> sub6() {
        return Map.of("name", "son", "items", List.of("치킨", "돈까스", "떡볶이"),
                "team", Map.of("name", "토트넘", "location", "런던"));
    }

    @GetMapping("sub7")
    @ResponseBody
    public Map<String, Object> sub7() {

        return Map.of("product", Map.of("name", "son", "price", 10000, "quantity", 10),
                "company", Map.of("location", List.of("seoul", "london")));
    }
}
