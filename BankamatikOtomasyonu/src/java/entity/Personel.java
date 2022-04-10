/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Timestamp;

/**
 *
 * @author byosmandogan
 */
public class Personel {
    private Long id;
    private String p_ad;
    private String p_soyad;
    private Integer p_yas;
    private String p_hesapno;
    private String p_sifre;
    private Timestamp created;
    private Timestamp updated;

    public Personel() {
    }

    public Personel(Long id, String p_ad, String p_soyad, Integer p_yas, String p_hesapno, String p_sifre, Timestamp created) {
        this.id = id;
        this.p_ad = p_ad;
        this.p_soyad = p_soyad;
        this.p_yas = p_yas;
        this.p_hesapno = p_hesapno;
        this.p_sifre = p_sifre;
        this.created = created;
    }

    public Personel(Long id, String p_ad, String p_soyad, Integer p_yas, String p_hesapno, String p_sifre, Timestamp created, Timestamp updated) {
        this.id = id;
        this.p_ad = p_ad;
        this.p_soyad = p_soyad;
        this.p_yas = p_yas;
        this.p_hesapno = p_hesapno;
        this.p_sifre = p_sifre;
        this.created = created;
        this.updated = updated;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getP_ad() {
        return p_ad;
    }

    public void setP_ad(String p_ad) {
        this.p_ad = p_ad;
    }

    public String getP_soyad() {
        return p_soyad;
    }

    public void setP_soyad(String p_soyad) {
        this.p_soyad = p_soyad;
    }

    public Integer getP_yas() {
        return p_yas;
    }

    public void setP_yas(Integer p_yas) {
        this.p_yas = p_yas;
    }

    public String getP_hesapno() {
        return p_hesapno;
    }

    public void setP_hesapno(String p_hesapno) {
        this.p_hesapno = p_hesapno;
    }

    public String getP_sifre() {
        return p_sifre;
    }

    public void setP_sifre(String sifre) {
        this.p_sifre = sifre;
    }

    public Timestamp getCreated() {
        return created;
    }

    public void setCreated(Timestamp created) {
        this.created = created;
    }

    public Timestamp getUpdated() {
        return updated;
    }

    public void setUpdated(Timestamp updated) {
        this.updated = updated;
    }

    @Override
    public String toString() {
        return "Personel{" + "id=" + id + ", p_ad=" + p_ad + ", p_soyad=" + p_soyad + ", p_yas=" + p_yas + ", p_hesapno=" + p_hesapno + ", sifre=" + p_sifre + ", created=" + created + ", updated=" + updated + '}';
    }
    
    
}
