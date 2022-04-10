/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Timestamp;

/**
 *
 * @author Onur
 */
public class guncelle {
    private Long id;
    private String p_hesap_no;
    private String m_ad;
    private String m_soyad;
    private String m_sifre;
    private Timestamp created;
    private Timestamp updated;

    public guncelle() {
    }

    public guncelle(Long id, String p_hesap_no, String m_ad, String m_soyad, String m_sifre, Timestamp created) {
        this.id = id;
        this.p_hesap_no = p_hesap_no;
        this.m_ad = m_ad;
        this.m_soyad = m_soyad;
        this.m_sifre = m_sifre;
        this.created = created;
    }

    public guncelle(Long id, String p_hesap_no, String m_ad, String m_soyad, String m_sifre, Timestamp created, Timestamp updated) {
        this.id = id;
        this.p_hesap_no = p_hesap_no;
        this.m_ad = m_ad;
        this.m_soyad = m_soyad;
        this.m_sifre = m_sifre;
        this.created = created;
        this.updated = updated;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getP_hesap_no() {
        return p_hesap_no;
    }

    public void setP_hesap_no(String p_hesap_no) {
        this.p_hesap_no = p_hesap_no;
    }

    public String getM_ad() {
        return m_ad;
    }

    public void setM_ad(String m_ad) {
        this.m_ad = m_ad;
    }

    public String getM_soyad() {
        return m_soyad;
    }

    public void setM_soyad(String m_soyad) {
        this.m_soyad = m_soyad;
    }

    public String getM_sifre() {
        return m_sifre;
    }

    public void setM_sifre(String m_sifre) {
        this.m_sifre = m_sifre;
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
        return "guncelle{" + "id=" + id + ", p_hesap_no=" + p_hesap_no + ", m_ad=" + m_ad + ", m_soyad=" + m_soyad + ", m_sifre=" + m_sifre + ", created=" + created + ", updated=" + updated + '}';
    }
    
    
    
    
}
