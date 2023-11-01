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
public class ManageAccDAO extends DBContext.DBContext{


    public Account getAccountByLogin(String email, String pass) {
        Account acc = new Account();
        String sql = "select * from account where email = ? and [password] = ?";
        try {
            
            PreparedStatement ptmt = connection.prepareStatement(sql);
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
            PreparedStatement stm = connection.prepareStatement(sql);
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
            String sql = "select id, email, role, fullname, mobile, gender, address, status from account";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                Account acc = new Account();
                acc.setId(rs.getInt("id"));
                acc.setEmail(rs.getString("email"));
                acc.setRole(rs.getString("role"));
                acc.setFullname(rs.getString("fullname"));
                acc.setMobile(rs.getString("mobile"));
                acc.setGender(rs.getBoolean("gender"));
                acc.setAddress(rs.getString("address"));
                acc.setStatus(rs.getInt("status"));
                accounts.add(acc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return accounts;
    }

    public void ChangePassAccountById(int id, String newPass) {
        try {
            String sql = "UPDATE [account] \n"
                    + "   SET [password] = ?\n"
                    + " WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, newPass);
            stm.setInt(2, id);
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void ChangePassAccountByEmail(String email, String newPass) {
        try {
            String sql = "UPDATE [account] \n"
                    + "   SET [password] = ?\n"
                    + " WHERE email = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, newPass);
            stm.setString(2, email);
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Account getAccountByEmail(String email) {
        Account acc = new Account();
        String sql = "select * from account \n"
                + "where email = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
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

    public Account getAccountById(int id) {
        Account acc = new Account();
        String sql = "select * from account where id = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
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

    public void UpdateAccountById(int id, String email, String fullname, String mobile, String address, boolean gender, String avatar) {
        try {
            String sql = "UPDATE Account\n"
                    + "SET email = ?, fullName = ?, avatar = ?, mobile = ?, gender = ?, address = ?\n"
                    + "WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, fullname);
            stm.setString(3, avatar);
            stm.setString(4, mobile);
            stm.setBoolean(5, gender);
            stm.setString(6, address);
            stm.setInt(7, id);
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void UpdateAccountByIdNoImg(int id, String email, String fullname, String mobile, String address, boolean gender) {
        try {
            String sql = "UPDATE Account\n"
                    + "SET email = ?, fullName = ?, mobile = ?, gender = ?, address = ?\n"
                    + "WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, fullname);
            stm.setString(3, mobile);
            stm.setBoolean(4, gender);
            stm.setString(5, address);
            stm.setInt(6, id);
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
        public ArrayList<Account> ListRoleId() {
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            String sql = "select distinct [role] from account";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc.setRole(rs.getString("role"));
                accounts.add(acc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return accounts;
    }
        
        public void DeleteAccountById(int id) {
        try {
            String sql = "DELETE FROM [account]\n"
                    + "WHERE id =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void UpdateRoleAccountById(String id, String role) {
        try {
            String sql = "UPDATE [account] \n"
                    + "   SET [role] = ?\n"
                    + " WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, role);
            stm.setString(2, id);
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<Account> listByName(String acc_name) {
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            String sql = "select id, email, role, fullname, mobile, gender, address, status from account where fullname like ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            String fullname = "%" + acc_name + "%";
            stm.setString(1, fullname);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc.setId(rs.getInt("id"));
                acc.setEmail(rs.getString("email"));
                acc.setRole(rs.getString("role"));
                acc.setFullname(rs.getString("fullname"));
                acc.setMobile(rs.getString("mobile"));
                acc.setGender(rs.getBoolean("gender"));
                acc.setAddress(rs.getString("address"));
                acc.setStatus(rs.getInt("status"));
                accounts.add(acc);             
            }
            return accounts;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
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
