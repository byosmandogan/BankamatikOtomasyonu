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
public class paraCekme {
    private Long id;
    private String hesap_no;
    private Double bakiye;
    private Double cekilen_miktar;
    private Double guncel_miktar;
    private Timestamp created;
    private Timestamp updated;

    public paraCekme() {
    }

    public paraCekme(Long id, String hesap_no, Double bakiye, Double cekilen_miktar, Double guncel_miktar, Timestamp created) {
        this.id = id;
        this.hesap_no = hesap_no;
        this.bakiye = bakiye;
        this.cekilen_miktar = cekilen_miktar;
        this.guncel_miktar = guncel_miktar;
        this.created = created;
    }

    public paraCekme(Long id, String hesap_no, Double bakiye, Double cekilen_miktar, Double guncel_miktar, Timestamp created, Timestamp updated) {
        this.id = id;
        this.hesap_no = hesap_no;
        this.bakiye = bakiye;
        this.cekilen_miktar = cekilen_miktar;
        this.guncel_miktar = guncel_miktar;
        this.created = created;
        this.updated = updated;
    }

    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHesap_no() {
        return hesap_no;
    }

    public void setHesap_no(String hesap_no) {
        this.hesap_no = hesap_no;
    }

    public Double getBakiye() {
        return bakiye;
    }

    public void setBakiye(Double bakiye) {
        this.bakiye = bakiye;
    }

    public Double getCekilen_miktar() {
        return cekilen_miktar;
    }

    public void setCekilen_miktar(Double cekilen_miktar) {
        this.cekilen_miktar = cekilen_miktar;
    }

    public Double getGuncel_miktar() {
        return guncel_miktar;
    }

    public void setGuncel_miktar(Double guncel_miktar) {
        this.guncel_miktar = guncel_miktar;
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
        return "paraCekme{" + "id=" + id + ", hesap_no=" + hesap_no + ", bakiye=" + bakiye + ", cekilen_miktar=" + cekilen_miktar + ", guncel_miktar=" + guncel_miktar + ", created=" + created + ", updated=" + updated + '}';
    }
    
    
}
