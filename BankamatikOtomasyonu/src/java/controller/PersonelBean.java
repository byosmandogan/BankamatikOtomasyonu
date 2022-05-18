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
    
    private int page=2;
    private int pageSize=2;
    private int pageCount;
    /**
     * Creates a new instance of PersonelBean
     */
    public PersonelBean() {
    }
    
    public void next(){
        if(this.page==this.getPageCount())
            this.page=2;
        else
            this.page++;
    }
    public void previous(){
        if(this.page==2)
            this.page =this.getPageCount();
        else
            this.page--;
    }
    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount= (int) Math.ceil(this.getDao().count()/(double)pageSize);
        this.pageCount = pageCount;
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
        this.list= this.getDao().getPersonelList(page,pageSize);
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
