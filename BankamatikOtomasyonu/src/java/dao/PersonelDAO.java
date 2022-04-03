/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Personel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import util.DBConnection;

/**
 *
 * @author byosmandogan
 */
public class PersonelDAO extends DBConnection {
    private Connection db;
    public void createPersonel(Personel c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "insert into personel (p_ad,p_soyad,p_yas,p_hesapno,p_sifre) values('"+c.getP_ad()+"','"+c.getP_soyad()+"','"+c.getP_yas()+"','"+c.getP_hesapno()+"','"+c.getSifre()+"','"+c.getCreated()+"','"+c.getUpdated()+"')";
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public void delete(Personel c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "delete from personel where h_id="+c.getId();
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public List<Personel> getPersonelList(){
        List<Personel> personelList =new ArrayList<>();
        try {
            Statement st = this.getDb().createStatement();
            String query ="select * from personel";
            
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                System.out.println(rs.getLong("h_id"));
                personelList.add(new Personel(rs.getLong("id"),rs.getString("p_adi"),rs.getString("Soyadı"),rs.getInt("yaş"),rs.getString("hesapno"),rs.getString("Sifre"),rs.getTimestamp("Created"),rs.getTimestamp("Updated")));
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return personelList;
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