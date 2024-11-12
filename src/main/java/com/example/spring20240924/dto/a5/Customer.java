package com.example.spring20240924.dto.a5;

import lombok.Data;

import java.util.List;

@Data
public class Customer {
    private String name;
    private String address;
    private Boolean married;
    private List<String> items;
    private Company company;
}
