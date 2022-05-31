/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.SystemGroup;
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
public class GroupDAO extends DBConnection {

    private Connection db;

    public GroupDAO() {
    }

    public SystemGroup getById(Long id) {
        SystemGroup sg = null;
        try {
            Statement st = this.getDb().createStatement();
            ResultSet rs = st.executeQuery("select * from systemgroup where id= " + id);
            rs.next();
            sg = new SystemGroup(rs.getLong("id"), rs.getString("gname"), rs.getTimestamp("created"), rs.getTimestamp("updated"));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return sg;
    }

    public List<SystemGroup> getSystemGroupList() {
        List<SystemGroup> systemgroupList = new ArrayList<>();
        try {
            Statement st = this.getDb().createStatement();
            String query = "select * from systemgroup";

            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                System.out.println(rs.getLong("id"));
                systemgroupList.add(new SystemGroup(rs.getLong("id"), rs.getString("gname"), rs.getTimestamp("created"), rs.getTimestamp("updated")));
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return systemgroupList;
    }

    public void createSystemGroup(SystemGroup c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "insert into systemgroup(gname) values('" + c.getGname() + "')";
            int r = st.executeUpdate(query);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public void update(SystemGroup c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "update systemgroup set gname= " + c.getGname() + " where id= " + c.getId();
            st.execute(query);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void delete(SystemGroup c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "delete from systemgroup where id= " + c.getId();
            int r = st.executeUpdate(query);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
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

}
