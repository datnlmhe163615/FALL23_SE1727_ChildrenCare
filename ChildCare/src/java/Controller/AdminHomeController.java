/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.AccountDAO;
import DAO.FeedbackDAO;
import DAO.PaymentDAO;
import DAO.ServiceDAO;
import Model.Account;
import Model.Feedback;
import Model.FeedbackImg;
import Model.Reservation;
import Model.ReservationItem;
import Model.Service;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author hp
 */
public class AdminHomeController extends HttpServlet {

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
            out.println("<title>Servlet AdminHomeController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminHomeController at " + request.getContextPath() + "</h1>");
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
        String startDate_raw = request.getParameter("startDate");
        String endDate_raw = request.getParameter("endDate");
        LocalDate sDate = null;
        LocalDate eDate = null;
        Date sDateSql = null;
        Date eDateSql = null;

        if (startDate_raw != null && !startDate_raw.isEmpty()) {
            try {
                sDate = LocalDate.parse(startDate_raw);
                sDateSql = Date.valueOf(sDate);
            } catch (DateTimeParseException e) {
                e.printStackTrace();
            }
        }

        if (endDate_raw != null && !endDate_raw.isEmpty()) {
            try {
                eDate = LocalDate.parse(endDate_raw);
                eDateSql = Date.valueOf(eDate);
            } catch (DateTimeParseException e) {
                e.printStackTrace();
            }
        }

        System.out.println("date" + startDate_raw);
        PaymentDAO paymentDAO = new PaymentDAO();
        ReservationDAO rdao = new ReservationDAO();
        AccountDAO adao = new AccountDAO();
        FeedbackDAO fdao = new FeedbackDAO();

        int countReservation = rdao.getNumberReser(sDateSql, eDateSql);
        int countUser = adao.getNumberAccounByDate(sDateSql, eDateSql);
        double avgPoint = fdao.getAVGPoint(sDateSql, eDateSql);
        double totalRevenue = paymentDAO.getTotalRevenueByDate(sDateSql, eDateSql);
        String mostService = rdao.getMostService(sDateSql, eDateSql);
        List<Account> newestAccounts = adao.getNewestAccount(sDateSql, eDateSql);
        List<ReservationItem> mostSerItems = rdao.getmostSerItems(sDateSql, eDateSql);
        List<Reservation> reservations = rdao.getAllReservationByDate(sDateSql, eDateSql);
        LinkedHashMap<Feedback, List<FeedbackImg>> feedbackMap = fdao.getLatestFeedbackByDate(sDateSql, eDateSql);
         if (startDate_raw != null) {
                  request.setAttribute("sDateSql", sDateSql);
        }
         if (endDate_raw != null) {
                  request.setAttribute("eDateSql", eDateSql);
        }

        request.setAttribute("avgPoint", avgPoint);
        request.setAttribute("feedbackList", feedbackMap);
        request.setAttribute("mostService", mostService);
        request.setAttribute("reservations", reservations);
        request.setAttribute("mostSerItems", mostSerItems);
        request.setAttribute("newestAccounts", newestAccounts);
        request.setAttribute("totalRevenue", totalRevenue);
        request.setAttribute("countUser", countUser);
        request.setAttribute("countReservation", countReservation);
        request.getRequestDispatcher("AdminDashboard.jsp").forward(request, response);
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
        String startDate_raw = request.getParameter("startDate");
        String endDate_raw = request.getParameter("endDate");

        String redirectURL = "admin?startDate=" + startDate_raw + "&endDate=" + endDate_raw;
        response.sendRedirect(redirectURL);
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
