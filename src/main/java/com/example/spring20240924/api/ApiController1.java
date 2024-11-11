package com.example.spring20240924.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@RequestMapping("/api/main1")
@Controller
public class ApiController1 {
    @PostMapping("sub1")
    public void sub1() {
        System.out.println("/api/main1/sub1 으로 요청받음");
    }

    //@RequestBody : JSON -> MAP(JavaBeans)로 파싱해준다.
    @PostMapping("sub2")
    public void sub2(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
        System.out.println("sub2");
    }

    @PostMapping("sub3")
    public void sub3(@RequestBody Map<String, String> map) {
        System.out.println(map);
    }

    @PostMapping("sub4")
    public void sub4(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }
}
