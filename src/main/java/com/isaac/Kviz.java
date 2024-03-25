package com.isaac;

import javafx.application.Application;
import javafx.beans.binding.Bindings;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.sql.Connection;
import java.sql.DatabaseMetaData;   
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class Kviz extends Application{

    static String jdbc_url = "jdbc:mysql://localhost:3306/kviz_maturita";
    static String user = "root";
    static String pwd = "";

    private static void pripojSe() {
        try (Connection conn = DriverManager.getConnection(jdbc_url, user, pwd)) {
            System.out.println("Připojení k databázi bylo úspěšné.");
        } catch (SQLException e) {
            System.out.println("Chyba k připojení k  databázi.");
            e.printStackTrace();
        }
    }

    
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Maturitní Práce - Kvíz");

        VBox root = new VBox(10);
        root.setAlignment(Pos.CENTER);

        Label welcomeLabel = new Label("Jméno: ");
        TextField jmeno = new TextField();
        jmeno.setPromptText("Zadejte jméno...");

        Label delkaKvizu = new Label("Délka kvízu:");
        ComboBox<Integer> pocetOtazek = new ComboBox<>();
        pocetOtazek.getItems().addAll(5, 10, 15, 20);
        pocetOtazek.setPromptText("Vyberte počet otázek");

        Label zamereni = new Label("Zaměření: ");
        ComboBox<String> tema = new ComboBox<>();
        tema.getItems().addAll("Hry", "Filmy", "Hudba", "Zeměpis");
        tema.setPromptText("Vyberte téma");

        Button hrat = new Button("Hrát");
        hrat.setDisable(true);

        hrat.disableProperty().bind(
            Bindings.isEmpty(jmeno.textProperty())
            .or(pocetOtazek.valueProperty().isNull())
            .or(tema.valueProperty().isNull()));


        root.getChildren().addAll(welcomeLabel, jmeno, zamereni, pocetOtazek, delkaKvizu, tema, hrat);

        hrat.setOnAction(event -> {
            NoveOkno noveOkno = new NoveOkno(jmeno.getText(), pocetOtazek.getValue(), tema.getValue(), primaryStage);
            noveOkno.zobrazOtazky();
        });


        Scene scene = new Scene(root, 400, 300);

        String css = this.getClass().getResource("/com/isaac/style.css").toExternalForm();
        scene.getStylesheets().add(css);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}