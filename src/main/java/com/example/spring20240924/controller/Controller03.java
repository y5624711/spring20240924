package com.example.spring20240924.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

@Controller
public class Controller03 {

    // /main3/sub1?name=son
    @RequestMapping("main3/sub1")
    public void method1(@RequestParam(name = "name") String param) {
        System.out.println("name = " + param);
    }

    @RequestMapping("main3/sub2")
    public void method2(@RequestParam(name = "address") String param) {
        System.out.println("param = " + param);
    }

    @RequestMapping("main3/sub3")
    public void method3(@RequestParam("address") String param) {
        System.out.println("param = " + param);
    }

    // /main3/sub4?email=gmail&location=us
    @RequestMapping("main3/sub4")
    public void method4(@RequestParam("email") String param1,//<-리퀘스트 핸들러메소드
                        @RequestParam("location") String param2){
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
    }

    // @RequestParam의 이름이 value값의 이름과 같으면 생략가능
    @RequestMapping("/main3/sub5")
    public void method5(String email){
        System.out.println("param = " + email);
    }


    // /main3/sub6?address=seoul
    //@RequestParam 어노테이션과 value 엘레멘트 속성의 값 명시
    @RequestMapping("/main3/sub6")
    public void method6(@RequestParam("address") String param1){
        System.out.println("param1 = " + param1);
    }

    // /main3/sub7?address=seoul
    // @RequestParam 명시 (단 value 속성값 생략)
    @RequestMapping("/main3/sub7")
    public void method7(@RequestParam String address){
        System.out.println("address = " + address);
    }


    // /main3/sub8?address=seoul
    //@RequestParam 어노테이션 생략
    @RequestMapping("main3/sub8")
    public void method8(String address){
        System.out.println("address = " + address);
    }

}
