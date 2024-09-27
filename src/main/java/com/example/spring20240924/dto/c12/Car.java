package com.example.spring20240924.dto.c12;

import lombok.Data;

@Data//getter, setter, ToString, EqualsAndHashCode 포함
//RequiredArgsConstructor

public class Car {
    private String make;
    private String model;
    private int year;
}
