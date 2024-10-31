package com.example.spring20240924.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Mapper03 {
    //1번 카테고리 설명
    @Select("""
            SELECT Description
            FROM Categories
            WHERE CategoryID = 1
            """)
    String selectCategory();
}
