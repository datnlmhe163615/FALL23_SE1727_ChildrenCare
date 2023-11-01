/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import DBContext.DBContext;
import Model.Account;
import Model.Reservation;
import Model.ReservationItem;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 1234
 */
public class ReservationDAO extends DBContext {

    public int getNumberReser(java.sql.Date startDate, java.sql.Date endDate) {
        int total = 0;
        String procedureCall = "{call GetTotalReservation(?,?,?)}";

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



    public String getMostService(Date startDate, Date endDate) {
        String mostService = "";
        String procedureCall = "{call GETMOSTSERVICEWithDates(?,?)}";

        try (
                 CallableStatement callableStatement = connection.prepareCall(procedureCall)) {

            callableStatement.setDate(1, startDate);
            callableStatement.setDate(2, endDate);
            ResultSet rs = callableStatement.executeQuery();
            if (rs.next()) {
                mostService = rs.getString("title");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return mostService;
    }

    List<ReservationItem> getmostSerItems(Date startDate, Date endDate) {
        List<ReservationItem> list = new ArrayList<>();
        String procedureCall = "{call GetTop5ServiceWithinDate(?,?)}";
        try (
                 CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.setDate(1, startDate);
            callableStatement.setDate(2, endDate);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                ReservationItem reservationItem = ReservationItem.builder().serviceName(rs.getString("ServiceName"))
                        .service_price(rs.getInt("TotalPrice"))
                        .quantity(rs.getInt("TotalQuantity")).build();
                list.add(reservationItem);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Reservation> getAllReservationByDate(Date startDate, Date endDate) {
        List<Reservation> list = new ArrayList<>();
        String procedureCall = "{call getAllReservationWithinDate(?,?)}";

        try (
                 CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.setDate(1, startDate);
            callableStatement.setDate(2, endDate);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {

                Reservation r = Reservation.builder()
                        .id(rs.getInt("id"))
                        .customer_id(rs.getInt("customerId"))
                        .staff_id(rs.getInt("staffId"))
                        .email(rs.getString("email"))
                        .mobile(rs.getString("mobile"))
                        .total(rs.getFloat("total"))
                        .created_at(rs.getDate("createdAt"))
                        .status(rs.getInt("status"))
                        .updated_at(rs.getDate("updatedAt"))
                        .customerName(rs.getString("fullName")).build();

                list.add(r);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static void main(String[] args) {
        List<Reservation> list = new ArrayList<>();

        ReservationDAO rdao = new ReservationDAO();
        java.sql.Date startDate = java.sql.Date.valueOf("2023-01-01");
        java.sql.Date endDate = java.sql.Date.valueOf("2023-12-31");

        list = rdao.getAllReservationByDate(startDate, endDate);

        System.out.println("Total Reservations: " + list.size());
    }
}
