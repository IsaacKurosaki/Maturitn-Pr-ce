package com.isaac;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseTest {

    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/kviz_maturita";
    static final String USER = "root";
    static final String PASS = "";
    
    public static void main(String[] args) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName(JDBC_DRIVER);

            System.out.println("Připojování k databázi...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "SELECT text FROM otazky LIMIT 1";
            pstmt = conn.prepareStatement(sql);
            
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String textOtazky = rs.getString("text");
                System.out.println("První otázka: " + textOtazky);
            } else {
                System.out.println("V databázi nejsou žádné otázky.");
            }

            rs.close();
            pstmt.close();
            conn.close();
        } catch(SQLException se) {
            se.printStackTrace();
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(pstmt != null) pstmt.close();
            } catch(SQLException se2) {
            }
            try {
                if(conn != null) conn.close();
            } catch(SQLException se) {
                se.printStackTrace();
            }
        }

        System.out.println("Ukončení!");
    }
}
