/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Service;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author phung
 */
public class ServiceDBcontext extends DBContext.DBContext {

    public ArrayList<Service> listService(String id) {
        ArrayList<Service> Services = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[categoryId]\n"
                + "      ,[thumbnail]\n"
                + "      ,[title]\n"
                + "      ,[price]\n"
                + "      ,[salePrice]\n"
                + "      ,[briefInformation]\n"
                + "      ,[description]\n"
                + "      ,[status]\n"
                + "      ,[createdAt]\n"
                + "      ,[updatedAt]\n"
                + "  FROM [dbo].[Service] where [categoryId] = ?";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            pt.setString(1, id);
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                Service al = new Service();
                al.setId(rs.getInt("id"));
                al.setPrice(rs.getFloat("price"));
                al.setSale_price(rs.getInt("salePrice"));
                al.setBrief_information(rs.getString("briefInformation"));
                al.setCategory_id(rs.getInt("categoryId"));
                al.setTitle(rs.getString("title"));
                al.setThumbnail(rs.getString("thumbnail"));
                al.setDecription(rs.getString("description"));
                al.setStatus(rs.getInt("status"));
                al.setCreated_at(rs.getDate("createdAt"));
                al.setUpdated_at(rs.getDate("updatedAt"));
                Services.add(al);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return Services;
    }
public ArrayList<Service> getlistService() {
        ArrayList<Service> Services = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[categoryId]\n"
                + "      ,[thumbnail]\n"
                + "      ,[title]\n"
                + "      ,[price]\n"
                + "      ,[salePrice]\n"
                + "      ,[briefInformation]\n"
                + "      ,[description]\n"
                + "      ,[status]\n"
                + "      ,[createdAt]\n"
                + "      ,[updatedAt]\n"
                + "  FROM [dbo].[Service]";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {

            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                Service al = new Service();
                al.setId(rs.getInt("id"));
                al.setPrice(rs.getFloat("price"));
                al.setSale_price(rs.getInt("salePrice"));
                al.setBrief_information(rs.getString("briefInformation"));
                al.setCategory_id(rs.getInt("categoryId"));
                al.setTitle(rs.getString("title"));
                al.setThumbnail(rs.getString("thumbnail"));
                al.setDecription(rs.getString("description"));
                al.setStatus(rs.getInt("status"));
                al.setCreated_at(rs.getDate("createdAt"));
                al.setUpdated_at(rs.getDate("updatedAt"));
                Services.add(al);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return Services;
    }
    public ArrayList<Service> countService(String id) {
        ArrayList<Service> Services = new ArrayList<>();
        String sql = "  SELECT COUNT(categoryId) as totalCategory\n"
                + "FROM [dbo].[Service]\n"
                + "WHERE [categoryId] = ?";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            pt.setString(1, id);
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                Service al = new Service();
                al.setCount(rs.getInt("totalCategory"));
             
                Services.add(al);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return Services;
    }
    public static void main(String[] args) {
        ServiceDBcontext bcontext = new ServiceDBcontext();
        System.out.println(bcontext.getlistService());
    }
}
