/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Hesap;
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
public class HesapDAO extends DBConnection{
    private Connection db;
    
    public void createHesap(Hesap c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "insert into hesap (created,hesapno,bakiye) values('"+c.getCreated()+"','"+c.getHesapno()+"','"+c.getBakiye()+"')";
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public void delete(Hesap c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "delete from hesap where id="+c.getId();
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public List<Hesap> getHesapList(){
        List<Hesap> hesapList =new ArrayList<>();
        try {
            Statement st = this.getDb().createStatement();
            String query ="select*from hesap";
            
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                hesapList.add(new Hesap(rs.getLong("h_id"),rs.getInt("hesapno"),rs.getDouble("bakiye"),rs.getTimestamp("created"),rs.getTimestamp("updated")));
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return hesapList;
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
    
}
