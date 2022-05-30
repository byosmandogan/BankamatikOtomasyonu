/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.HesapDAO;
import dao.PersonelDAO;
import entity.Personel;
import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author byosmandogan
 */
@Named(value = "personelBean")
@SessionScoped
public class PersonelBean implements Serializable {
    private Personel entity;
    private PersonelDAO dao;
    private List<Personel> list ;
    
    private int page=1;
    private int pageCount;

    /**
     * Creates a new instance of PersonelBean
     */
    public PersonelBean() {
    }
    
        public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageCount() {
        List<Personel> gList =this.getDao().getPersonelList();
        int size= gList.size();
        pageCount =(int) Math.ceil(size-3);
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

    public Personel getEntity() {
        if( this.entity == null){
            this.entity=new Personel();
        }
        return entity;
    }

    public void setEntity(Personel entity) {
        this.entity = entity;
    }

    public PersonelDAO getDao() {
        if (this.dao == null){
            this.dao=new PersonelDAO();
        }
        return dao;
    }

    public void setDao(PersonelDAO dao) {
        this.dao = dao;
    }

    public List<Personel> getList() {
        this.list= this.getDao().getPersonelList(page);
        for (int i = 0; i < this.list.size(); i++) {
            System.out.println(this.list.get(i).getP_id());
        }
        return list;

    }

    public void setList(List<Personel> list) {
        this.list = list;
    }
    
    public void create(){
        this.entity.setCreated(new Timestamp(System.currentTimeMillis()));
        this.getDao().createPersonel(entity);
        this.entity= new Personel();
    }
    public void delete(Personel c){
        this.getDao().delete(c);
    }
    public void update() {
        this.getDao().update(entity);
        entity = new Personel();
    }
    public void clear() {
        entity = new Personel();
    }
}
