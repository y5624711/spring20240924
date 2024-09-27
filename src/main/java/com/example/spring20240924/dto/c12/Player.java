package com.example.spring20240924.dto.c12;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

//@NoArgsConstructor// 아규먼트 없는 생성자
//@AllArgsConstructor //모든 필드를 받는 생성자
//@RequiredArgsConstructor // 필수 아규먼트 (파이널필드)만 받는 생성자
@Data
public class Player {

    private final int age;
    private final String name;
    private boolean married;
}
