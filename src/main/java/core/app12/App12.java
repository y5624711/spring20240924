package core.app12;

import core.app11.App11;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class App12 {
    public static void main(String[] args) {
        BeanFactory context = SpringApplication.run(App12.class, args);
        Bean1 bean1 = context.getBean(Bean1.class);
        Bean2 bean2 = context.getBean(Bean2.class);

        System.out.println(bean1.getBean2());
        System.out.println(bean1.getBean2() == bean2);
    }
}
