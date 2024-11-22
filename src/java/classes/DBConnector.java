/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import java.sql.*;
/**
 *
 * @author Chalitha
 */
public class DBConnector {

    final static String URL = "jdbc:mysql://localhost:3306/todo";
    final static String DB_USER = "root";
    final static String DB_PW = "";
    final static String DRIVER = "com.mysql.jdbc.Driver";

    public static Connection getConnection() throws Exception {
        Class.forName(DRIVER);
        Connection con = DriverManager.getConnection(URL, DB_USER, DB_PW);
        return con;
    }
}
