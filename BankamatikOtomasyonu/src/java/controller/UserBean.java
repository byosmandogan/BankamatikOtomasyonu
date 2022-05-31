package controller;

import dao.UserDAO;
import entity.SystemUser;
import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;

@Named(value="userBean")
@SessionScoped

public class UserBean implements Serializable {

    private SystemUser entity;
    private UserDAO dao;
    private List<SystemUser> list;

    public void clearForm() {
        this.entity = new SystemUser();
    }

    public void create() {
        this.getDao().create(entity);
        this.entity = new SystemUser();
    }

    public void update() {
        this.getDao().update(entity);
        this.entity = new SystemUser();
    }

    public void delete(SystemUser c) {
        this.getDao().delete(c);
        this.entity = new SystemUser();
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

    public UserDAO getDao() {
        if (this.dao == null) {
            this.dao = new UserDAO();
        }
        return dao;
    }

    public void setDao(UserDAO dao) {
        this.dao = dao;
    }

    public List<SystemUser> getList() {
        this.list = this.getDao().readList();
        return list;
    }

    public void setList(List<SystemUser> list) {
        this.list = list;
    }

}
