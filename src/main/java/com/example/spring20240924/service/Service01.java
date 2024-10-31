package com.example.spring20240924.service;


import com.example.spring20240924.mapper.Mapper09;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class Service01 {
    private final Mapper09 mapper09;


    public void transferMoney(Integer money) {
        mapper09.updateMoney1(money);
        mapper09.updateMoney2(money);
    }

    //exception 발생

    public void transferMoney2(Integer money) {
        mapper09.updateMoney1(money);
        int a = 0;
        int b = 5 / a;
        mapper09.updateMoney2(money);
    }

    //check exception 발생

    public void transferMoney3(Integer money) {
        mapper09.updateMoney1(money);
        try {
            Class.forName("j.l.String");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        mapper09.updateMoney2(money);
    }

    public void transferMoney4(Integer money) {
        mapper09.updateMoney1(money);
        try {
            Class.forName("j.l.String");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        mapper09.updateMoney2(money);
    }
}
