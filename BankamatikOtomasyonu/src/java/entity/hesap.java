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
public class hesap {
    private Long id;
    private Integer hesapno;
    private Double bakiye;
    private Timestamp created;
    private Timestamp updated;
    
    public hesap() {
    }

    public hesap(Long id, Integer hesapno, Double bakiye, Timestamp created, Timestamp updated) {
        this.id = id;
        this.hesapno = hesapno;
        this.bakiye = bakiye;
        this.created = created;
        this.updated = updated;
    }

    public hesap(Integer hesapno, Double bakiye, Timestamp created) {
        
        this.hesapno = hesapno;
        this.bakiye = bakiye;
        this.created = created;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getHesapno() {
        return hesapno;
    }

    public void setHesapno(Integer hesapno) {
        this.hesapno = hesapno;
    }

    public Double getBakiye() {
        return bakiye;
    }

    public void setBakiye(Double bakiye) {
        this.bakiye = bakiye;
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
        return "hesap{" + "id=" + id + ", hesapno=" + hesapno + ", bakiye=" + bakiye + ", created=" + created + ", updated=" + updated + '}';
    }
    
    
}
