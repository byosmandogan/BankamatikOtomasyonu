/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.guncelleDAO;
import entity.guncelle;
import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author Onur
 */
@Named(value = "guncelleBean")
@SessionScoped
public class guncelleBean implements Serializable {

    /**
     * Creates a new instance of guncelleBean
     */
    public guncelleBean() {
    }
    private guncelle entity;
    private guncelleDAO dao;
    private List<guncelle> list ;
    /**
     * Creates a new instance of PersonelBean
     */
   
    public guncelle getEntity() {
        if( this.entity == null){
            this.entity=new guncelle();
        }
        return entity;
    }

    public void setEntity(guncelle entity) {
        this.entity = entity;
    }

    public guncelleDAO getDao() {
        if (this.dao == null){
            this.dao=new guncelleDAO();
        }
        return dao;
    }

    public void setDao(guncelleDAO dao) {
        this.dao = dao;
    }

    public List<guncelle> getList() {
        this.list= this.getDao().getguncelleList();
        for (int i = 0; i < this.list.size(); i++) {
            System.out.println(this.list.get(i).getId());
        }
        return list;
        
    }

    public void setList(List<guncelle> list) {
        this.list = list;
    }
    public void create(){
        this.entity.setCreated(new Timestamp(System.currentTimeMillis()));
        this.getDao().createguncelle(entity);
        this.entity= new guncelle();
    }
    public void delete(guncelle c){
        this.getDao().delete(c);
    }
    public void update() {
        this.getDao().update(entity);
        entity = new guncelle();
    }
    public void clear() {
        entity = new guncelle();
    }
}
