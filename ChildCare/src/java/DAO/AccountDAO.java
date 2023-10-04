/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

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

    }