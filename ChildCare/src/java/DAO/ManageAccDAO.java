/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import java.sql.*;
import java.util.*;

/**
 *
 * @author mihxdat
 */
public class ManageAccDAO {

    Connection conn = DBContext.Dat_DBContext.CreateConnection();

    public Account getAccountByLogin(String email, String pass) {
        Account acc = new Account();
        String sql = "select * from account where email = ? and [password] = ?";
        try {
            PreparedStatement ptmt = conn.prepareStatement(sql);
            ptmt.setString(1, email);
            ptmt.setString(2, pass);
            ResultSet rs = ptmt.executeQuery();
            if (rs.next()) {
                acc.setId(rs.getInt("id"));
                acc.setEmail(rs.getString("email"));
                acc.setPassword(rs.getString("password"));
                acc.setRole(rs.getString("role"));
                acc.setFullname(rs.getString("fullname"));
                acc.setAvatar(rs.getString("avatar"));
                acc.setMobile(rs.getString("mobile"));
                acc.setGender(rs.getBoolean("gender"));
                acc.setAddress(rs.getString("address"));
                acc.setStatus(rs.getInt("status"));
                acc.setCreated_at(rs.getDate("createdat"));
                acc.setUpdated_at(rs.getDate("updatedat"));
                return acc;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public void RegisterNewAccount(String email, String password, String fullname) {
        try {
            String sql = "INSERT INTO Account(email, role, password,fullname,gender,status)\n"
                    + "VALUES (?, ?, ?,?, ?, ?);";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, "3");
            stm.setString(3, password);
            stm.setString(4, fullname);
            stm.setString(5, "0");
            stm.setString(6, "1");
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<Account> list() {
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            String sql = "select acc_id, fullname, email, gender, phone, address, role_id from account";
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc.setId(rs.getInt("id"));
                acc.setEmail(rs.getString("email"));
                acc.setRole(rs.getString("role"));
                acc.setFullname(rs.getString("fullname"));
                acc.setAvatar(rs.getString("avatar"));
                acc.setMobile(rs.getString("mobile"));
                acc.setGender(rs.getBoolean("gender"));
                acc.setAddress(rs.getString("address"));
                acc.setStatus(rs.getInt("status"));
                acc.setCreated_at(rs.getDate("createdat"));
                acc.setUpdated_at(rs.getDate("updatedat"));
                accounts.add(acc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return accounts;
    }

    public static void main(String[] args) {
        String email = "customer1@gmail.com"; // Thay bằng email thực tế
        String pass = "123";
        ManageAccDAO accDao = new ManageAccDAO();
        Account acc = accDao.getAccountByLogin(email, pass);
        if (acc != null) {
            System.out.println("Thông tin tài khoản:");
            System.out.println(acc.toString());
        } else {
            System.out.println("Không tìm thấy tài khoản.");
        }
    }

}
