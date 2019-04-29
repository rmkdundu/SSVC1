/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author genuine
 */
public class dbcon {
    Connection conn=null;
    Statement st=null;
    public Connection getc() throws ClassNotFoundException, SQLException
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nvss","root","");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return conn;
    }
    
}
