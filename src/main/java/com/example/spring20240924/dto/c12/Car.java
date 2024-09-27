package com.example.spring20240924.dto.c12;

import lombok.Data;

// Getter, Setter, ToString, EqualsAndHashCode,
// RequiredArgsConstructor
@Data
public class Car {
    private String make;
    private String model;
    private int year;
}