/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.*;
import classes.DBConnector;
import java.sql.PreparedStatement;

/**
 *
 * @author Chalitha
 */
public class User {
    private int user_id;
    private String username;
    private String name;
    private String password;
    private String email;
    private String contact_number;
    private String role;

    public User(String username, String password) {

        this.username = username;
        this.password = password;

    }

    public User(String username, String name, String password, String email, String contact_number, String role) {

        this.username = username;
        this.name = name;
        this.password = password;
        this.email = email;
        this.contact_number = contact_number;
        this.role = role;
    }
   

    public String getUsername() {

        return username;
    }

    public String getName() {

        return name;
    }

    public String getPassword() {

        return password;
    }

    public String getEmail() {

        return email;
    }

    public String getContact_number() {

        return contact_number;
    }

    public String getRole() {

        return role;
    }

    public boolean register(Connection con) throws SQLException {
        String query = "INSERT INTO user (username,name,password,email,contact_number,role) VALUES (?,?,?,?,?,?)";

        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, username);
        pstmt.setString(2, name);
        pstmt.setString(3, password);
        pstmt.setString(4, email);
        pstmt.setString(5, contact_number);
        pstmt.setString(6, role);
        int a = pstmt.executeUpdate();

        return (a > 0);
    }

    public boolean authenticate(Connection con) throws SQLException {

        String query = "SELECT * FROM user WHERE username = ?";

        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, username);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            String db_password = rs.getString("password");

            if (password.equals(db_password)) {
                name = rs.getString("name");
                email = rs.getString("email");
                contact_number = rs.getString("contact_number");
                role = rs.getString("role");
                return true;
            } else {

                return false;
            }
        } else {
            return false;
        }

    }

    public boolean adminLog(Connection con) throws Exception {
        
        String sql = "SELECT * FROM admin WHERE username = ?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, username);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            String dbPass = rs.getString("password");
            if (dbPass.equals(password)) {
                return true;
            } else {
                return false;
            }
        }else{
            return false;
        }
    }
}
