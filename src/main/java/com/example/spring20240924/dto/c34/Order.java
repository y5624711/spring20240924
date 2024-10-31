package com.example.spring20240924.dto.c34;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Order {
    private Integer orderID;
    private LocalDate orderDate;
    private String customerName;
}
