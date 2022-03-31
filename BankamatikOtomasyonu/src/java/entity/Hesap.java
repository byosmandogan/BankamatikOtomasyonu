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
public class Hesap {
    private Long h_id;
    private String hesapno;
    private Double bakiye;
    private Timestamp created;
    private Timestamp updated;

    public Hesap() {
    }

    public Hesap(Long h_id, String hesapno, Double bakiye, Timestamp created) {
        this.h_id = h_id;
        this.hesapno = hesapno;
        this.bakiye = bakiye;
        this.created = created;
    }

    public Hesap(Long h_id, String hesapno, Double bakiye, Timestamp created, Timestamp updated) {
        this.h_id = h_id;
        this.hesapno = hesapno;
        this.bakiye = bakiye;
        this.created = created;
        this.updated = updated;
    }

    public Long getH_id() {
        return h_id;
    }

    public void setH_id(Long h_id) {
        this.h_id = h_id;
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
        return "Hesap{" + "h_id=" + h_id + ", hesapno=" + hesapno + ", bakiye=" + bakiye + ", created=" + created + ", updated=" + updated + '}';
    }
    
    
    
    
}
