
package dao;

import entity.parayuklemakbuz;
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
public class parayuklemakbuzDAO extends DBConnection {
    private Connection db;
    
    public void createparayuklemakbuz(parayuklemakbuz c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "insert into parayuklemakbuz (bakiye,eklenen_para,guncel_bakiye,created) values('"+c.getBakiye()+"','"+c.getEklenen_para()+"','"+c.getGuncel_bakiye()+"','"+c.getCreated()+"')";
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public void delete(parayuklemakbuz c){
        try {
            
            Statement st = this.getDb().createStatement();
            String query = "delete from parayuklemakbuz where id="+c.getId();
            int r =st.executeUpdate(query);
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public List<parayuklemakbuz> getparayuklemakbuzList(){
        List<parayuklemakbuz> parayuklemakbuzList =new ArrayList<>();
        try {
            Statement st = this.getDb().createStatement();
            String query ="select * from parayuklemakbuz";
            
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                System.out.println(rs.getLong("id"));
                parayuklemakbuzList.add(new parayuklemakbuz(rs.getLong("id"),rs.getDouble("bakiye"),rs.getDouble("eklenen_para"),rs.getDouble("guncel_bakiye"),rs.getTimestamp("created"),rs.getTimestamp("updated")));
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return parayuklemakbuzList;
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

    public void update(parayuklemakbuz c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "update parayuklemakbuz set eklenen_para='" + c.getEklenen_para()+ "' where id=" + c.getId();
            st.execute(query);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    
}

