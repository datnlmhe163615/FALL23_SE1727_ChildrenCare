/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import Model.Reservation;
import Model.ReservationItem;
import Model.Service;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author asus
 */
public class ReservationDAO extends DBContext.DBContext {

    public ArrayList<Reservation> getReservation(int index) {
        ArrayList<Reservation> list = new ArrayList<>();
        String sql = "SELECT * FROM [Reservation] r inner join Account a on r.customerId = a.id\n"
                + "ORDER BY r.id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Reservation(rs.getInt(1), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getBoolean(6), rs.getString(7),
                        rs.getInt(8), rs.getFloat(9), rs.getDate(10), rs.getDate(11), new Account(rs.getString(16), rs.getString(17))));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public int getNumberReservation() {
        String sql = "SELECT count(*) FROM [Reservation] r inner join Account a on r.customerId = a.id";
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

    public ArrayList<Reservation> getReservationDetail(int id) {
        ArrayList<Reservation> list = new ArrayList<>();
        String sql = "SELECT * FROM [Reservation] r inner join ReservationItem d on r.id = d.reservationId \n"
                + "inner join Service s on s.id = d.serviceId\n"
                + "where r.id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Reservation(rs.getInt(1),
                        new ReservationItem(rs.getInt(12), rs.getInt(13), rs.getInt(14), rs.getInt(15), rs.getFloat(16), rs.getInt(17), rs.getDate(18), rs.getDate(19)),
                        new Service(rs.getInt(21), rs.getString(23), rs.getString(24))));
            }

        } catch (SQLException e) {

        }
        return list;
    }
}
