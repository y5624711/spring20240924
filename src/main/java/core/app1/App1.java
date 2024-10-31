package core.app1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.swing.*;

//application 의 시작점
@SpringBootApplication
public class App1 {
    public static void main(String[] args) {
//        SpringApplication.run(App1.class, args);

        //spring의 도움없이 메소드 만들때
        Controller1 c1 = new Controller1();
        c1.method1();
        c1.method1();
    }
}

class Controller1 {
    public void method1() {
        System.out.println("Controller1.method1");
    }
}
