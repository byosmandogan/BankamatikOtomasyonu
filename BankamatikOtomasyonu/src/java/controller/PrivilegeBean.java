/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.PrivilegeDAO;
import entity.Privileges;
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
@Named(value = "privilegeBean")
@SessionScoped
public class PrivilegeBean implements Serializable {

    private Privileges entity;
    private PrivilegeDAO dao;
    private List<Privileges> list;


    /**
     * Creates a new instance of PrivilegesBean
     */
    public PrivilegeBean() {
    }

    public Privileges getEntity() {
        if (this.entity == null) {
            this.entity = new Privileges();
        }
        return entity;
    }

    public void setEntity(Privileges entity) {
        this.entity = entity;
    }

    public PrivilegeDAO getDao() {
        if (this.dao == null) {
            this.dao = new PrivilegeDAO();
        }
        return dao;
    }

    public void setDao(PrivilegeDAO dao) {
        this.dao = dao;
    }

    public List<Privileges> getList() {
//        this.list = this.getDao().getPrivilegesList();
//        for (int i = 0; i < this.list.size(); i++) {
//            System.out.println(this.list.get(i).getId());
//        }
        this.list=this.getDao().getPrivilegesList();
        return list;
    }

    public void setList(List<Privileges> list) {
        this.list = list;
    }

    public void create() {
        this.getDao().createPrivileges(entity);
        this.entity = new Privileges();
    }

    public void delete(Privileges c) {
        this.getDao().delete(entity);
        this.entity = new Privileges();
    }

    public void update() {
        this.getDao().update(entity);
        entity = new Privileges();
    }

    public void clear() {
        entity = new Privileges();
    }
}
