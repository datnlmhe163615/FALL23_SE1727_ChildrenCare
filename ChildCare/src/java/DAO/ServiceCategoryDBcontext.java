/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.ServiceCategory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author hp
 */
public class ServiceCategoryDBcontext extends DBContext.DBContext  {

    public ArrayList<ServiceCategory> ListServiceCategory() {
        ArrayList<ServiceCategory> ServiceCategoryModers = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[title]\n"
                + "      ,[thumbnail]\n"
                + "      ,[description]\n"
                + "      ,[createdAt]\n"
                + "      ,[updatedAt]\n"
                + "  FROM [dbo].[ServiceCategory]";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                ServiceCategory al = new ServiceCategory();
                al.setId(rs.getInt("id"));
                al.setTitle(rs.getString("title"));
                al.setThumbnail(rs.getString("thumbnail"));
                al.setDecription(rs.getString("description"));
                al.setCreated_at(rs.getDate("createdAt"));
                al.setUpdated_at(rs.getDate("updatedAt"));
                ServiceCategoryModers.add(al);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return ServiceCategoryModers;
    }
}
