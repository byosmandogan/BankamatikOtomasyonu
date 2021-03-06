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
public class parayuklemakbuz {
    private Long id;
    private Double bakiye;
    private Double eklenen_para;
    private Double guncel_bakiye;
    private Timestamp created;
    private Timestamp updated;
    
    public parayuklemakbuz() {
    }

    public parayuklemakbuz(Long id, Double bakiye, Double eklenen_para, Double guncel_bakiye, Timestamp created) {
        this.id = id;
        this.bakiye = bakiye;
        this.eklenen_para = eklenen_para;
        this.guncel_bakiye = guncel_bakiye;
        this.created = created;
    }

    public parayuklemakbuz(Long id, Double bakiye, Double eklenen_para, Double guncel_bakiye, Timestamp created, Timestamp updated) {
        this.id = id;
        this.bakiye = bakiye;
        this.eklenen_para = eklenen_para;
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

    public Double getBakiye() {
        return bakiye;
    }

    public void setBakiye(Double bakiye) {
        this.bakiye = bakiye;
    }

    public Double getEklenen_para() {
        return eklenen_para;
    }

    public void setEklenen_para(Double eklenen_para) {
        this.eklenen_para = eklenen_para;
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
    
    
}
