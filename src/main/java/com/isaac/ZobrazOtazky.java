package com.isaac;

public void zobrazOtazky(Stage stage) {
    List<Otazka> otazky = DatabaseHelper.nactiOtazky(tema, pocetOtazek);
    VBox layout = new VBox(10);
    
}