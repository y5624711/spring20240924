package com.example.spring20240924.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import static java.lang.StringTemplate.STR;

@Controller
@RequestMapping("main6")
public class Controller06 {
    @RequestMapping("sub1")
    @ResponseBody
    public String sub1(String search){
        String result = search + "를 검색한 결과";

        String html = STR."""
                <html>
                  <body>
                     <p>\{result}</p>
                  </body>
                </html>
                """;

        return html;
    }
}
