/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Service;
import Model.ServiceCategory;
import DBContext.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author longr
 */
public class ServiceDAO extends DBContext{
    public List<ServiceCategory> getAllCate(){
        List<ServiceCategory> list = new ArrayList<>();
        String sql = "SELECT * FROM ServiceCategory";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new ServiceCategory(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getDate(6)));
//                list.add(new ServiceCategory(rs.getInt("SCID"), rs.getString("CategoryName")));
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public List<Service> getAllService(){
        List<Service> list = new ArrayList<>();
        String sql = "SELECT * FROM Service";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new Service());
//                new Service(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getDate(7), rs.getInt(8),rs.getDouble(9), rs.getDouble(10),rs.getString(11)
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public List<Service> getListByPage(List<Service> list, int start, int end){
        List<Service> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
    
    public Service getServicebysID(int serviceID) {
        String sql = "select * from Service where ServiceID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, serviceID);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Service(rs.getInt(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getFloat(5), rs.getFloat(6),
                        rs.getString(7), rs.getString(8), rs.getInt(9),
                        rs.getDate(10), rs.getDate(11));
//        Service(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getDate(7), rs.getInt(8),rs.getDouble(9), rs.getDouble(10),rs.getString(11));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
    
    public List<Service> searchbyName(String keyword) {
        List<Service> list = new ArrayList<>();
        try {
            String sql = "select * from Service where Tilte like ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + keyword + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Service(rs.getInt(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getFloat(5), rs.getFloat(6),
                        rs.getString(7), rs.getString(8), rs.getInt(9),
                        rs.getDate(10), rs.getDate(11)));
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        ServiceDAO d = new ServiceDAO();
        System.out.println(d.getAllService().get(2).getId());
    }
}
