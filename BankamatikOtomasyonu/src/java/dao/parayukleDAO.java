package dao;

import entity.parayukle;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import util.DBConnection;
import java.sql.ResultSet;
import java.sql.Connection;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author bicer
 */
public class parayukleDAO extends DBConnection {
    private Connection db;
    
    public void createparayukle(parayukle c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "insert into parayukle (hesapno,bakiye,eklenen_miktar,guncel_bakiye,created) values('"+c.getHesapno()+"','"+c.getBakiye()+"','"+c.getEklenen_miktar()+"','"+c.getGuncel_bakiye()+"','"+c.getCreated()+"')";
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public void delete(parayukle c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "delete from parayukle where id="+c.getId();
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public List<parayukle> getparayukleList(){
        List<parayukle> parayukleList =new ArrayList<>();
        try {
            Statement st = this.getDb().createStatement();
            String query ="select * from parayukle";
            
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                System.out.println(rs.getLong("id"));
                parayukleList.add(new parayukle(rs.getLong("id"),rs.getString("hesapno"),rs.getDouble("bakiye"),rs.getDouble("eklenen_miktar"),rs.getDouble("guncel_bakiye"),rs.getTimestamp("created"),rs.getTimestamp("updated")));
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return parayukleList;
    }

    public Connection getDb() {
        if(this.db==null){
            this.db=this.connect();
        }
        return db;
    }

    public void setDb(Connection db) {
        this.db = db;
    }

    public void update(parayukle c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "update parayukle set eklenen_miktar='" + c.getEklenen_miktar()+ "' where id=" + c.getId();
            st.execute(query);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    
}
