package core.app12;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;


@Getter
@Component
@RequiredArgsConstructor
public class Bean1 {
    final Bean2 bean2;

//    public Bean1(Bean2 bean2) {
//        this.bean2 = bean2;
//    }
}
