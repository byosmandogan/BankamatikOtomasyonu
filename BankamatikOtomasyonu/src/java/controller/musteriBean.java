/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.musteriDAO;
import entity.musteri;
import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author Onur
 */
@Named(value = "musteriBean")
@SessionScoped
public class musteriBean implements Serializable {
    private musteri entity;
    private musteriDAO dao;
    private List<musteri> list ;
    /**
     * Creates a new instance of musteriBean
     */
    public musteriBean() {
    }
    
    public musteri getEntity() {
        if( this.entity == null){
            this.entity=new musteri();
        }
        return entity;
    }

    public void setEntity(musteri entity) {
        this.entity = entity;
    }

    public musteriDAO getDao() {
        if (this.dao == null){
            this.dao=new musteriDAO();
        }
        return dao;
    }

    public void setDao(musteriDAO dao) {
        this.dao = dao;
    }

    public List<musteri> getList() {
        this.list= this.getDao().getmusteriList();
        for (int i = 0; i < this.list.size(); i++) {
            System.out.println(this.list.get(i).getM_id());
                    }
        return list;
        
    }

    public void setList(List<musteri> list) {
        this.list = list;
    }
    
    
}
