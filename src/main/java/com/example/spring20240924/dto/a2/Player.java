package com.example.spring20240924.dto.a2;

import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class Player {
    private String name;
    private int age;
    private Boolean married;
    private List<String> items;
    private Team team;
}
