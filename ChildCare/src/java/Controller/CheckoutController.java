/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ReservationDBcontex;
import Model.Reservation;
import Model.ReservationItem;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.nio.charset.StandardCharsets;
import java.sql.Timestamp;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author phung
 */
public class CheckoutController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckoutController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckoutController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String jobTitle_raw = request.getParameter("jobTitle");
        String salary_raw = request.getParameter("salary");
        String gamil_raw = request.getParameter("gamil_raw");
        String choseservice_raw = request.getParameter("choseservice_raw");
        String inputHour_raw = request.getParameter("inputHour_raw");
        String phone_raw = request.getParameter("phone_raw");
        String address_raw = request.getParameter("address_raw");
        String date_raw = request.getParameter("date_raw");
        String serviceid_raw = request.getParameter("serviceid_raw");
        String doctor_raw = request.getParameter("doctor_raw");

        request.setAttribute("gamil_raw", gamil_raw);
        request.setAttribute("choseservice_raw", choseservice_raw);
        request.setAttribute("inputHour_raw", inputHour_raw);
        request.setAttribute("phone_raw", phone_raw);
        request.setAttribute("address_raw", address_raw);
        request.setAttribute("date_raw", date_raw);
        request.setAttribute("serviceid_raw", serviceid_raw);
        request.setAttribute("doctor_raw", doctor_raw);

        request.setAttribute("jobTitle", jobTitle_raw);
        request.setAttribute("salary", salary_raw);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ReservationDBcontex bcontex = new ReservationDBcontex();

        String id = request.getParameter("1");
        String gender_raw = request.getParameter("1");
        String gamil_raw = request.getParameter("gmail");
        String status_raw = request.getParameter("1");
        String total_raw = request.getParameter("total");
        String choseservice_raw = request.getParameter("choseservice");
        String inputHour_raw = request.getParameter("inputHour");
        String phone_raw = request.getParameter("phone");
        String address_raw = request.getParameter("address");
        String date_raw = request.getParameter("date");
        String serviceid_raw = request.getParameter("serviceid");
        String doctor_raw = request.getParameter("doctor");
        String dateTimeString = date_raw + " " + inputHour_raw;
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy HH:mm");

        Reservation reservation = new Reservation();
        ReservationItem reservationItem = new ReservationItem();

        // Gán giá trị cho các trường của Reservation
        reservation.setCustomer_id(Integer.parseInt("1"));
        reservation.setStaff_id(Integer.parseInt(doctor_raw));
        reservation.setEmail(gamil_raw);
        reservation.setStatus(Integer.parseInt("1"));
        reservation.setTotal(Float.parseFloat(total_raw));
        reservation.setGender(Boolean.parseBoolean(gender_raw)); // Bạn cần xác định kiểu dữ liệu của gender là gì
        reservation.setMobile(phone_raw);
        reservation.setAddress(address_raw);

        // Gán giá trị cho các trường của ReservationItem
        reservationItem.setStaff_id(Integer.parseInt(doctor_raw));
        reservationItem.setReservation_id(reservation.getId());
        reservationItem.setService_id(Integer.parseInt(serviceid_raw));
        reservationItem.setService_price(Float.parseFloat(total_raw)); // Hoặc sử dụng giá trị từ dữ liệu khác nếu cần
        reservationItem.setQuantity(1);

        try {
            Date createdDate = dateFormat.parse(dateTimeString);
            java.sql.Date sqlDate = new java.sql.Date(createdDate.getTime());
            reservationItem.setCreated_at(sqlDate);
        } catch (ParseException e) {
            // Xử lý lỗi nếu định dạng không hợp lệ
        }
        reservationItem.setHour(inputHour_raw);

       
        bcontex.insReservation(reservation, reservationItem);
        response.sendRedirect("home");
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
