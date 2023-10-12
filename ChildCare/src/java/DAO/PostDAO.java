/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Post;
import Model.PostCategory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class PostDAO extends DBContext.DBContext {

    public List<Post> getAllPostPagnition() {
        List<Post> list = new ArrayList<>();
        String sql = " SELECT [id]\n"
                + "      ,[authorId]\n"
                + "      ,[categoryId]\n"
                + "      ,[title]\n"
                + "      ,[thumbnail]\n"
                + "      ,[content]\n"
                + "      ,[status]\n"
                + "      ,[createdAt]\n"
                + "      ,[updatedAt]\n"
                + "      ,[describe] status\n"
                + "FROM Post\n"
                + "ORDER BY createdAt DESC\n"
                + "OFFSET 1 ROWS FETCH NEXT 3 ROWS ONLY;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Post(rs.getInt(1), rs.getInt(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getDate(8), rs.getDate(9)));
            }
        } catch (SQLException e) {
        }
        return list;
    }
    // search by postID
        public List<Post> searchByPostId(int id) {
            List<Post> list = new ArrayList<>();
            String sql = " SELECT [id]\n"
                    + "      ,[authorId]\n"
                    + "      ,[categoryId]\n"
                    + "      ,[title]\n"
                    + "      ,[thumbnail]\n"
                    + "      ,[content]\n"
                    + "      ,[status]\n"
                    + "      ,[createdAt]\n"
                    + "      ,[updatedAt]\n"
                    + "      ,[describe] status\n"
                    + "FROM Post\n"
                    + "WHERE id = ?;";
            try {
                PreparedStatement st = connection.prepareStatement(sql);
                st.setInt(1, id);
                ResultSet rs = st.executeQuery();
                while (rs.next()) {
                    list.add(new Post(rs.getInt(1), rs.getInt(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getDate(8), rs.getDate(9)));
                }
            } catch (SQLException e) {
            }
            return list;
        }
// loc theo the loai
    public List<Post> filterByPostCategory() {
        List<Post> list = new ArrayList<>();
        String sql = " SELECT [id]\n"
                + "      ,[authorId]\n"
                + "      ,[categoryId]\n"
                + "      ,[title]\n"
                + "      ,[thumbnail]\n"
                + "      ,[content]\n"
                + "      ,[status]\n"
                + "      ,[createdAt]\n"
                + "      ,[updatedAt]\n"
                + "      ,[describe] status\n"
                + "FROM Post\n"
                + "WHERE category = @Category\n"
                + "ORDER BY createdAt DESC;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Post(rs.getInt(1), rs.getInt(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getDate(8), rs.getDate(9)));
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    // search theo tieu de 
    public List<Post> searchTitle(String keyword) {
    List<Post> list = new ArrayList<>();
    String sql = "SELECT [id], [authorId], [categoryId], [title], [thumbnail], [content], [status], [createdAt], [updatedAt], [describe] " +
                 "FROM Post " +
                 "WHERE title LIKE ? " + 
                 "ORDER BY createdAt DESC;";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        st.setString(1, "%" + keyword + "%"); // Đặt giá trị của tham số bằng từ khóa tìm kiếm
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            list.add(new Post(rs.getInt(1), rs.getInt(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getDate(8), rs.getDate(9)));
        }
    } catch (SQLException e) {
        e.printStackTrace(); // Xử lý ngoại lệ bằng cách in ra lỗi
    }
    return list;
}
    
    public static void main(String[] args) {
        PostDAO d = new PostDAO();
        System.out.println(d.getAllPostPagnition());
    }
}
