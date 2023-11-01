/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.FeedbackDAO;
import DAO.ServiceDAO;
import Model.Feedback;
import Model.FeedbackImg;
import Model.Service;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hp
 */
public class FeedbackController extends HttpServlet {

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
            out.println("<title>Servlet FeedbackController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FeedbackController at " + request.getContextPath() + "</h1>");
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
        FeedbackDAO fdao = new FeedbackDAO();
        ServiceDAO sdao = new ServiceDAO();

        List<Service> services = sdao.getAllServices();
        LinkedHashMap<Feedback, List<FeedbackImg>> feedbackMap = fdao.getAllFeedback();
        request.setAttribute("feedbackList", feedbackMap);
        request.setAttribute("services", services);
        request.getRequestDispatcher("Feedback.jsp").forward(request, response);

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
        FeedbackDAO fdao = new FeedbackDAO();
        ServiceDAO sdao = new ServiceDAO();

        List<Service> services = sdao.getAllServices();
        String textSearch = request.getParameter("textSearch");
        String pointFilter = request.getParameter("pointFilter");
        String serviceFilter = request.getParameter("serviceFilter");
        String sortBy = request.getParameter("sortBy");
        String sortOption = request.getParameter("sortOption");
        System.out.println(serviceFilter);

        try {
            LinkedHashMap<Feedback, List<FeedbackImg>> feedbacksearchsList = fdao.searchFeedback(textSearch, pointFilter, serviceFilter,  sortBy, sortOption);
            System.out.println("size" + feedbacksearchsList.size());
            request.setAttribute("feedbackList", feedbacksearchsList);
            request.setAttribute("services", services);
            request.getRequestDispatcher("Feedback.jsp").forward(request, response);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

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
