package com.example.spring20240924.dto.c14;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class Member {
    private String name;
    private Integer height;
    private Integer weight;
    private String birth;
    private String team;
    private String position;
}
