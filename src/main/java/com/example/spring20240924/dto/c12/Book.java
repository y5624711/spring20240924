package com.example.spring20240924.dto.c12;

import lombok.*;

//Lombok - 생략 코드
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class Book {
    private String title;
    private String author;
    private Integer price;
}
