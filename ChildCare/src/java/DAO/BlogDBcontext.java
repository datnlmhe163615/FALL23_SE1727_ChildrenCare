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

/**
 *
 * @author phung
 */
public class BlogDBcontext extends DBContext.DBContext {

    public ArrayList<PostCategory> ListBlogCategory() {
        ArrayList<PostCategory> categoryModers = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[title]\n"
                + "  FROM [dbo].[PostCategory]";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                PostCategory categoryModer = new PostCategory();
                categoryModer.setId(rs.getInt("id"));
                categoryModer.setTitle(rs.getString("title"));
                categoryModers.add(categoryModer);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return categoryModers;
    }

    public ArrayList<Post> ListBlog() {
        ArrayList<Post> BlogModers = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[authorId]\n"
                + "      ,[categoryId]\n"
                + "      ,[title]\n"
                + "      ,[thumbnail]\n"
                + "      ,[content]\n"
                + "      ,[createdAt]\n"
                + "      ,[describe]\n"
                + "  FROM [dbo].[Post] ORDER BY [createdAt] DESC ";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                Post blogModer = new Post();
                blogModer.setId(rs.getInt("id"));
                blogModer.setTitle(rs.getString("title"));
                blogModer.setAuthor_id(rs.getInt("authorId"));
                blogModer.setCategory_id(rs.getInt("categoryId"));
                blogModer.setThumbnail(rs.getString("thumbnail"));
                blogModer.setContent(rs.getString("content"));
                blogModer.setCreated_at(rs.getDate("createdAt"));
                blogModer.setDecription(rs.getString("describe"));
                BlogModers.add(blogModer);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return BlogModers;
    }

    public ArrayList<Post> blogDetails(String id) {
        ArrayList<Post> BlogModers = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[authorId]\n"
                + "      ,[categoryId]\n"
                + "      ,[title]\n"
                + "      ,[thumbnail]\n"
                + "      ,[content]\n"
                + "      ,[createdAt]\n"
                + "      ,[describe]\n"
                + "  FROM [dbo].[Post] where [id] = ? ";

        try ( PreparedStatement pt = connection.prepareStatement(sql)) {
            pt.setString(1, id);
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                Post blogModer = new Post();
                blogModer.setId(rs.getInt("id"));
                blogModer.setTitle(rs.getString("title"));
                blogModer.setAuthor_id(rs.getInt("authorId"));
                blogModer.setCategory_id(rs.getInt("categoryId"));
                blogModer.setThumbnail(rs.getString("thumbnail"));
                blogModer.setContent(rs.getString("content"));
                blogModer.setCreated_at(rs.getDate("createdAt"));
                blogModer.setDecription(rs.getString("describe"));
                BlogModers.add(blogModer);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return BlogModers;
    }

public ArrayList<Post> blogSearch(String idcategory, String idday, String search) {
    ArrayList<Post> BlogModers = new ArrayList<>();

    String sql = "SELECT [id]\n" +
            "      ,[authorId]\n" +
            "      ,[categoryId]\n" +
            "      ,[title]\n" +
            "      ,[thumbnail]\n" +
            "      ,[content]\n" +
            "      ,[createdAt]\n" +
            "      ,[describe]\n" +
            "  FROM [dbo].[Post]\n" +
            "  WHERE 1=1"; // 1=1 để bắt đầu điều kiện

    try (PreparedStatement pt = connection.prepareStatement(sql)) {

        if (!search.isEmpty()) {
            sql += " AND [title] LIKE ?";
        }

        if (!idcategory.isEmpty()) {
            String[] categoryIds = idcategory.split(",");
            sql += " AND [categoryId] IN (";
            for (int i = 0; i < categoryIds.length; i++) {
                sql += "?";
                if (i < categoryIds.length - 1) {
                    sql += ",";
                }
            }
            sql += ")";
        }

        if (!idday.isEmpty()) {
            if (idday.equals("1")) {
                sql += " ORDER BY [createdAt] DESC";
            } else if (idday.equals("2")) {
                sql += " ORDER BY [createdAt] ASC";
            }
        }

        // Create the prepared statement
        PreparedStatement preparedStatement = connection.prepareStatement(sql);

        // Set parameters for search
        int parameterIndex = 1;
        if (!search.isEmpty()) {
            preparedStatement.setString(parameterIndex++, "%" + search + "%");
        }

        // Set parameters for category IDs
        if (!idcategory.isEmpty()) {
            String[] categoryIds = idcategory.split(",");
            for (String categoryId : categoryIds) {
                preparedStatement.setString(parameterIndex++, categoryId);
            }
        }

        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()) {
            Post blogModer = new Post();
            blogModer.setId(rs.getInt("id"));
                blogModer.setTitle(rs.getString("title"));
                blogModer.setAuthor_id(rs.getInt("authorId"));
                blogModer.setCategory_id(rs.getInt("categoryId"));
                blogModer.setThumbnail(rs.getString("thumbnail"));
                blogModer.setContent(rs.getString("content"));
                blogModer.setCreated_at(rs.getDate("createdAt"));
                blogModer.setDecription(rs.getString("describe"));
            BlogModers.add(blogModer);
        }
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }

    return BlogModers;
}
    
}
