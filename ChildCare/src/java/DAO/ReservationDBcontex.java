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
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

/**
 *
 * @author hp
 */
public class ReservationDBcontex extends DBContext.DBContext {

    public void insReservation(Reservation reservation, ReservationItem reservationItem) {
        String reservationSql = "INSERT INTO [dbo].[Reservation]\n"
                + "           ([customerId]\n"
                + "           ,[staffId]\n"
                + "           ,[email]\n"
                + "           ,[mobile]\n"
                + "           ,[gender]\n"
                + "           ,[address]\n"
                + "           ,[status]\n"
                + "           ,[total]\n"
                + "           ,[createdAt]\n"
                + "           ,[updatedAt])\n"
                + "     VALUES\n"
                + "           (?,?,CONVERT(varbinary, ?),?,?,?,?,?,GETDATE(),GETDATE())";

        String reservationItemSql = "INSERT INTO [dbo].[ReservationItem]\n"
                + "           ([staffId]\n"
                + "           ,[reservationId]\n"
                + "           ,[serviceId]\n"
                + "           ,[servicePrice]\n"
                + "           ,[quantity]\n"
                + "           ,[createdAt]\n"
                + "           ,[updatedAt]\n"
                + "           ,[hour])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,GETDATE(),?)";

        try {
            // Bắt đầu một giao dịch
            connection.setAutoCommit(false);

            // Chèn dữ liệu vào bảng Reservation
            PreparedStatement reservationInsertStatement = connection.prepareStatement(reservationSql, Statement.RETURN_GENERATED_KEYS);
            reservationInsertStatement.setInt(1, reservation.getCustomer_id());
            reservationInsertStatement.setInt(2, reservation.getStaff_id());
            reservationInsertStatement.setString(3, reservation.getEmail());
            reservationInsertStatement.setString(4, reservation.getMobile());
            reservationInsertStatement.setBoolean(5, reservation.isGender());
            reservationInsertStatement.setString(6, reservation.getAddress());
            reservationInsertStatement.setInt(7, reservation.getStatus());
            reservationInsertStatement.setFloat(8, reservation.getTotal());
            reservationInsertStatement.executeUpdate();

            // Lấy reservationId từ dữ liệu đã chèn
            ResultSet generatedKeys = reservationInsertStatement.getGeneratedKeys();
            int reservationId;
            if (generatedKeys.next()) {
                reservationId = generatedKeys.getInt(1);
            } else {
                throw new SQLException("Không có reservationId được trả về");
            }

            // Chèn dữ liệu vào bảng ReservationItem sử dụng reservationId vừa lấy được
            PreparedStatement reservationItemInsertStatement = connection.prepareStatement(reservationItemSql);
            reservationItemInsertStatement.setInt(1, reservationItem.getStaff_id());
            reservationItemInsertStatement.setInt(2, reservationId);
            reservationItemInsertStatement.setInt(3, reservationItem.getService_id());
            reservationItemInsertStatement.setFloat(4, reservationItem.getService_price());
            reservationItemInsertStatement.setInt(5, reservationItem.getQuantity());
            reservationItemInsertStatement.setDate(6, reservationItem.getCreated_at());
            reservationItemInsertStatement.setString(7, reservationItem.getHour());
            reservationItemInsertStatement.executeUpdate();

            // Commit giao dịch
            connection.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                // Rollback giao dịch nếu có lỗi
                if (connection != null) {
                    connection.rollback();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } finally {
            try {
                // Đảm bảo kết nối được đóng sau khi sử dụng
                if (connection != null) {
                    connection.setAutoCommit(true); // Đặt lại chế độ tự động commit
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public ArrayList<Reservation> getListReservation(String id) {
        ArrayList<Reservation> reservations = new ArrayList<>();
        String sql = "SELECT a.fullName ,a.role, s.thumbnail, r.id, r.customerId,  r.status, r.total, ri.createdAt, ri.updatedAt,ri.hour,s.title\n"
                + "FROM Reservation r\n"
                + "INNER JOIN ReservationItem ri ON r.id = ri.reservationId INNER JOIN Account a on r.staffId = a.id INNER JOIN Service s on ri.serviceId = s.id where r.customerId = ? ORDER BY r.id DESC";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {

            pt.setString(1, id);
            ResultSet rs = pt.executeQuery();

            while (rs.next()) {
                Reservation reservation = new Reservation();
                reservation.setId(rs.getInt("id"));
                reservation.setCustomer_id(rs.getInt("customerId"));
                reservation.setStatus(rs.getInt("status"));
                reservation.setTotal(rs.getInt("total"));
                ReservationItem reservationItem = new ReservationItem();
                reservationItem.setCreated_at(rs.getDate("createdAt"));
                reservationItem.setUpdated_at(rs.getDate("updatedAt"));
                reservationItem.setHour(rs.getString("hour"));
                Service service = new Service();
                service.setThumbnail(rs.getString("thumbnail"));
                service.setTitle(rs.getString("title"));
                Account a = new Account();
                a.setRole(rs.getString("role"));
                reservation.setReservationItem(reservationItem);
                reservation.setAccount(a);
                reservation.setService(service);
                reservations.add(reservation);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return reservations;
    }

    public ArrayList<Reservation> searchReservations(String title, String createdAt, String customerId) {
        ArrayList<Reservation> reservations = new ArrayList<>();

        String sql = "SELECT a.fullName, a.role, s.thumbnail, r.id, r.customerId, r.status, r.total, ri.createdAt, ri.updatedAt, ri.hour, s.title\n"
                + "FROM Reservation r\n"
                + "INNER JOIN ReservationItem ri ON r.id = ri.reservationId\n"
                + "INNER JOIN Account a ON r.staffId = a.id\n"
                + "INNER JOIN Service s ON ri.serviceId = s.id\n"
                + "WHERE 1=1";

        if (title != null && !title.isEmpty()) {
            sql += " AND s.title = ?";
        }

        if (createdAt != null && !createdAt.isEmpty()) {
            sql += " AND ri.createdAt >= ?";
        }

        if (customerId != null && !customerId.isEmpty()) {
            sql += " AND r.customerId = ?";
        }

        sql += " ORDER BY r.id DESC";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            int parameterIndex = 1;
            if (title != null && !title.isEmpty()) {
                pt.setString(parameterIndex++, title);
            }

            if (createdAt != null && !createdAt.isEmpty()) {
                pt.setString(parameterIndex++, createdAt);
            }

            if (customerId != null && !customerId.isEmpty()) {
                pt.setString(parameterIndex++, customerId);
            }

            ResultSet rs = pt.executeQuery();

            while (rs.next()) {
                Reservation reservation = new Reservation();
                reservation.setId(rs.getInt("id"));
                reservation.setCustomer_id(rs.getInt("customerId"));
                reservation.setStatus(rs.getInt("status"));
                reservation.setTotal(rs.getInt("total"));
                ReservationItem reservationItem = new ReservationItem();
                reservationItem.setCreated_at(rs.getDate("createdAt"));
                reservationItem.setUpdated_at(rs.getDate("updatedAt"));
                reservationItem.setHour(rs.getString("hour"));
                Service service = new Service();
                service.setThumbnail(rs.getString("thumbnail"));
                service.setTitle(rs.getString("title"));
                Account a = new Account();
                a.setRole(rs.getString("role"));
                reservation.setReservationItem(reservationItem);
                reservation.setAccount(a);
                reservation.setService(service);
                reservations.add(reservation);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return reservations;
    }

    public static void main(String[] args) {
        ReservationDBcontex reservationDBcontex = new ReservationDBcontex();
        System.out.println(reservationDBcontex.searchReservations("", "2023-10-08", "1"));
    }

}
