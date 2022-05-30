/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.HesapDAO;
import entity.Hesap;
import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import jakarta.validation.constraints.NotBlank;
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

    @NotBlank private Hesap entity;
    @NotBlank private HesapDAO dao;
    @NotBlank private List<Hesap> list ;
    
    
    private int page=1;
    private int pageCount;
    
    /**
     * Creates a new instance of HesapBean
     */
    public HesapBean() {
    }


    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageCount() {
        List<Hesap> gList =this.getDao().getHesapList();
        int size= gList.size();
        pageCount =(int) Math.ceil(size/3);
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }
    
    public void previous(){
        page--;
        if(page<1){
            page= this.getPageCount();
        }
    }
    
    public void next(){
        page++;
        if(page>this.getPageCount()){
            page=1;
        }
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
        this.list= this.getDao().getHesapList(page);
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
