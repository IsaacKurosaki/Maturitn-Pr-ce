package com.isaac;

import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.RadioButton;
import javafx.scene.control.ToggleGroup;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import java.util.ArrayList;
import java.util.List;

public class NoveOkno {

    private String jmeno;
    private int pocetOtazek;
    private String tema;
    private List<Otazka> otazky;
    private int aktualniIndexOtazky = 0;
    private int skore = 0;
    private Stage stage;
    private VBox layout;
    private final List<String> odpovediUzivatele = new ArrayList<>();

    public NoveOkno(String jmeno, int pocetOtazek, String tema, Stage uvodniStage) {
        this.jmeno = jmeno;
        this.pocetOtazek = pocetOtazek;
        this.tema = tema;
        this.stage = uvodniStage;
        this.otazky = DatabaseHelper.nactiOtazky(tema, pocetOtazek);
    }

    public void zobrazOtazky() {
        layout = new VBox(10);
        layout.setAlignment(Pos.CENTER);
        aktualizujObsahOtazky();
        Scene scene = new Scene(layout, 800, 600);
        stage.setScene(scene);
        stage.setTitle("Kvíz - Otázky");
        stage.show();
    }

    private void aktualizujObsahOtazky() {
        layout.getChildren().clear();
        if (aktualniIndexOtazky < otazky.size()) {
            Otazka otazka = otazky.get(aktualniIndexOtazky);
            Label lblOtazka = new Label((aktualniIndexOtazky + 1) + ". " + otazka.getTextOtazky());
            ToggleGroup skupina = new ToggleGroup();
            RadioButton btnA = new RadioButton("A) " + otazka.getMoznostA());
            btnA.setToggleGroup(skupina);
            btnA.setUserData("A");
            RadioButton btnB = new RadioButton("B) " + otazka.getMoznostB());
            btnB.setToggleGroup(skupina);
            btnB.setUserData("B");
            RadioButton btnC = new RadioButton("C) " + otazka.getMoznostC());
            btnC.setToggleGroup(skupina);
            btnC.setUserData("C");
            layout.getChildren().addAll(lblOtazka, btnA, btnB, btnC);
            Button btnDalsiOtazka = new Button("Další otázka");
            btnDalsiOtazka.setOnAction(e -> {
                String vybranaOdpoved = (String) skupina.getSelectedToggle().getUserData();
                if (vybranaOdpoved.equals(otazka.getSpravnaOdpoved())) {
                    skore++;
                }
                aktualniIndexOtazky++;
                aktualizujObsahOtazky();
            });
            layout.getChildren().add(btnDalsiOtazka);
        } else {
            zobrazVysledky();
        }
    }

    private void zobrazVysledky() {
        Label lblSkore = new Label("Skóre: " + skore + "/" + otazky.size());
        Label lblJmeno = new Label("Jméno: " + jmeno);
        Button btnDalsi = new Button("Další");
        btnDalsi.setOnAction(e -> {
            Kviz kviz = new Kviz();
            kviz.start(stage);
        });
        layout.getChildren().addAll(lblSkore, lblJmeno, btnDalsi);
    }
}