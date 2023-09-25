/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.DBContext;
import Model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author mihxdat
 */
public class AccountDAO extends DBContext {

    public Account login(String email, String password) {
        String query = "select * from Account\n"
                + "where [email] = ?\n"
                + "and password = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account account = Account.builder()
                        .id(rs.getInt(1))
                        .email(rs.getString(2))
                        .password(rs.getString(3))
                        .fullname(rs.getString(4))
                        .avatar(rs.getString(5))
                        .mobile(rs.getString(6))
                        .gender(rs.getBoolean(7))
                        .address(rs.getString(8))
                        .status(rs.getInt(9))
                        .created_at(rs.getDate(10))
                        .updated_at(rs.getDate(11))
                        .build();
                return account;
            }
        } catch (Exception e) {
        }
        return null;

    }
}
