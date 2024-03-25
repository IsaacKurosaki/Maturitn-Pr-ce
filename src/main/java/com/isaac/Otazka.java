package com.isaac;

public class Otazka {
    private int id;
    private String textOtazky;
    private String moznostA;
    private String moznostB;
    private String moznostC;
    private String spravnaOdpoved;

    public Otazka(int id, String textOtazky, String moznostA, String moznostB, String moznostC, String spravnaOdpoved){
        this.id = id;
        this.textOtazky = textOtazky;
        this.moznostA = moznostA;
        this.moznostB = moznostB;
        this.moznostC = moznostC;
        this.spravnaOdpoved = spravnaOdpoved;
    }

    public int getId() {
        return id;
    }

    public String getTextOtazky() {
        return textOtazky;
    }

    public String getMoznostA() {
        return moznostA;
    }

    public String getMoznostB() {
        return moznostB;
    }

    public String getMoznostC() {
        return moznostC;
    }

    public String getSpravnaOdpoved() {
        return spravnaOdpoved;
    }
}