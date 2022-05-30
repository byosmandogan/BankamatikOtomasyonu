/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dao.GroupDAO;
import entity.SystemGroup;
import entity.SystemUser;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author byosmandogan
 */
public class UserDAO {

    private Connection db;
    private GroupDAO gdao;
    
    
    public void createSystemUser(SystemUser c) {
        try {
            Statement st = this.getDb().createStatement();
            String query = "insert into systemuser(ugroup,email,pass) values('" +c.getGroup()+ "','" +c.getEmail()+ "','" +c.getPass()+ "')";
            int r = st.executeUpdate(query);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());

        }

    }

    public void update(SystemUser c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "update systemuser set pass='"+c.getPass()+"', ugroup="+c.getGroup().getId()+" where id="+c.getId();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void delete(SystemUser c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "delete from systemuser where id= " +c.getId();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public List<SystemUser> getSystemUserList() {
        List<SystemUser> systemgroupList = new ArrayList<>();
        try{
            Statement st = this.getDb().createStatement();
            String query = "select * from systemuser ";
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                SystemGroup g = this.getGdao().getById(rs.getLong("ugroup"));
                systemgroupList.add(new SystemUser(rs.getLong("id"), g, rs.getString("email"), rs.getString("pass")));
            }
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        
        return systemgroupList;
    }

    public UserDAO() {
    }


    public UserDAO(Connection db, GroupDAO gdao) {
        this.db = db;
        this.gdao = gdao;
    }

    public Connection getDb() {
        return db;
    }

    public void setDb(Connection db) {
        this.db = db;
    }

    public GroupDAO getGdao() {
        return gdao;
    }

    public void setGdao(GroupDAO gdao) {
        this.gdao = gdao;
    }

}
