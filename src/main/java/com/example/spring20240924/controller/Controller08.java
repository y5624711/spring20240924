package com.example.spring20240924.controller;

import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping("main8")
public class Controller08 {

    @RequestMapping("sub1")
    public String sub1(Model model){
        //1. 요청 분석/가공
        //2. 비지니스 로직 실행
        //3. Model 에 일한 결과를 넣고 (넣은 값-attribute)
        model.addAttribute("result1","Hello World");

        //4. view 로 포워딩


        return null;
    }
    // /main8/sub2 로 요청
    // model 에 address 라는 이름의 "서울" 값을 넣고
    // //WEB-INT.view/main8/sub2.jsp 로 포워드

    //할일2
    // /WEB-INF/view/main8/sub2.jpg //에서
    // address라는 attribute 꺼내서 html 완성
    @RequestMapping("sub2")
    public String sub2(Model model){

        model.addAttribute("address","서울");
        model.addAttribute(("email,gmail"));

        //attribute 는 아무것이나 넣을 수 있음(Object 타입 이기에)

        model.addAttribute("age",44);
        model.addAttribute("point",4.12);
        model.addAttribute("Married",true);
        model.addAttribute("some1", List.of("java","css"));
        model.addAttribute("some2", Set.of("java","css"));
        model.addAttribute("some3", Map.of("java","css"));


        //주로 사용하는것
        //String, 기본타입(Wrapper) , 배열, List, Map, JavaBeans

        return null;
    }

    @RequestMapping("sub3")
    public String sub3(Model model){
        model.addAttribute("lange", new String[]{"java", "css"});

        return null;
    }

    @RequestMapping("sub4")
    public String sub4(Model model){
        model.addAttribute("countries", new String[] {"korea", "japan", "US"});
        model.addAttribute("islands", new String[] {"제주", "울릉도", "독도"});
        model.addAttribute("points", new double[] {3.14, 9.4321, 8.0101});

        return null;
    }

    @RequestMapping("sub5")
    public String sub5(Model model) {
        model.addAttribute("names", new String[] {"손흥민", "홍명보"});
        model.addAttribute("classes", new String[] {"자바", "react"});
        model.addAttribute("address", "신촌");

        return null;
    }

    @RequestMapping("sub6")
    public String sub6(Model model){
        //attribute에 리스트 넣기
        model.addAttribute("names",List.of("명보","몽규","흥민"));

        return null;
    }

    @RequestMapping("sub7")
    public String sub7(Model model){
        List<String> jobs = List.of("의사", "개발자", "강사");
        List<Integer> points = List.of(4, 2, 1);

        model.addAttribute("jobs",jobs);
        model.addAttribute("points",points);

        return null;
    }

    @RequestMapping("sub8")
    public String sub8(Model model){
        model.addAttribute("students", List.of("문성", "몽규", "명보"));
        model.addAttribute("num", 0);
        model.addAttribute("index", "1");
        model.addAttribute("point", "2");

        return null;
    }

    @RequestMapping("sub9")
    public String sub9(Model model){
        model.addAttribute("people", List.of("donald", "harris", "biden"));
        model.addAttribute("addresses", List.of("ny", "la"));

        model.addAttribute("second", "1");
        model.addAttribute("next", "2");
        model.addAttribute("zero", 0);
        model.addAttribute("one", 1);


        return null;
    }
}

