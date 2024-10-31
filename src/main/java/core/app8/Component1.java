package core.app8;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Getter
@Component
public class Component1 {

    //reflection : private 이지만 필드정보를 꺼낼 수 있다.
    //필드 주입
    @Autowired
    private Component2 component2;
}
