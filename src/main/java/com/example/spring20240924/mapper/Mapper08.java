package com.example.spring20240924.mapper;


import com.example.spring20240924.dto.c38.Customer;
import com.example.spring20240924.dto.c38.Employee;
import core.app7.Bean1;
import core.app7.Bean2;
import org.apache.ibatis.annotations.*;

import java.util.Map;

@Mapper
public interface Mapper08 {
    @Update("""
            UPDATE Customers
            SET CustomerName = '한강',
                ContactName = '노벨상',
                Address = '서울',
                Country= '한국'
            WHERE CustomerId = 2
            """)
    int update1();

    @Update("""
            UPDATE Customers
            SET CustomerName = #{name},
                ContactName = #{contactName},
                Address = #{address},
                City = #{city},
                PostalCode = #{postalCode},
                Country = #{country}
            WHERE CustomerId = #{id}
            """)
    int update2(String name,
                String contactName,
                String address,
                String city,
                String postalCode,
                String country,
                Integer id);

    @Update("""
            UPDATE Customers
            SET CustomerName = #{name},
                ContactName = #{contactName},
                Address = #{address},
                City = #{city},
                PostalCode = #{postalCode},
                Country = #{country}
            WHERE CustomerId = #{id}
            """)
    int update3(Customer c);

    @Update("""
            UPDATE Employees
            SET FirstName=#{firstName},
            LastName=#{lastName},
            BirthDate=#{birthDate},
            Photo=#{photo},
            Notes=#{notes}
            WHERE EmployeeID=#{id}
            """)
    int update4(Employee e);

    @Select("""
            SELECT CustomerID id,
                   CustomerName name,
                   ContactName contactName,
                   Address address,
                   City city,
                   PostalCode postalCode,
                   Country country
            FROM Customers
            WHERE CustomerId= #{id}
            """)
    Customer select1(Integer id);

    @Select("""
            SELECT EmployeeID id,
                   LastName lastName,
                   FirstName firstName,
                   BirthDate birthDate,
                   Photo photo,
                   Notes notes
            FROM Employees
            WHERE EmployeeID = #{id}
            """)
    Employee select2(Integer id);

    //메소드 아규먼트가 여러개면
    //쿼리 #{} 파라미터에 bean 이름을 앞에 붙여야함
    @Select("""
            SELECT *
            FROM Customers
            WHERE CustomerName = #{b1.name}
            OR ContactNaem = #{b2.contactName}
            OR CustomerID =#{b1.id}
            OR BirthDate = #{b2.birthDate}
            """)
    Map<String, Object> select03(Bean1 b1, Bean2 bean2);

    @Insert("""
            INSERT INTO Customers
            (CustomerName,ContactName,Address,City,PostalCode,Country)
            VALUES (#{name},#{contactName},#{address},#{city},#{postalCode},#{country})
            """)
    //새로입력된 레코드의 PK를 얻는 어노테이션
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert01(Customer customer);


    @Insert("""
            INSERT INTO Employees
            (LastName,FirstName,BirthDate,Photo,Notes)
            VALUES(#{lastName},#{firstName},#{birthDate},#{photo},#{notes})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert02(Employee employee);
}
