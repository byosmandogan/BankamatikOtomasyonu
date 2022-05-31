/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Mustafa
 */
public abstract class DBConnection2 {

    private Connection connection;

    public Connection getConnection() {
        if (this.connection == null) {

            try {
                Class.forName("org.postgresql.Driver");
                this.connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/BankamatikOtomasyonu", "postgres", "12345");

            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }
        }
        return connection;

    }

}
