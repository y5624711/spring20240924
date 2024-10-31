package core.app5;

import core.app5.controller.Controller1;
import core.app5.controller.Controller2;
import core.app5.service.Service1;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class App5 {
    public static void main(String[] args) {
        //Inversion Control (IOC : 제어의 역전(Spring 이 대신 해주었기에)
        //객체 생성, DI

        BeanFactory factory = SpringApplication.run(App5.class, args);

        Controller1 c1 = factory.getBean(Controller1.class);
        Controller2 c2 = factory.getBean(Controller2.class);
        Service1 s1 = factory.getBean(Service1.class);

        System.out.println("c1 = " + c1);
        System.out.println("c2 = " + c2);
        System.out.println("s1 = " + s1);

        System.out.println(c1.getService1());
        System.out.println(c2.getService1());

        c1.sub1();
        c2.sub1();
    }
}
