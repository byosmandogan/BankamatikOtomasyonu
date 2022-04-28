/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Timestamp;

/**
 *
 * @author bicer
 */
public class parayukle {
    private Long id;
    private String hesapno;
    private Double bakiye;
    private Double eklenen_miktar;
    private Double guncel_bakiye;
    private Timestamp created;
    private Timestamp updated;

    public parayukle() {
    }

    public parayukle(Long id, String hesapno, Double bakiye, Double eklenen_miktar, Double guncel_bakiye, Timestamp created) {
        this.id = id;
        this.hesapno = hesapno;
        this.bakiye = bakiye;
        this.eklenen_miktar = eklenen_miktar;
        this.guncel_bakiye = guncel_bakiye;
        this.created = created;
    }

    public parayukle(Long id, String hesapno, Double bakiye, Double eklenen_miktar, Double guncel_bakiye, Timestamp created, Timestamp updated) {
        this.id = id;
        this.hesapno = hesapno;
        this.bakiye = bakiye;
        this.eklenen_miktar = eklenen_miktar;
        this.guncel_bakiye = guncel_bakiye;
        this.created = created;
        this.updated = updated;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHesapno() {
        return hesapno;
    }

    public void setHesapno(String hesapno) {
        this.hesapno = hesapno;
    }

    public Double getBakiye() {
        return bakiye;
    }

    public void setBakiye(Double bakiye) {
        this.bakiye = bakiye;
    }

    public Double getEklenen_miktar() {
        return eklenen_miktar;
    }

    public void setEklenen_miktar(Double eklenen_miktar) {
        this.eklenen_miktar = eklenen_miktar;
    }

    public Double getGuncel_bakiye() {
        return guncel_bakiye;
    }

    public void setGuncel_bakiye(Double guncel_bakiye) {
        this.guncel_bakiye = guncel_bakiye;
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
        return "parayukle{" + "id=" + id + ", hesapno=" + hesapno + ", bakiye=" + bakiye + ", eklenen_miktar=" + eklenen_miktar + ", guncel_bakiye=" + guncel_bakiye + ", created=" + created + ", updated=" + updated + '}';
    }
    
    
    
}
