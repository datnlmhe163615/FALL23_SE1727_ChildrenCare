/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;


import Model.Slide;
import Model.SlideItem;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author phung
 */
public class SlideDBcontext extends DBContext.DBContext  {


 public ArrayList<SlideItem> getListSlide() {
        ArrayList<SlideItem> SlideModers = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[image]\n"
                + "      ,[title]\n"
                + "      ,[subTitle]\n"
                + "      ,[description]\n"
                + "      ,[createdAt]\n"
                + "      ,[updatedAt]\n"
                + "  FROM [dbo].[SlideItem]";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                SlideItem al = new SlideItem();
                al.setId(rs.getInt("id"));
                al.setTitle(rs.getString("title"));
                al.setImage(rs.getString("image"));
                al.setSub_title(rs.getString("subTitle"));
                al.setDecription(rs.getString("description"));
                al.setCreated_at(rs.getDate("createdAt"));
                al.setUpdated_at(rs.getDate("updatedAt"));
                SlideModers.add(al);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return SlideModers;
    }
    public static void main(String[] args) {
        SlideDBcontext a = new SlideDBcontext();
        System.out.println(a.getListSlide().toString());
    }
}
