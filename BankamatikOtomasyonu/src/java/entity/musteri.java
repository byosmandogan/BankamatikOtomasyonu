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
public class musteri {
    private Long m_id;
    private String m_ad;
    private String m_soyad;
    private String m_sifre;
    private String m_hesapno;
    private Timestamp created;
    private Timestamp updated;

    public musteri() {
    }

    public musteri(Long m_id, String m_ad, String m_soyad, String m_sifre, String m_hesapno, Timestamp created) {
        this.m_id = m_id;
        this.m_ad = m_ad;
        this.m_soyad = m_soyad;
        this.m_sifre = m_sifre;
        this.m_hesapno = m_hesapno;
        this.created = created;
    }

    public musteri(Long m_id, String m_ad, String m_soyad, String m_sifre, String m_hesapno, Timestamp created, Timestamp updated) {
        this.m_id = m_id;
        this.m_ad = m_ad;
        this.m_soyad = m_soyad;
        this.m_sifre = m_sifre;
        this.m_hesapno = m_hesapno;
        this.created = created;
        this.updated = updated;
    }
       public Long getM_id() {
        return m_id;
    }

    public void setM_id(Long m_id) {
        this.m_id = m_id;
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

    public String getM_hesapno() {
        return m_hesapno;
    }

    public void setM_hesapno(String m_hesapno) {
        this.m_hesapno = m_hesapno;
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
        return "musteri{" + "m_id=" + m_id + ", m_ad=" + m_ad + ", m_soyad=" + m_soyad + ", m_sifre=" + m_sifre + ", m_hesapno=" + m_hesapno + ", created=" + created + ", updated=" + updated + '}';
    }
    
    
    
    
    
}
