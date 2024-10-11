package com.example.spring20240924.controller;


import com.example.spring20240924.dto.c21.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("main21")
public class Controller21 {

    @GetMapping("sub1")
    public void sub1() {

    }


    @PostMapping("sub1")
    public void post1(@ModelAttribute(name = "some1") Object o) {
        //@ModelAttribute
    }

    @GetMapping("sub2")
    public String Get2(@ModelAttribute("some1") Object o) {
        return "/main21/sub1";
    }

    //@ModelAttribute 을 붙인 메소드 아규먼트(객체)는
    //request parameter 가 객체의 property(getter,setter) 에 binding 된다.

    @GetMapping("sub3")
    public void get3() {

    }

    @PostMapping("sub3")
    public void post3(@ModelAttribute("some") MyBean b) {
        System.out.println("b = " + b);
    }

    @GetMapping("sub4")
    public void get4(@ModelAttribute("data") MyBean4 b) {
        System.out.println("b = " + b);
    }

    @PostMapping("sub5")
    public void post5(@ModelAttribute("values") MyBean5 b) {
        System.out.println("b = " + b);
    }

    //ModelAttribute 의 name(value) element 를 생략하면
    //클래스명을 lowerCameCase 로 바꾼 이름으로 결정됨
    @GetMapping("sub6")
    public void get6(@ModelAttribute MyBean6 a, Model model) {
        System.out.println("a = " + a);

        Object m = model.getAttribute("MyBean6");
        System.out.println("m = " + m);
        System.out.println("a = " + System.identityHashCode(a));
    }

    @GetMapping("sub7")
    public void get7(@ModelAttribute MyBean6 a, Model model) {
        System.out.println("a = " + a);

        Object m = model.getAttribute("MyBean6");
        System.out.println("m = " + m);
        System.out.println("a = " + System.identityHashCode(a));
    }

//    sub8.jsp
//    :전송버튼 클릭시 post 방식으로 sub9 경로로 요청하는 코드
//    sub9.jsp
//    :model에 있는 attribute의 각 property를 출력하는코드

    @GetMapping("sub8")
    public void get8() {

    }

    @PostMapping("sub9")
    public void post9(MyBean8 p) {
        System.out.println("p = " + p);
    }

    @GetMapping("sub10")
    public String get10(RedirectAttributes rttr) {
        MyBean8 m = new MyBean8();
        m.setAge(22);
        m.setUserName("범근");
        m.setScore(3.14);

        rttr.addFlashAttribute("data", m);

        return "redirect:/main21/sub11";
    }

    //@ModelAttribute 가 적용된 메소드 아규먼트를
    //Model에서 찾고 있으면 Model에서 꺼내어 사용

    //없다면 객체를 생성한 후 사용
    //, 이 때 사용하는 생성자는 유일한 생성자 이거나 기본 생성자이다.
    @GetMapping("sub11")
    public String g11(@ModelAttribute("data") MyBean8 p) {
        System.out.println("data = " + p);
        return null;
    }
}
