/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.DBContext;
import Model.Account;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

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

    public ArrayList<Account> getAccount(int index) {
        ArrayList<Account> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Account] order by fullName, email\n"
                    + "OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getBoolean(8), rs.getString(9), rs.getInt(10), rs.getDate(11), rs.getDate(12)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public int getNumberAccount() {
        ArrayList<Account> list = new ArrayList<>();
        String sql = "SELECT count(*) FROM [Account]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public Account getAccountById(int id) {
        try {
            String sql = "SELECT * FROM [Account] where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getBoolean(8), rs.getString(9), rs.getInt(10), rs.getDate(11), rs.getDate(12));
                return acc;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public ArrayList<Account> searchAccount(String search, int index) {
        ArrayList<Account> list = new ArrayList<>();
        String sql = "SELECT * FROM [Account] where fullName like ? OR email like ? OR mobile like ? order by fullName, email\n"
                + "OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ps.setString(2, "%" + search + "%");
            ps.setString(3, "%" + search + "%");
            ps.setInt(4, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getBoolean(8), rs.getString(9), rs.getInt(10), rs.getDate(11), rs.getDate(12)));
            }
        } catch (SQLException e) {

        }
        return list;
    }
     public List<Account> getNewestAccount(Date startDate, Date endDate) {
        List<Account> list = new ArrayList<>();
        String procedureCall = "{call getNewestAccount(?,?)}";
        try (
                 CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.setDate(1, startDate);
            callableStatement.setDate(2, endDate);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getBoolean(8), rs.getString(9), rs.getInt(10), rs.getDate(11), rs.getDate(12)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public ArrayList<Account> listAccountdoctor() {
        ArrayList<Account> AcountModers = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[email]\n"
                + "      ,[role]\n"
                + "      ,[fullName]\n"
                + "      ,[avatar]\n"
                + "      ,[status]\n"
                + "      ,[createdAt]\n"
                + "      ,[updatedAt]\n"
                + "  FROM [dbo].[Account]  where status= 3";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                Account acountModer = new Account();
                acountModer.setId(rs.getInt("id"));
                acountModer.setEmail(rs.getString("email"));
                acountModer.setRole(rs.getString("role"));
                acountModer.setFullname(rs.getString("fullName"));
                acountModer.setAvatar(rs.getString("avatar"));
                acountModer.setStatus(rs.getInt("status"));
                acountModer.setUpdated_at(rs.getDate("updatedAt"));
                AcountModers.add(acountModer);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return AcountModers;
    }

    public Account getAccountById(String id) {
        String sql = "SELECT [id], [email], [role], [fullName], [avatar], [status], [createdAt], [updatedAt] FROM [dbo].[Account] WHERE id = ?";
        Account account = null;

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            pt.setString(1, id);
            ResultSet rs = pt.executeQuery();
            if (rs.next()) {
                Account acountModer = new Account();
                acountModer.setId(rs.getInt("id"));
                acountModer.setEmail(rs.getString("email"));
                acountModer.setRole(rs.getString("role"));
                acountModer.setFullname(rs.getString("fullName"));
                acountModer.setAvatar(rs.getString("avatar"));
                acountModer.setStatus(rs.getInt("status"));
                acountModer.setUpdated_at(rs.getDate("updatedAt"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return account;
    }
 public int getNumberAccounByDate(Date startDate, Date endDate) {
        int total = 0;
        String procedureCall = "{call GetTotalCustomerWithDates(?,?,?)}";

        try (
                 CallableStatement callableStatement = connection.prepareCall(procedureCall)) {

            callableStatement.setDate(1, startDate);
            callableStatement.setDate(2, endDate);
            callableStatement.registerOutParameter(3, Types.INTEGER);

            callableStatement.execute();

            total = callableStatement.getInt(3);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return total;
    }

}
