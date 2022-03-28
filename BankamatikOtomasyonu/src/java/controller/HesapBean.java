/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import java.io.Serializable;

/**
 *
 * @author byosmandogan
 */
@Named(value = "hesapBean")
@SessionScoped
public class HesapBean implements Serializable {

    /**
     * Creates a new instance of HesapBean
     */
    public HesapBean() {
    }
    
}
