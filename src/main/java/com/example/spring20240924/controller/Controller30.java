package com.example.spring20240924.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Controller
@RequestMapping("main30")
public class Controller30 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public String sub1() {

        int t = 500;
        String sql1 = """
                UPDATE db1.my_table58
                SET money = money-?
                WHERE name = 'kim'
                """;

        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + ?
                WHERE name = 'lee'
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql1);
            ps.setInt(1, t);
            ps.executeUpdate();

            PreparedStatement ps2 = con.prepareStatement(sql2);
            ps2.setInt(1, t);
            ps2.executeUpdate();

            ps2.close();
            ps.close();
            con.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }


        return null;
    }

    @GetMapping("sub2")
    public String sub2() {

        int t = 500;
        String sql1 = """
                UPDATE db1.my_table58
                SET money = money-?
                WHERE name = 'kim'
                """;

        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + ?
                WHERE name = 'lee'
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql1);
            ps.setInt(1, t);
            ps.executeUpdate();

            int a = 0;
            int b = 5 / a;//Exception


            PreparedStatement ps2 = con.prepareStatement(sql2);
            ps2.setInt(1, t);
            ps2.executeUpdate();

            ps2.close();
            ps.close();
            con.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }


        return null;
    }

    @GetMapping("sub3")
    public String sub3() {
        int t = 500;
        String sql1 = """
                UPDATE db1.my_table58
                SET money = money - ?
                WHERE name = 'kim'
                """;
        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + ?
                WHERE name = 'lee'
                """;

        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql1);
            ps.setInt(1, t);
            ps.executeUpdate();

            int a = 0;
            int b = 5 / a; // Exception

            PreparedStatement pss = conn.prepareStatement(sql2);
            pss.setInt(1, t);
            pss.executeUpdate();

            conn.commit();

            pss.close();
            ps.close();

        } catch (Exception e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        return null;
    }

    @GetMapping("sub4")
    public String sub4() {
        int t = 500;
        String sql1 = """
                UPDATE db1.my_table58
                SET money = money - ?
                WHERE name = 'kim'
                """;
        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + ?
                WHERE name = 'lee'
                """;

        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql1);
            ps.setInt(1, t);
            ps.executeUpdate();

            PreparedStatement pss = conn.prepareStatement(sql2);
            pss.setInt(1, t);
            pss.executeUpdate();

            conn.commit();

            pss.close();
            ps.close();

        } catch (Exception e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        return null;
    }


    @GetMapping("sub5")
    public String sub5() {
// 1. kim 계좌에서 1000 차감
        // 2. lee 계좌에서 1000 증액
        // 단. 모두 성공(commit), 모두 실패(rollback)
        String sql1 = """
                UPDATE db1.my_table58
                SET money = money - 1000
                WHERE name = 'kim'
                """;
        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + 1000
                WHERE name = 'lee'
                """;
        try (Connection conn = dataSource.getConnection();) {
            try {

                conn.setAutoCommit(false);
                PreparedStatement ps1 = conn.prepareStatement(sql1);
                PreparedStatement ps2 = conn.prepareStatement(sql2);

                try (ps1; ps2) {
                    ps1.executeUpdate();
                    ps2.executeUpdate();
                }
                conn.commit();
            } catch (Exception e) {
                try {
                    conn.rollback();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return null;
    }
}
