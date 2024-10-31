package com.example.spring20240924.controller;

import com.example.spring20240924.dto.c34.*;
import com.example.spring20240924.mapper.Mapper04;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main34")
@RequiredArgsConstructor
public class Controller34 {
    //생성자 주입
    final Mapper04 mapper04;

    @GetMapping("sub1")
    public void sub1() {
        String name = mapper04.getProductName();
        System.out.println("name = " + name);
    }

    @GetMapping("sub2")
    public void sub2() {
        String s = mapper04.select2();
        String s1 = mapper04.select3();
        Double v = mapper04.select4();
//        System.out.println("s = " + s);
//        System.out.println("s1 = " + s1);
//        System.out.println("v = " + v);

        //1번 직원의 LastName 조회
        String str1 = mapper04.select5();

        //2번 상품의 CategoryID 조회
        Integer str2 = mapper04.select06();

        //2번 직원의 생일 조회
        LocalDate str3 = mapper04.select07();

        System.out.println("str1 = " + str1);
        System.out.println("str2 = " + str2);
        System.out.println("str3 = " + str3);
    }

    @GetMapping("sub3")
    public void sub3() {
        List<String> list = mapper04.select8();
        list.forEach(System.out::println);

        //모든 직원의 lastName들을 조회
        List<String> list2 = mapper04.select9();
        //모든 직원의 BirthDate를 조회
        List<LocalDate> list3 = mapper04.select10();
        //가장 비싼 상품의 가격들 5개 조회
        List<Integer> list4 = mapper04.select11();

        System.out.println("list2 = " + list2);
        System.out.println("list3 = " + list3);
        System.out.println("list4 = " + list4);
    }

    @GetMapping("sub4")
    public void sub4() {
        //1행 여러열
        Map<String, String> result1 = mapper04.select12();
        System.out.println(result1);
        Map<String, String> result2 = mapper04.select13();
        System.out.println(result2);
        Map<String, Object> result3 = mapper04.select14();
        System.out.println(result3);
        //15
        //1번직원의 이름,생일 조회
        Map<String, LocalDate> result4 = mapper04.select15();

        //16
        //3번 고객의 이름,주소,우편번호 조회
        Map<String, Object> result5 = mapper04.select16();
        System.out.println(result4);
        System.out.println();
        System.out.println(result5);
        //17

    }

    @GetMapping("sub5")
    public void sub5() {
        //1행 여러 열
        Customer c = mapper04.select17();
        System.out.println("c = " + c);

        Product p = mapper04.select18();
        System.out.println("p = " + p);

        //3번 직원의 이름과 생일 조회
        Employee e = mapper04.select19();
        System.out.println("e = " + e);

        //2번 공급자의 id, 이름 ,전화번호 조회
        Supplier s = mapper04.select20();
        System.out.println("s = " + s);

        //10248번 주문의 주문일, 고객명 조회
        Order o = mapper04.select21();
        System.out.println("o = " + o);
    }

    @GetMapping("sub6")
    public void sub6() {
        //1행 여러열 -> javaBean
        //1행 여러열 -> Map

        //여러행 여러열 -> List<Map>
        //여러행 여러열 -> List<javaBean>

        List<Map<String, String>> r1 = mapper04.select22();

        //가장 비싼 상품 5개의 상품명, 카테고리명, 단위, 가격 조회
        //select23
        List<Map<String, Object>> r2 = mapper04.select23();
        System.out.println("r2 = " + r2);

        //10248번 주문의 상품과 수량, 가격 조회
        //select24

        List<Map<String, Object>> r3 = mapper04.select24();
        System.out.println("r3 = " + r3);
    }

    @GetMapping("sub7")
    public void sub7() {
        //여러행 여러열 list<dto>
        //직원의 이름과 생일 조회
        List<Employee> r1 = mapper04.select25();
        System.out.println("r1 = " + r1);

        //usa에 있는 공급자의 id, 이름,전화번호 조회
        List<Supplier> r2 = mapper04.select26();
        System.out.println("r2 = " + r2);

        // 1996년 7월 주문의 주문일 고객명 조회
        List<Order> r3 = mapper04.select27();
        System.out.println("r3 = " + r3);
    }
}
