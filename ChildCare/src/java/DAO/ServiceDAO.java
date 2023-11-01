/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.DBContext;
import Model.Service;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hp
 */
public class ServiceDAO extends DBContext {

    public List<Service> getAllServices() {
        List<Service> services = new ArrayList<>();
        String sql = "select * from Service";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet resultSet = st.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int category_id = resultSet.getInt("categoryId");
                String thumbnail = resultSet.getString("thumbnail");
                String title = resultSet.getString("title");
                float price = resultSet.getFloat("price");
                float sale_price = resultSet.getFloat("salePrice");
                String brief_information = resultSet.getString("briefInformation");
                String description = resultSet.getString("description");
                int status = resultSet.getInt("status");
                Date created_at = resultSet.getDate("createdAt");
                Date updated_at = resultSet.getDate("updatedAt");

                Service service = new Service(id, category_id, thumbnail, title, price, sale_price, brief_information, description, status, created_at, updated_at);
                services.add(service);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return services;
    }

    public static void main(String[] args) {
        ServiceDAO sdao = new ServiceDAO();
        List<Service> services = sdao.getAllServices();
        System.out.println(services.size());

    }
}
