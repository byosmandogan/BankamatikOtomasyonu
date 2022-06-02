/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Converter;

import dao.GroupDAO;
import entity.SystemGroup;
import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.convert.Converter;
import jakarta.faces.convert.FacesConverter;

/**
 *
 * @author byosmandogan
 */
@FacesConverter(value = "musteriConverter")
public class MusteriConverter implements Converter {

    private GroupDAO mdao;

    @Override
    public Object getAsObject(FacesContext fc, UIComponent uic, String string) {
        long id = Long.valueOf(string);
        return this.getMdao().getById(id);
    }

    @Override
    public String getAsString(FacesContext fc, UIComponent uic, Object t) {
        SystemGroup sg = (SystemGroup) t;
        return String.valueOf(sg.getId());
    }

    public GroupDAO getMdao() {
        if (this.mdao == null) {
            this.mdao = new GroupDAO();
        }
        return mdao;
    }

    public void setGdao(GroupDAO mdao) {
        this.mdao = mdao;
    }

}
