/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.guncelle;
import java.sql.Statement;
import util.DBConnection;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;

/**
 *
 * @author Onur
 */
public class guncelleDAO extends DBConnection{
    private Connection db;
    public void createguncelle(guncelle c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "insert into guncelle (m_ad,m_soyad,m_sifre,p_hesapno,created) values('"+c.getM_ad()+"','"+c.getM_soyad()+"','"+c.getM_sifre()+"','"+c.getP_hesap_no()+"','"+c.getCreated()+"')";
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public void delete(guncelle c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "delete from guncelle where id="+c.getId();
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public void update(guncelle c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "update guncelle set m_sifre='" + c.getM_sifre()+ "' where id=" + c.getId();
            st.execute(query);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public List<guncelle> getguncelleList(){
        List<guncelle> guncelleList =new ArrayList<>();
        try {
            Statement st = this.getDb().createStatement();
            String query ="select * from guncelle";
            
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                System.out.println(rs.getLong("id"));
                guncelleList.add(new guncelle(rs.getLong("id"),rs.getString("p_hesapno"),rs.getString("m_ad"),rs.getString("m_soyad"),rs.getString("m_sifre"),rs.getTimestamp("created"),rs.getTimestamp("updated")));
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return guncelleList;
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
