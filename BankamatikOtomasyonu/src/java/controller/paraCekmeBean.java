/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.paraCekmeDAO;
import entity.paraCekme;
import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author byosmandogan
 */
@Named(value = "paraCekmeBean")
@SessionScoped
public class paraCekmeBean implements Serializable {

    /**
     * Creates a new instance of paraCekmeBean
     */
    public paraCekmeBean() {
    }
    private paraCekme entity;
    private paraCekmeDAO dao;
    private List<paraCekme> list ;
    /**
     * Creates a new instance of paraCekmeBean
     */
    

    public paraCekme getEntity() {
        if( this.entity == null){
            this.entity=new paraCekme();
        }
        return entity;
    }

    public void setEntity(paraCekme entity) {
        this.entity = entity;
    }

    public paraCekmeDAO getDao() {
        if (this.dao == null){
            this.dao=new paraCekmeDAO();
        }
        return dao;
    }

    public void setDao(paraCekmeDAO dao) {
        this.dao = dao;
    }

    public List<paraCekme> getList() {
        this.list= this.getDao().getparaCekmeList();
        for (int i = 0; i < this.list.size(); i++) {
            System.out.println(this.list.get(i).getId());
        }
        return list;
        
    }

    public void setList(List<paraCekme> list) {
        this.list = list;
    }
}
