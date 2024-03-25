package com.isaac;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DatabaseHelper {

    static String jdbcUrl = "jdbc:mysql://localhost:3306/kviz_maturita";
    static String user = "root";
    static String pwd = "";

    public static List<Otazka> nactiOtazky(String tema, int pocetOtazek) {
        List<Otazka> otazky = new ArrayList<>();
        String tabulka;
        switch (tema) {
            case "Filmy":
                tabulka = "filmove_otazky";
                break;
            case "Hry":
                tabulka = "herni_otazky";
                break;
            case "Hudba":
                tabulka = "hudebni_otazky";
                break;
            case "Zeměpis":
                tabulka = "zemepisne_otazky";
                break;
            default:
                System.out.println("Neznámé téma: " + tema);
                return otazky;
        }

        String sql = "SELECT id_otazky, otazka, A, B, C, odpoved FROM " + tabulka + " LIMIT ?";
        

        try (Connection conn = DriverManager.getConnection(jdbcUrl, user, pwd);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
             
            pstmt.setInt(1, pocetOtazek);
            
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Otazka otazka = new Otazka(
                        rs.getInt("id_otazky"),
                        rs.getString("otazka"),
                        rs.getString("A"),
                        rs.getString("B"),
                        rs.getString("C"),
                        rs.getString("odpoved")
                );
                otazky.add(otazka);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return otazky;
    }

    public static void ulozSkoreHrace(String jmeno, int skore) {
        String sql = "INSERT INTO hraci (Jmeno, Skore) VALUES (?, ?)";

        try (Connection conn = DriverManager.getConnection(jdbcUrl, user, pwd);
            PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, jmeno);
            pstmt.setInt(2, skore);

            int affectedRows = pstmt.executeUpdate();
            if (affectedRows > 0) {
                System.out.println("Skóre bylo úspěšně uloženo do databáze.");
            } else {
                System.out.println("Při ukládání skóre došlo k problému.");
            }
        } catch (SQLException e) {
            System.out.println("SQL chyba při ukládání skóre: " + e.getMessage());
        }
    }

}