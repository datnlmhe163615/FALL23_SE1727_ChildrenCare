/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.DBContext;
import Model.Service;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

/**
 *
 * @author hp
 */
public class PaymentDAO extends DBContext {

    public double getTotalRevenueByDate(Date startDate, Date endDate) {
      double total = 0;
        String procedureCall = "{call GettotalRevenueWithDates(?,?,?)}";

        try (
                 CallableStatement callableStatement = connection.prepareCall(procedureCall)) {

            callableStatement.setDate(1, startDate);
            callableStatement.setDate(2, endDate);
            callableStatement.registerOutParameter(3, Types.DOUBLE);

            callableStatement.execute();

            total = callableStatement.getDouble(3);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return total;
    }
    public static void main(String[] args) {
         PaymentDAO paymentDAO = new PaymentDAO();
          java.sql.Date startDate = java.sql.Date.valueOf("2023-10-01");
        java.sql.Date endDate = java.sql.Date.valueOf("2023-10-31");
        double total = paymentDAO.getTotalRevenueByDate(startDate, endDate);

        System.out.println("Total Reservations: " + total);
    }

}
