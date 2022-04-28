/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.parayukleDAO;
import entity.parayukle;
import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author bicer
 */
@Named(value = "parayukleBean")
@SessionScoped
public class parayukleBean implements Serializable {

    /**
     * Creates a new instance of parayukleBean
     */
  
    private parayukle entity;
    private parayukleDAO dao;
    private List<parayukle> list ;
    /**
     * Creates a new instance of parayukleBean
     */
    public parayukleBean() {
    }

    public parayukle getEntity() {
        if( this.entity == null){
            this.entity=new parayukle();
        }
        return entity;
    }

    public void setEntity(parayukle entity) {
        this.entity = entity;
    }

    public parayukleDAO getDao() {
        if (this.dao == null){
            this.dao=new parayukleDAO();
        }
        return dao;
    }

    public void setDao(parayukleDAO dao) {
        this.dao = dao;
    }

    public List<parayukle> getList() {
        this.list= this.getDao().getparayukleList();
        for (int i = 0; i < this.list.size(); i++) {
            System.out.println(this.list.get(i).getId());
        }
        return list;
    }

    public void setList(List<parayukle> list) {
        this.list = list;
    }

    public void create(){
        this.entity.setCreated(new Timestamp(System.currentTimeMillis()));
        this.getDao().createparayukle(entity);
        this.entity= new parayukle();
    }
    public void delete(parayukle c){
        this.getDao().delete(c);
    }
    public void update() {
        this.getDao().update(entity);
        entity = new parayukle();
    }
    public void clear() {
        entity = new parayukle();
    }
}
