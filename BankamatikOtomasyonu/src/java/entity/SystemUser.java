/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;

/**
 *
 * @author byosmandogan
 */
public class SystemUser implements Serializable{
    private Long id;
    private String email;
    private String pass;
    private SystemGroup group;

    public SystemUser() {
    }

    public SystemUser(Long id, SystemGroup group, String email, String pass) {
        this.id = id;
        this.group = group;
        this.email = email;
        this.pass = pass;
        
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public SystemGroup getGroup() {
        return group;
    }

    public void setGroup(SystemGroup group) {
        this.group = group;
    }
    
}
