/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.paraCekme;
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
public class paraCekmeDAO extends DBConnection {

    private Connection db;

    public void createparaCekme(paraCekme c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "insert into paracek (hesap_no,bakiye,cekilen_miktar,guncel_miktar) values('" + c.getHesap_no() + "','" + c.getBakiye() + "','" + c.getCekilen_miktar() + "','" + c.getGuncel_miktar() + "','" + c.getCreated() + "','" + c.getUpdated() + "')";
            int r = st.executeUpdate(query);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public void delete(paraCekme c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "delete from paracek where h_id=" + c.getId();
            int r = st.executeUpdate(query);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public List<paraCekme> getparaCekmeList() {
        List<paraCekme> paraCekmeList = new ArrayList<>();
        try {
            Statement st = this.getDb().createStatement();
            String query = "select * from paracek";

            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                System.out.println(rs.getLong("id"));
                paraCekmeList.add(new paraCekme(rs.getLong("id"), rs.getString("hesap_no"), rs.getDouble("bakiye"), rs.getDouble("cekilen_miktar"), rs.getDouble("guncel_bakiye"), rs.getTimestamp("created"), rs.getTimestamp("updated")));
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return paraCekmeList;
    }

    public Connection getDb() {
        if(this.db==null){
            this.db=this.connect();
        }
        return db;
    }

    public void setDb(java.sql.Connection db) {
        this.db = db;
    }

}
