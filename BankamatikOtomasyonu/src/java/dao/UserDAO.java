/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.SystemGroup;
import entity.SystemUser;
import util.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author byosmandogan
 */
public class UserDAO extends DBConnection {

    private Connection db;
    private GroupDAO gdao;
    public void create(SystemUser c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "insert into systemuser(email,pass,ugroup) values('"+c.getEmail()+"','"+c.getPass()+"','"+c.getGroup().getId()+"')";
            int r = st.executeUpdate(query);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public void update(SystemUser c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "update systemuser set pass='" + c.getPass()+ "', ugroup="+c.getGroup().getId()+" where id=" + c.getId();
            st.execute(query);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void delete(SystemUser c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "delete from systemuser where id=" + c.getId();
            int r = st.executeUpdate(query);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public List<SystemUser> getSystemUserList() {
        List<SystemUser> systemgroupList = new ArrayList<>();
        try {
            Statement st = this.getDb().createStatement();
            String query = "select * from systemgroup";

            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                SystemGroup g= this.getGdao().getById(rs.getLong("ugroup")); 
                systemgroupList.add(new SystemUser(rs.getLong("id"), rs.getString("email") , rs.getString("pass"), g));
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return systemgroupList;
    }

    public Connection getDb() {
        if (this.db == null) {
            this.db = this.connect();
        }
        return db;
    }

    public void setDb(Connection db) {
        this.db = db;
    }

    public GroupDAO getGdao() {
        if(this.gdao==null){
            this.gdao =new GroupDAO();
        }
        return gdao;
    }

    public void setGdao(GroupDAO gdao) {
        this.gdao = gdao;
    }

}
