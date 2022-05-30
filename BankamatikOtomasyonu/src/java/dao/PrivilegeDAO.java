/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Privileges;
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
public class PrivilegeDAO extends DBConnection {

    private Connection db;
    private GroupDAO gdao;

    public PrivilegeDAO() {

    }
    
    public SystemGroup getById(Long id){
        SystemGroup sg =null;
        try{
            Statement st = this.getDb().createStatement();
            ResultSet rs = st.executeQuery("select * from systemgroup where id="+id);
            rs.next();
            sg = new SystemGroup(rs.getLong("id"), rs.getString("gname"), rs.getTimestamp("created"), rs.getTimestamp("updated"));
        }catch(Exception e){
            System.out.println(e.getMessage() );
        }
        return sg;
    }

    public void createPrivileges(Privileges c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "insert into privilege(sgroup,mname,icreate,iread,iupdate,idelete,ilist,irshow) values('" + c.getPgroup().getId()+ "','"+c.getMname()+"','" + c.isIcreate() + "','" + c.isIread() + "','" + c.isIupdate() + "','" + c.isIdelete() + "','" + c.isIlist() + "','" + c.isIrshow() + "')";
            int r = st.executeUpdate(query);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public void update(Privileges c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "update privilege set mname='" + c.getMname() + "' where id=" + c.getId();
            st.execute(query);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void delete(Privileges c) {
        try {

            Statement st = this.getDb().createStatement();
            String query = "delete from privilege where id=" + c.getId();
            int r = st.executeUpdate(query);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public List<Privileges> getPrivilegesList() {
        List<Privileges> privilegesList = new ArrayList<>();
        try {
            Statement st = this.getDb().createStatement();
            String query = "select * from privilege";

            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                SystemGroup g =this.getGdao().getById(rs.getLong("sgroup"));
                privilegesList.add(new Privileges(rs.getLong("id"),g, rs.getString("mname"), rs.getBoolean("icreate"), rs.getBoolean("iread"), rs.getBoolean("iupdate"), rs.getBoolean("idelete"), rs.getBoolean("ilist"), rs.getBoolean("irshow")));
            }

        } catch (Exception ex) { 
            System.out.println(ex.getMessage());
        }
        return privilegesList;
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
