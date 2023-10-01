/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import DBContext.DBContext;
import Model.Service;
import Model.ServiceCategory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author asus
 */
public class ServicesDAO extends DBContext{
    
    public ArrayList<ServiceCategory> getServiceCate(){
        ArrayList<ServiceCategory> list = new ArrayList<>(); 
        try{
            String sql = "SELECT * FROM [ServiceCategory]"; 
            PreparedStatement ps = connection.prepareStatement(sql); 
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){
                list.add(new ServiceCategory(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getDate(6))); 
            }
            
        }catch(SQLException e){
            
        }
        return list;
    }
    
        
    public ArrayList<Service> getService(int id){
        ArrayList<Service> list = new ArrayList<>(); 
        try{
            String sql = "SELECT * FROM [Service] s inner join ServiceCategory c on s.categoryId = c.id where categoryId = 1"; 
            PreparedStatement ps = connection.prepareStatement(sql); 
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){
                list.add(new Service(rs.getInt(1), new ServiceCategory(rs.getInt(12),rs.getString(13)), rs.getString(3), rs.getString(4), rs.getFloat(5),  rs.getFloat(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getDate(10),rs.getDate(11))); 
            }
            
        }catch(SQLException e){
            
        }
        return list;
    }
    
    public static void main(String[] args) {
        ServicesDAO dao = new ServicesDAO(); 
         ArrayList<ServiceCategory> list = dao.getServiceCate(); 
         for(ServiceCategory c: list){
             System.out.println(c.getTitle());
         }
    }
}
