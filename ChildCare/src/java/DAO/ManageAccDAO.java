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
    

    public void RegisterNewAccount(String email, String password , String fullname) {
        try {
            String sql = "INSERT INTO [account]\n"
                    + "           ([email]\n"
                    + "           ,[password],[role_id],[fullname]\n"
                    + ")\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?,?,?)";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            stm.setString(3, "3");
            stm.setString(4, fullname);
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
