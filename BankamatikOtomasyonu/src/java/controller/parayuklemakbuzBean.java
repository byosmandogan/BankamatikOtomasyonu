/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.parayuklemakbuzDAO;
import entity.parayuklemakbuz;
import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author bicer
 */
@Named(value = "parayuklemakbuzBean")
@SessionScoped
public class parayuklemakbuzBean implements Serializable {

    /**
     * Creates a new instance of parayuklemakbuzBean
     */
  
    private parayuklemakbuz entity;
    private parayuklemakbuzDAO dao;
    private List<parayuklemakbuz> list ;
    /**
     * Creates a new instance of parayuklemakbuzBean
     */
    public parayuklemakbuzBean() {
    }

    public parayuklemakbuz getEntity() {
        if( this.entity == null){
            this.entity=new parayuklemakbuz();
        }
        return entity;
    }

    public void setEntity(parayuklemakbuz entity) {
        this.entity = entity;
    }

    public parayuklemakbuzDAO getDao() {
        if (this.dao == null){
            this.dao=new parayuklemakbuzDAO();
        }
        return dao;
    }

    public void setDao(parayuklemakbuzDAO dao) {
        this.dao = dao;
    }

    public List<parayuklemakbuz> getList() {
        this.list= this.getDao().getparayuklemakbuzList();
        for (int i = 0; i < this.list.size(); i++) {
            System.out.println(this.list.get(i).getId());
        }
        return list;
    }

    public void setList(List<parayuklemakbuz> list) {
        this.list = list;
    }

    public void create(){
        this.entity.setCreated(new Timestamp(System.currentTimeMillis()));
        this.getDao().createparayuklemakbuz(entity);
        this.entity= new parayuklemakbuz();
    }
    public void delete(parayuklemakbuz c){
        this.getDao().delete(c);
    }
    public void update() {
        this.getDao().update(entity);
        entity = new parayuklemakbuz();
    }
    public void clear() {
        entity = new parayuklemakbuz();
    }
}
