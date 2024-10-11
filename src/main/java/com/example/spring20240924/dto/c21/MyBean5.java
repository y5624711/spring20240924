package com.example.spring20240924.dto.c21;

import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Data
public class MyBean5 {
    private List<String> select;
    private LocalDateTime now;
    private String note;
    private String id;
}
