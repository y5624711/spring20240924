package com.example.spring20240924.dto.c29;

import lombok.Data;

import java.sql.Date;

@Data
public class Book {
    private String isbn;
    private String name;
    private String author;
    private Integer price;
    private String published;
}
