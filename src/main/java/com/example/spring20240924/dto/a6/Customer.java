package com.example.spring20240924.dto.a6;

import lombok.Data;

@Data
public class Customer {
    private Integer id;
    private String name;
    private String contact;
    private String address;
    private String city;
    private String postalCode;
    private String country;
}