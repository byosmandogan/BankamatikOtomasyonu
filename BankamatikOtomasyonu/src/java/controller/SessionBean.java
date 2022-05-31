/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.UserDAO;
import entity.SystemUser;
import jakarta.enterprise.context.SessionScoped;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Named;
import java.io.Serializable;

/**
 *
 * @author byosmandogan
 */
@Named
@SessionScoped
public class SessionBean implements Serializable {

    private String email;
    private String pass;

    private SystemUser user;
    private UserDAO udao;

    public String login() {
        SystemUser user = this.getUdao().getUser(this.email, this.pass);
        if (user != null) {
            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("user", user);
            return "/Panel/panel?faces-redirect-true" ;
        }else{
            FacesContext.getCurrentInstance().addMessage("email or password is incorrect", new FacesMessage("email or password is incorrect"));
            return "/index?faces-redirect-true" ;
        }
    }

    public SessionBean() {

    }

    public SystemUser getUser() {
        return user;
    }

    public void setUser(SystemUser user) {
        this.user = user;
    }

    public UserDAO getUdao() {
        if (this.udao == null) {
            this.udao = new UserDAO();
        }
        return udao;
    }

    public void setUdao(UserDAO udao) {
        this.udao = udao;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

}
