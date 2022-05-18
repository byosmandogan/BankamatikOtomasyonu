/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.musteri;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import util.DBConnection;


/**
 *
 * @author Onur
 */
public class musteriDAO extends DBConnection {
    private Connection db;
     public void createmusteri(musteri c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "insert into musteri (m_ad,m_soyad,m_sifre,m_hesapno,created) values('"+c.getM_ad()+"','"+c.getM_soyad()+"','"+c.getM_sifre()+"','"+c.getM_hesapno()+"','"+c.getCreated()+"')";
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public void delete(musteri c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "delete from musteri where id="+c.getM_id();
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public List<musteri> getmusteriList(int page,int pageSize){
        List<musteri> musteriList =new ArrayList<>();
        int start = (page-1)*pageSize;
        try {
            Statement st = this.getDb().createStatement();
            String query ="select * from musteri order by m_id asc limit "+start+"offset "+pageSize;
            
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                System.out.println(rs.getLong("m_id"));
                musteriList.add(new musteri(rs.getLong("m_id"),rs.getString("m_ad"),rs.getString("m_soyad"),rs.getString("m_sifre"),rs.getString("m_hesapno"),rs.getTimestamp("created"),rs.getTimestamp("updated")));
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return musteriList;
    }
        public int count(){
        int count=0;
        try {
            Statement st = this.getDb().createStatement();
            String query ="select count(m_id) as musteri_count from musteri";
            
            ResultSet rs = st.executeQuery(query);
            rs.next();
            count= rs.getInt("musteri_count");
            while(rs.next()){
                
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return count;
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
    public void update(musteri c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "update musteri set m_sifre='" + c.getM_sifre()+ "' where m_id=" + c.getM_id();
            st.execute(query);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
