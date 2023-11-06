/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.DBContext;
import Model.Account;
import Model.Feedback_1;
import Model.Media;
import Model.ServiceCategory_1;
import Model.ServiceMedia_1;
import Model.Service_2;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author asus
 */
public class ServicesDAO extends DBContext {

    public static void main(String[] args) {
        
        ServicesDAO dao = new ServicesDAO();
        ArrayList<Feedback_1> list = dao.getFeedback(2);
       for(Feedback_1 f: list){
           System.out.println(f.getContent());
       }
    }

    public ArrayList<ServiceCategory_1> getServiceCate() {
        ArrayList<ServiceCategory_1> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [ServiceCategory]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ServiceCategory_1(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getDate(6)));
            }

        } catch (SQLException e) {

        }
        return list;
    }

    public ArrayList<Service_2> getService(int id, int index) {
        ArrayList<Service_2> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Service] s inner join ServiceCategory c on s.categoryId = c.id  where categoryId = ? \n"
                    + "order by s.id desc\n"
                    + "OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setInt(2, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service_2(rs.getInt(1), new ServiceCategory_1(rs.getInt(12), rs.getString(13)), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getFloat(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getDate(11)));
            }

        } catch (SQLException e) {

        }
        return list;
    }

    public int getNumberService(int id) {
        ArrayList<Service_2> list = new ArrayList<>();
        String sql = "SELECT count(*) FROM [Service] s inner join ServiceCategory c on s.categoryId = c.id  where categoryId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public ServiceMedia_1 getServiceById(int id) {
        try {
            String sql = "SELECT * FROM [Service] s inner join ServiceCategory c on s.categoryId = c.id "
                    + "inner join ServiceMedia m on m.serviceId = s.id \n"
                    + "inner join Media d on d.id = m.mediaId where s.id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ServiceMedia_1 s = new ServiceMedia_1(rs.getInt(18), new Media(rs.getInt(21), rs.getString(22), rs.getString(23), rs.getString(24), rs.getDate(25), rs.getDate(26)),
                        new Service_2(rs.getInt(1), new ServiceCategory_1(rs.getInt(12), rs.getString(13)), rs.getString(3), rs.getString(4),
                                rs.getFloat(5), rs.getFloat(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getDate(11)));
                return s;
            }
        } catch (SQLException e) {

        }
        return null;
    }
    
    

    public ArrayList<Service_2> searchService(String search) {
        ArrayList<Service_2> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Service] s inner join "
                    + " ServiceCategory c on s.categoryId = c.id where s.title like ? order by s.id desc ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service_2(rs.getInt(1), new ServiceCategory_1(rs.getInt(12), rs.getString(13)), rs.getString(3), rs.getString(4), rs.getFloat(5),
                        rs.getFloat(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getDate(11)));
            }

        } catch (SQLException e) {

        }
        return list;

    }

    public ArrayList<Feedback_1> getFeedback(int id) {
        ArrayList<Feedback_1> list = new ArrayList<>();
        String sql = "SELECT *  FROM [Feedback] f inner join Account a on a.id = f.customerId \n"
                + "inner join Service s on s.id = f.serviceId where f.serviceId = ? order by f.id desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Feedback_1(rs.getInt(1), new Account(rs.getString(12), rs.getString(13)), new Service_2(rs.getInt(20), rs.getString(21), rs.getString(22)),
                        rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7)));
            }
        } catch (SQLException e) {

        }
        return list;
    }
    
        public int getNumberFeedback(int id) {
        ArrayList<Service_2> list = new ArrayList<>();
           String sql = "SELECT  count(*)  FROM [Feedback] f inner join Account a on a.id = f.customerId \n"
                + "inner join Service s on s.id = f.serviceId where f.serviceId = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }
}
