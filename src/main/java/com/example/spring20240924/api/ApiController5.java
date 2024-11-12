package com.example.spring20240924.api;

import com.example.spring20240924.dto.a5.Book;
import com.example.spring20240924.dto.a5.Company;
import com.example.spring20240924.dto.a5.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/api/main5")
public class ApiController5 {

    @GetMapping("sub1")
    @ResponseBody
    public String sub1() {
        System.out.println("ApiController5.sub1");
        return "sub1";
    }

    @GetMapping("sub3")
    @ResponseBody
    public String method3() {
        System.out.println("ApiController5.method3");
        return "seoul";
    }

    @GetMapping("sub4")
    @ResponseBody
    public Map<String, Object> sub4() {
        return Map.of("name", "kim", "age", 44);
    }

    @GetMapping("sub5")
    @ResponseBody
    public Map<String, Object> sub5() {
        return Map.of("title", "책제목", "content", "책 내용", "price", 15000, "available", true);
    }

    @GetMapping("sub6")
    @ResponseBody
    public Map<String, Object> sub6() {
        return Map.of("name", "son", "items", List.of("치킨", "돈까스", "떡볶이"),
                "team", Map.of("name", "토트넘", "location", "런던"));
    }

    @GetMapping("sub7")
    @ResponseBody
    public Map<String, Object> sub7() {

        return Map.of("product", Map.of("name", "son", "price", 10000, "quantity", 10),
                "company", Map.of("location", List.of("seoul", "london")));
    }

    @GetMapping("sub8")
    @ResponseBody
    public Book sub8() {
        Book book = new Book();
        book.setPrice(50000);
        book.setAuthor("한강");
        book.setTitle("제목");
        book.setContent("소설");

        return book;
    }

    @GetMapping("sub9")
    @ResponseBody
    public Customer sub9() {
        Customer customer = new Customer();
        Company company = new Company();
        company.setName("삼성");
        company.setLocation("서울");

        customer.setName("김");
        customer.setAddress("서울");
        customer.setMarried(false);
        customer.setItems(List.of("아이폰", "갤럭시"));
        customer.setCompany(company);

        return customer;
    }

    @GetMapping("sub10")
    @ResponseBody
    public List<Book> sub10() {
        List<Book> books = new ArrayList<>();
        Book book1 = new Book();
        book1.setTitle("Book1");
        book1.setAuthor("Author1");
        book1.setContent("Content1");
        book1.setPrice(3000);

        Book book2 = new Book();
        book2.setTitle("Book2");
        book2.setAuthor("Author2");
        book2.setContent("Content2");
        book2.setPrice(4000);

        Book book3 = new Book();
        book3.setTitle("Book3");
        book3.setAuthor("Author3");
        book3.setContent("Content3");
        book3.setPrice(5000);

        return List.of(book1, book2, book3);
    }
}
