/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.DBContext;
import Model.Feedback;
import Model.FeedbackImg;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author hp
 */
public class FeedbackDAO extends DBContext {

    public LinkedHashMap<Feedback, List<FeedbackImg>> getAllFeedback() {
        LinkedHashMap<Feedback, List<FeedbackImg>> feedbackMap = new LinkedHashMap<>();
        String sql = "SELECT f.id, f.customerId, f.point, f.content, f.createdAt, f.updatedAt, a.fullName, f.serviceid,  s.title\n"
                + "FROM Feedback f\n"
                + "JOIN Account a ON f.customerId = a.id\n"
                + "JOIN Service s ON f.serviceId = s.id;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Feedback feedback = new Feedback();

                feedback.setId(rs.getInt("id"));
                feedback.setCustomer_id(rs.getInt("customerId"));
                feedback.setService_id(rs.getInt("serviceId"));
                feedback.setPoint(rs.getFloat("point"));
                feedback.setContent(rs.getString("content"));
                feedback.setCreated_at(rs.getDate("createdAt"));
                feedback.setUpdated_at(rs.getDate("updatedAt"));
                feedback.setCustomerName(rs.getString("fullName"));
                feedback.setServiceName(rs.getString("title"));
                List<FeedbackImg> feedbackImages = getImgForFeedback(feedback.getId());
                feedbackMap.put(feedback, feedbackImages);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return feedbackMap;
    }
 public LinkedHashMap<Feedback, List<FeedbackImg>> getAllFeedbackbydi(int id) {
        LinkedHashMap<Feedback, List<FeedbackImg>> feedbackMap = new LinkedHashMap<>();
        String sql = "SELECT a.email,  f.id, f.customerId, f.point, f.content, f.createdAt, f.updatedAt, a.fullName, f.serviceid,  s.title\n" +
"             FROM Feedback f\n" +
"             JOIN Account a ON f.customerId = a.id\n" +
"               JOIN Service s ON f.serviceId = s.id where f.id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
             st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Feedback feedback = new Feedback();

                feedback.setId(rs.getInt("id"));
                feedback.setCustomer_id(rs.getInt("customerId"));
                feedback.setService_id(rs.getInt("serviceId"));
                feedback.setPoint(rs.getFloat("point"));
                feedback.setContent(rs.getString("content"));
                feedback.setCreated_at(rs.getDate("createdAt"));
                feedback.setUpdated_at(rs.getDate("updatedAt"));
                feedback.setCustomerName(rs.getString("fullName"));
                feedback.setUseremail(rs.getString("email"));
                
                
                feedback.setServiceName(rs.getString("title"));
                List<FeedbackImg> feedbackImages = getImgForFeedback(feedback.getId());
                feedbackMap.put(feedback, feedbackImages);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return feedbackMap;
    }
    public List<FeedbackImg> getImgForFeedback(int feedbackId) {
        List<FeedbackImg> feedbackImages = new ArrayList<>();
        String sql = "select * from Feedbackimg where feedbackId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, feedbackId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                FeedbackImg feedbackImg = new FeedbackImg();
                feedbackImg.setImgId(rs.getInt("Feedbackimgid"));
                feedbackImg.setFeedbackID(rs.getInt("feedbackid"));
                feedbackImg.setThumString(rs.getString("thumbnail"));
                feedbackImages.add(feedbackImg);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Thay vì e.getMessage()
        }
        return feedbackImages;
    }

    public List<FeedbackImg> getImgForFeedbacktop(int feedbackId) {
        List<FeedbackImg> feedbackImages = new ArrayList<>();
        String sql = "select top 1 thumbnail from Feedbackimg  where feedbackId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, feedbackId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                FeedbackImg feedbackImg = new FeedbackImg();
                feedbackImg.setThumString(rs.getString("thumbnail"));
                feedbackImages.add(feedbackImg);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Thay vì e.getMessage()
        }
        return feedbackImages;
    }

    public LinkedHashMap<Feedback, List<FeedbackImg>> searchFeedback(String textSearch, String pointFilter, String serviceFilter, String sortBy, String sortOption) throws SQLException {
        StringBuilder sql = new StringBuilder("SELECT * FROM Feedback f \n"
                + "JOIN Account a ON f.customerId = a.id\n"
                + "JOIN Service s ON f.serviceId = s.id WHERE 1=1");

        List<Object> params = new ArrayList<>(); // Danh sách tham số của câu truy vấn

        if (!serviceFilter.isEmpty()) {
            sql.append(" AND serviceId = ?");
            params.add(Integer.parseInt(serviceFilter));
        }
        if (!pointFilter.isEmpty()) {
            sql.append(" AND point = ?");
            params.add(Float.parseFloat(pointFilter));
        }
        if (!textSearch.isEmpty()) {
            sql.append(" AND (content LIKE ? OR fullName LIKE ?)");
            String searchText = "%" + textSearch + "%";
            params.add(searchText);
            params.add(searchText);
        }

        // Thêm phần sắp xếp nếu cần
        if (!sortBy.isEmpty() && !sortOption.isEmpty()) {
            sql.append(" ORDER BY ").append(sortBy).append(" ").append(sortOption);
        }

        LinkedHashMap<Feedback, List<FeedbackImg>> feedbackMap = new LinkedHashMap();
        try ( PreparedStatement preparedStatement = connection.prepareStatement(sql.toString())) {
            int parameterIndex = 1;
            for (Object param : params) {
                if (param instanceof Integer) {
                    preparedStatement.setInt(parameterIndex, (int) param);
                } else if (param instanceof Float) {
                    preparedStatement.setFloat(parameterIndex, (float) param);
                } else if (param instanceof String) {
                    preparedStatement.setString(parameterIndex, (String) param);
                }
                parameterIndex++;
            }

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                Feedback feedback = new Feedback();
                feedback.setId(rs.getInt("id"));
                feedback.setCustomer_id(rs.getInt("customerId"));
                feedback.setService_id(rs.getInt("serviceId"));
                feedback.setPoint(rs.getFloat("point"));
                feedback.setContent(rs.getString("content"));
                feedback.setCreated_at(rs.getDate("createdAt"));
                feedback.setUpdated_at(rs.getDate("updatedAt"));
                feedback.setCustomerName(rs.getString("fullName"));
                feedback.setServiceName(rs.getString("title"));

                List<FeedbackImg> feedbackImages = getImgForFeedback(feedback.getId());
                feedbackMap.put(feedback, feedbackImages);
            }
            return feedbackMap;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public double getAVGPoint(Date startDate, Date endDate) {
        double total = 0;
        String procedureCall = "{call GetAVGPointWithDates(?,?,?)}";

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

    public LinkedHashMap<Feedback, List<FeedbackImg>> getLatestFeedbackByDate(Date startDate, Date endDate) {
        LinkedHashMap<Feedback, List<FeedbackImg>> feedbackMap = new LinkedHashMap<>();

        String procedureCall = "{call getLatestFeedbackWithinDate(?,?)}";
        try (
                 CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.setDate(1, startDate);
            callableStatement.setDate(2, endDate);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                Feedback feedback = new Feedback();

                feedback.setId(rs.getInt("id"));
                feedback.setCustomer_id(rs.getInt("customerId"));
                feedback.setService_id(rs.getInt("serviceId"));
                feedback.setPoint(rs.getFloat("point"));
                feedback.setContent(rs.getString("content"));
                feedback.setCreated_at(rs.getDate("createdAt"));
                feedback.setUpdated_at(rs.getDate("updatedAt"));
                feedback.setCustomerName(rs.getString("fullName"));
                feedback.setServiceName(rs.getString("title"));
                List<FeedbackImg> feedbackImages = getImgForFeedback(feedback.getId());
                feedbackMap.put(feedback, feedbackImages);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return feedbackMap;
    }

    public static void main(String[] args) throws SQLException {
        FeedbackDAO fdao = new FeedbackDAO();
        java.sql.Date startDate = java.sql.Date.valueOf("2023-10-01");
        java.sql.Date endDate = java.sql.Date.valueOf("2023-10-31");
        LinkedHashMap<Feedback, List<FeedbackImg>> feedbackMap = fdao.searchFeedback("content", "2", "2", "point", "ASC");

        System.out.println("Total Reservations: " + feedbackMap.size());
    }

}
