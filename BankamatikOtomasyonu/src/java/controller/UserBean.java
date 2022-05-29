/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.UsrDAO;
import entity.SystemUser;
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
@Named(value = "groupBean")
@SessionScoped
public class UserBean implements Serializable {

    private SystemUser entity;
    private UsrDAO dao;
    private List<SystemUser> list;


    /**
     * Creates a new instance of SystemUserBean
     */
    public UserBean() {
    }

    public SystemUser getEntity() {
        if (this.entity == null) {
            this.entity = new SystemUser();
        }
        return entity;
    }

    public void setEntity(SystemUser entity) {
        this.entity = entity;
    }

    public UsrDAO getDao() {
        if (this.dao == null) {
            this.dao = new UsrDAO();
        }
        return dao;
    }

    public void setDao(UsrDAO dao) {
        this.dao = dao;
    }

    public List<SystemUser> getList() {
        this.list=this.getDao().getSystemUserList();
        return list;
    }

    public void setList(List<SystemUser> list) {
        this.list = list;
    }

    public void create() {
        this.getDao().create(entity);
        this.entity = new SystemUser();
    }

    public void delete(SystemUser c) {
        this.getDao().delete(entity);
        this.entity = new SystemUser();
    }

    public void update() {
        this.getDao().update(entity);
        entity = new SystemUser();
    }

    public void clear() {
        entity = new SystemUser();
    }
}