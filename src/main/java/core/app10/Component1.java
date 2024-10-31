package core.app10;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Getter
@Component
public class Component1 {
    Component2 component2;

    @Autowired
    public Component1(Component2 component2) {
        this.component2 = component2;
    }
}
