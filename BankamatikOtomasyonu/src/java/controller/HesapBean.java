/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.HesapDAO;
import entity.Hesap;
import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author byosmandogan
 */
@Named(value = "hesapBean")
@SessionScoped
public class HesapBean implements Serializable {

    private Hesap entity;
    private HesapDAO dao;
    private List<Hesap> list ;
    /**
     * Creates a new instance of HesapBean
     */
    public HesapBean() {
    }

    public Hesap getEntity() {
        if( this.entity == null){
            this.entity=new Hesap();
        }
        return entity;
    }

    public void setEntity(Hesap entity) {
        this.entity = entity;
    }

    public HesapDAO getDao() {
        if (this.dao == null){
            this.dao=new HesapDAO();
        }
        return dao;
    }

    public void setDao(HesapDAO dao) {
        this.dao = dao;
    }

    public List<Hesap> getList() {
        this.list= this.getDao().getHesapList();
        System.out.println("list ....");
        for (int i = 0; i < this.list.size(); i++) {
            System.out.println(this.list.get(i).getId());
        }
        return list;
    }

    public void setList(List<Hesap> list) {
        this.list = list;
    }

    public void create(){
        this.entity.setCreated(new Timestamp(System.currentTimeMillis()));
        this.getDao().createHesap(entity);
        this.entity= new Hesap();
    }
    public void delete(Hesap c){
        this.getDao().delete(c);
    }
    public void update() {
        this.getDao().update(entity);
        entity = new Hesap();
    }
    public void clear() {
        entity = new Hesap();
    }
}
