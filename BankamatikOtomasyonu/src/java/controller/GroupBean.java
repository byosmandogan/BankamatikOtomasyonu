/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.GroupDAO;
import entity.SystemGroup;
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
public class GroupBean implements Serializable {

    private SystemGroup entity;
    private GroupDAO dao;
    private List<SystemGroup> list;
    



    /**
     * Creates a new instance of SystemGroupBean
     */
    public GroupBean() {
    }

    public SystemGroup getEntity() {
        if (this.entity == null) {
            this.entity = new SystemGroup();
        }
        return entity;
    }

    public void setEntity(SystemGroup entity) {
        this.entity = entity;
    }

    public GroupDAO getDao() {
        if (this.dao == null) {
            this.dao = new GroupDAO();
        }
        return dao;
    }

    public void setDao(GroupDAO dao) {
        this.dao = dao;
    }

    public List<SystemGroup> getList() {
//        this.list = this.getDao().getSystemGroupList();
//        for (int i = 0; i < this.list.size(); i++) {
//            System.out.println(this.list.get(i).getId());
//        }
        this.list=this.getDao().getSystemGroupList();
        return list;
    }

    public void setList(List<SystemGroup> list) {
        this.list = list;
    }

    public void create() {
        this.getDao().createSystemGroup(entity);
        this.entity = new SystemGroup();
    }

    public void delete(SystemGroup c) {
        this.getDao().delete(c);
    }

    public void update() {
        this.getDao().update(entity);
        entity = new SystemGroup();
    }

    public void clear() {
        entity = new SystemGroup();
    }
}
